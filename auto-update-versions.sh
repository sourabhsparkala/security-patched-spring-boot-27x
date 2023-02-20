# The script has the following dependencies
# 1. xmlstarlet - http://xmlstar.sourceforge.net
# - To install in mac run: brew install xmlstarlet
# 2. hub - https://github.com/github/hub
# - To install in mac run brew install hub
# After installation of hub run below commands
# `git config --global hub.protocol https`
# `git config --global --add hub.host github.wdf.sap.corp`

# Parameters
VERSION_TO_UPDATE=$1

# Constants
SECURITY_SCAN_POM_PATH="security-scan/pom.xml"
STARTER_BOM_PATH="security-patched-starter-bom/pom.xml"
DEPENDENCY_BOM_PATH="security-patched-dependencies-bom/pom.xml"
SPRING_BOOT_ARCHETYPE_FILE_PATH="security-patched-starter-archetype/pom.xml"
JAVA_BOM_PATH="security-patched-bom/pom.xml"
XPATH_POM_VERSION='/_:project/_:version'
XPATH_POM_PARENT_VERSION='/_:project/_:parent/_:version'

# Get existing SecBoM version from root pom
EXISTING_MVN_VERSION=$(mvn -q \
    -Dexec.executable=echo \
    -Dexec.args='${project.version}' \
    --non-recursive \
    exec:exec)

# Gets the inheried version, for Spring boot 2.5.3-sap-21 which is getting updated to 2.5.4-sap-01
# the INHERITED_CURRENT_VERSION is 2.5.3 and INHERITED_NEW_VERSION is 2.5.4
# In case of Java secBoM INHERITED_CURRENT_VERSION is same as EXISTING_MVN_VERSION.
INHERITED_CURRENT_VERSION=$(echo "$EXISTING_MVN_VERSION" | sed 's/-.*//')
INHERITED_NEW_VERSION=$(echo "$VERSION_TO_UPDATE" | sed 's/-.*//')

echo "Running this script with the following params"
echo "Existing maven version: $EXISTING_MVN_VERSION"
echo "Version to update: $VERSION_TO_UPDATE"
echo "Inherited version in BOM: $INHERITED_CURRENT_VERSION"
echo "New inherited version for BOM: $INHERITED_NEW_VERSION"

# Update versions in pom files which are common in all SecBoMs
xmlstarlet edit -P --inplace --update $XPATH_POM_VERSION --value $VERSION_TO_UPDATE pom.xml
xmlstarlet edit -P --inplace --update $XPATH_POM_PARENT_VERSION --value $VERSION_TO_UPDATE $SECURITY_SCAN_POM_PATH

# Update pom version in Java SecBoM
if test -f "$JAVA_BOM_PATH"; then
    xmlstarlet edit -P --inplace --update $XPATH_POM_VERSION --value $VERSION_TO_UPDATE $JAVA_BOM_PATH
    echo "Updated Java SecBoM version"
fi

# Update pom version in dependencies bom, applicable for Spring boot and Spring cloud projects
if test -f "$DEPENDENCY_BOM_PATH"; then
    xmlstarlet edit -P --inplace --update $XPATH_POM_VERSION --value $VERSION_TO_UPDATE $DEPENDENCY_BOM_PATH
    echo "Updated dependencies pom version"
    if [ "$INHERITED_CURRENT_VERSION" != "$INHERITED_NEW_VERSION" ]; then
        xmlstarlet edit -P --inplace --update $XPATH_POM_PARENT_VERSION --value $INHERITED_NEW_VERSION $DEPENDENCY_BOM_PATH
        echo "Updated dependencies pom parent version"
    else
        echo "No need to update dependencies pom parent version"
    fi
fi

# Update pom version in starter bom, applicable for Spring boot project
if test -f "$STARTER_BOM_PATH"; then
    xmlstarlet edit -P --inplace --update $XPATH_POM_VERSION --value $VERSION_TO_UPDATE $STARTER_BOM_PATH
    echo "Updated starter pom version"
    if [ "$INHERITED_CURRENT_VERSION" != "$INHERITED_NEW_VERSION" ]; then
        xmlstarlet edit -P --inplace --update $XPATH_POM_PARENT_VERSION --value $INHERITED_NEW_VERSION $STARTER_BOM_PATH
        echo "Updated starter pom parent version"
    else
        echo "No need to update starter pom parent version"
    fi
fi

# Update provided new pom version in archetype pom if it exist in repo
if test -f "$SPRING_BOOT_ARCHETYPE_FILE_PATH"; then
    xmlstarlet edit -P --inplace --update $XPATH_POM_VERSION --value $VERSION_TO_UPDATE $SPRING_BOOT_ARCHETYPE_FILE_PATH
    echo "Updated archetype pom version"
fi

# Update existing version with the provided in README file, applicable for all secBoMs
sed -i '' -e  "s/$EXISTING_MVN_VERSION/$VERSION_TO_UPDATE/g" README.adoc

# Update Spring Boot version in README
if test -f "$STARTER_BOM_PATH"; then
    OLD_PARENT_TEXT_TO_REPLACE="org.springframework.boot:spring-boot-starter-parent:$INHERITED_CURRENT_VERSION"
    NEW_PARENT_TEXT_TO_REPLACE="org.springframework.boot:spring-boot-starter-parent:$INHERITED_NEW_VERSION"
    sed -i '' -e  "s/$OLD_PARENT_TEXT_TO_REPLACE/$NEW_PARENT_TEXT_TO_REPLACE/g" README.adoc
    OLD_DEPS_TEXT_TO_REPLACE="org.springframework.boot:spring-boot-dependencies:$INHERITED_CURRENT_VERSION"
    NEW_DEPS_TEXT_TO_REPLACE="org.springframework.boot:spring-boot-dependencies:$INHERITED_NEW_VERSION"
    sed -i '' -e  "s/$OLD_DEPS_TEXT_TO_REPLACE/$NEW_DEPS_TEXT_TO_REPLACE/g" README.adoc
    echo "Updated Spring boot versions in README"
fi

REF_TEXT="Prepared for the release"
git checkout -b $VERSION_TO_UPDATE
git add -u
git commit -m "$REF_TEXT"
git push origin $VERSION_TO_UPDATE
hub pull-request -d -m "$REF_TEXT" -b main -h $VERSION_TO_UPDATE -r Phosphor/sec-ops-team
