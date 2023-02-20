# Security scan project for sBOM

## Scan tools used
  - [BlackDuck](https://sap.blackducksoftware.com/api/projects/2347a877-826d-4a4d-b3ef-30000f78b412)
  - [Whitesource](https://saas.whitesourcesoftware.com/Wss/WSS.html#!product;id=253976)

## How it works in Jenkins
Creates effective pom (based on `pom.xml`) by using `mvn help:effective-pom` and removes `dependencyManagement` tag to make all the the dependencies inside `dependencyManagement` to be considered for security scans.

## To run locally
Prerequisites are installed `xmlstartlet` and `sed`.

  - Linux: `apt-get install xmlstarlet`
  - Mac: Install via package manager e.g. [Homebrew](https://brew.sh/): `brew install xmlstartlet`
  - Windows: To install them consider installing [choco](https://chocolatey.org/docs/installation). After installation of choco run:
    ```
    choco install xmlstarlet
    choco install sed
    ```

Then run the [script](https://github.wdf.sap.corp/Phosphor/pipelines/blob/master/script/generateEffectivePOM.sh): `sh generateEffectivePOM.sh`.

Note: For linux "xml" command need to be replaced with "xmlstarlet" in the above script.
