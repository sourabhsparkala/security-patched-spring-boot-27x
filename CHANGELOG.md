# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.7.7-sap-02] - 2022-12-29
### Security
  - Updated `com.thoughtworks.xstream:xstream` from `1.4.19` to `1.4.20`
    to fix [CVE-2022-41966 (BDSA-2022-3693](https://nvd.nist.gov/vuln/detail/CVE-2022-41966).

## [2.7.7-sap-01] - 2022-12-23
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.7`
  and `org.springframework.boot:spring-boot-dependencies:2.7.7`.

## [2.7.6-sap-06] - 2022-12-16
### Security
- Updated `org.apache.cxf:cxf-rt-rs-client` from `3.4.5` to `3.5.5`
  to fix [CVE-2022-46363 (BDSA-2022-3589)](https://nvd.nist.gov/vuln/detail/CVE-2022-46363) and [CVE-2022-46364 (BDSA-2022-3590)](https://nvd.nist.gov/vuln/detail/CVE-2022-46364).
- Updated `org.testng:testng` from `7.5` to `7.7.0`
  to fix [CVE-2022-4065](https://nvd.nist.gov/vuln/detail/CVE-2022-4065).
### Update
- Updated `com.google.cloud:google-cloud-datastore` from `2.2.10` to `2.9.1`
  to align the version with what Spring Boot brings in.

## [2.7.6-sap-05] - 2022-12-13
### Security
- Updated Netty components from `4.1.85.Final` to `4.1.86.Final`
  to fix [CVE-2022-41881 (BDSA-2022-3559)](https://nvd.nist.gov/vuln/detail/CVE-2022-41881) and [CVE-2022-41915 (BDSA-2022-3560)](https://nvd.nist.gov/vuln/detail/CVE-2022-41915).

## [2.7.6-sap-04] - 2022-12-07
### Inclusion
- Added `com.sap.cp.auditlog:audit-java-client-api:2.4.3`.

## [2.7.6-sap-03] - 2022-12-06
### Security
- Updated `org.jboss.xnio:xnio-nio` from `3.8.7.Final` to `3.8.8.Final`
  to fix [CVE-2022-0084](https://nvd.nist.gov/vuln/detail/CVE-2022-0084).
### Update
- Updated `com.sap.cloud.security:java-bom` from `2.13.0` to `2.13.4`.
- Updated `com.sap.cp.auditlog` libraries from `2.3.9` to `2.4.3`.
- Updated `com.sap.hcp.cf.logging` libraries from `3.5.6` to `3.6.3`.
- Updated `io.pivotal.cfenv:java-cfenv-boot` from `2.4.0` to `2.4.1`.
- Modified `com.google.guava:guava` to `com.google.guava:guava-bom` to cover other guava libraries. 

## [2.7.6-sap-02] - 2022-12-05
### Security
- Updated `commons-net:commons-net` from `3.6` to `3.9.0`
  to fix [CVE-2021-37533](https://nvd.nist.gov/vuln/detail/CVE-2021-37533).

## [2.7.6-sap-01] - 2022-11-25
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.6`
  and `org.springframework.boot:spring-boot-dependencies:2.7.6`.

### Security
- Updated `org.postgresql:postgresql` from `42.4.1` to `42.4.3`
  to fix [CVE-2022-41946](https://nvd.nist.gov/vuln/detail/CVE-2022-41946).

## [2.7.5-sap-05] - 2022-11-18
### Security
- Updated `org.codehaus.jettison:jettison` from `1.5.1` to `1.5.2`
  to fix [CVE-2022-40150](https://nvd.nist.gov/vuln/detail/CVE-2022-40150).

## [2.7.5-sap-04] - 2022-11-03
### Security
- Updated Spring security Bom from `5.7.4` to `5.7.5` to fix [BDSA-2022-3106](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-3106/overview) and [BDSA-2022-3109](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-3109/overview).
- Updated `org.hsqldb:hsqldb` from `2.5.2` to `2.7.1` to fix [CVE-2022-41853](https://nvd.nist.gov/vuln/detail/CVE-2022-41853).

## [2.7.5-sap-03] - 2022-10-27
### Security
- Updated Apache Tika libraries from `1.28.4` to `1.28.5`
  to fix [CVE-2022-23596 (BDSA-2022-3061)](https://nvd.nist.gov/vuln/detail/CVE-2022-23596).

## [2.7.5-sap-02] - 2022-10-25
### Security
- Updated `com.fasterxml.woodstox:woodstox-core` from `5.3.0` to `5.4.0`
  to fix [CVE-2022-40151](https://nvd.nist.gov/vuln/detail/CVE-2022-40151), [CVE-2022-40152](https://nvd.nist.gov/vuln/detail/CVE-2022-401512), [CVE-2022-40153](https://nvd.nist.gov/vuln/detail/CVE-2022-40153), [CVE-2022-40154](https://nvd.nist.gov/vuln/detail/CVE-2022-40154), [CVE-2022-40155](https://nvd.nist.gov/vuln/detail/CVE-2022-40155) and [CVE-2022-40156](https://nvd.nist.gov/vuln/detail/CVE-2022-40156).
- Updated Apache Geode libraries from `1.15.0` to `1.15.1`
  to fix [CVE-2022-34870](https://nvd.nist.gov/vuln/detail/CVE-2022-34870).

## [2.7.5-sap-01] - 2022-10-24
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.5`
  and `org.springframework.boot:spring-boot-dependencies:2.7.5`.

## [2.7.4-sap-05] - 2022-10-14
### Security
- Updated `com.fasterxml.jackson.core:jackson-bom` from `2.13.4.20221012` to `2.13.4.20221013` which brings in `com.fasterxml.jackson.core:jackson-databind` `2.13.4.2` to fix this [issue](https://github.com/FasterXML/jackson-databind/issues/3627).

## [2.7.4-sap-04] - 2022-10-13
### Security
- Updated `com.fasterxml.jackson.core:jackson-bom` from `2.13.4` to `2.13.4.20221012`
  to fix [CVE-2022-42003 (BDSA-2022-2768)](https://nvd.nist.gov/vuln/detail/CVE-2022-42003).
- Updated Apache Shiro components from `1.9.1` to `1.10.0`
  to fix [CVE-2022-40664 (BDSA-2022-2885)](https://nvd.nist.gov/vuln/detail/CVE-2022-32532)

## [2.7.4-sap-03] - 2022-10-05
### Security
- Updated `org.codehaus.jettison:jettison` from `1.3.7` to `1.5.1`
  to fix [CVE-2022-40149](https://nvd.nist.gov/vuln/detail/CVE-2022-40149) and [CVE-2022-40150](https://nvd.nist.gov/vuln/detail/CVE-2022-40150).

## [2.7.4-sap-02] - 2022-09-28
### Security
- Updated `org.scala-lang:scala-library` and `org.scala-lang:scala-reflect` to `2.13.9`
  to fix [CVE-2022-36944](https://nvd.nist.gov/vuln/detail/CVE-2022-36944).

## [2.7.4-sap-01] - 2022-09-23
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.4`
  and `org.springframework.boot:spring-boot-dependencies:2.7.4`.

## [2.7.3-sap-07] - 2022-09-20
### Security
- Updated `org.jboss.xnio:xnio-api` from `3.8.7.Final` to `3.8.8.Final`
  to fix [CVE-2022-0084](https://nvd.nist.gov/vuln/detail/CVE-2022-0084).

## [2.7.3-sap-06] - 2022-09-15
### Security
- Updated `org.yaml:snakeyaml` from `1.31` to `1.32`
  to fix [CVE-2022-38752](https://nvd.nist.gov/vuln/detail/CVE-2022-38752).

## [2.7.3-sap-05] - 2022-09-01
### Security
- Updated Apache Geode libraries from `1.14.4` to `1.15.0`
  to fix [CVE-2022-37023 (BDSA-2022-2411)](https://nvd.nist.gov/vuln/detail/CVE-2022-37023), [CVE-2022-37021 (BDSA-2022-2396)](https://nvd.nist.gov/vuln/detail/CVE-2022-37021).

## [2.7.3-sap-04] - 2022-08-30
### Security
- Updated  `org.yaml:snakeyaml` from `1.30` to `1.31`
  to fix [CVE-2022-25857](https://nvd.nist.gov/vuln/detail/CVE-2022-25857).

## [2.7.3-sap-03] - 2022-08-30
### Security
- Updated  `org.jsoup:jsoup` from `1.14.2` to `1.15.3`
  to fix [CVE-2022-36033](https://nvd.nist.gov/vuln/detail/CVE-2022-36033).

## [2.7.3-sap-02] - 2022-08-19
### Security
- Updated Apache ActiveMQ Artemis libraries from `2.19.1` to `2.24.0`
  to fix [BDSA-2022-2310](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-2310/overview).

## [2.7.3-sap-01] - 2022-08-18
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.3`
  and `org.springframework.boot:spring-boot-dependencies:2.7.3`.
### Security
- Updated `com.esotericsoftware:kryo` from `4.0.2` to `5.0.4`
  to fix [BDSA-2016-1151](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2016-1151/overview).

## [2.7.2-sap-08] - 2022-08-12
### Security
- Updated `org.apache.avro:avro` from `1.11.0` to `1.11.1`
  to fix [BDSA-2022-2206](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-2206/overview), [BDSA-2022-2207](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-2206/overview) and [BDSA-2022-2208](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-2206/overview).

## [2.7.2-sap-07] - 2022-08-11
### Security
- Updated Undertow libraries from `2.2.18.Final` to `2.2.19.Final`
  to fix [CVE-2022-2053](https://nvd.nist.gov/vuln/detail/CVE-2022-2053).

## [2.7.2-sap-06] - 2022-08-09
### Security
- Updated `org.apache.calcite.avatica:avatica-core` from `1.17.0` to `1.22.0`
  to fix [CVE-2022-36364](https://nvd.nist.gov/vuln/detail/CVE-2022-36364).

## [2.7.2-sap-05] - 2022-08-08
### Security
- Updated Apache Hadoop components from `3.2.3` to `3.2.4`
  to fix [CVE-2022-25168](https://nvd.nist.gov/vuln/detail/CVE-2022-25168).

## [2.7.2-sap-04] - 2022-08-04
### Security
- Updated `org.postgresql:postgresql` from `42.3.3` to `42.4.1`
  to fix [CVE-2022-31197](https://nvd.nist.gov/vuln/detail/CVE-2022-31197).

## [2.7.2-sap-03] - 2022-08-01
### Security
- Updated `org.apache.logging.log4j:log4j-bom` from `2.17.2` to `2.18.0`
  to fix [CVE-2019-10202](https://nvd.nist.gov/vuln/detail/CVE-2019-10202) and [CVE-2019-10172](https://nvd.nist.gov/vuln/detail/CVE-2019-10172).
### Exclusion
- Excluded `org.apache.velocity:velocity` from `org.springframework.security:spring-security-saml2-service-provider:5.7.2` as this is not required
  from Spring Security `>=5.4` and also to avoid the vulnerability [CVE-2020-13936](https://nvd.nist.gov/vuln/detail/CVE-2020-13936).

## [2.7.2-sap-02] - 2022-07-27
### Update
- Updated `com.sap.cloud.security:java-bom` from `2.12.2` to `2.13.0`.

## [2.7.2-sap-01] - 2022-07-21
### Update
- Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.2`
  and `org.springframework.boot:spring-boot-dependencies:2.7.2`.
### Security
- Replaced `io.springfox:springfox-swagger2:3.0.0`, `io.springfox:springfox-swagger-ui:3.0.0`, `io.springfox:springfox-bean-validators:3.0.0` and `io.springfox:springfox-data-rest:3.0.0` dependencies
  with `org.springdoc:springdoc-openapi-ui:1.6.9` and `org.springdoc:springdoc-openapi-data-rest:1.6.9` dependencies
  to fix [WS-2020-0407](https://www.whitesourcesoftware.com/vulnerability-database/WS-2020-0407).

## [2.7.1-sap-07] - 2022-07-21
### Security
- Updated Apache tomcat components from `9.0.64` to `9.0.65`
  to fix [BDSA-2022-1742](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-1742/overview).

## [2.7.1-sap-06] - 2022-07-19
### Security
- Updated `com.amazonaws:aws-java-sdk-cloudwatch` from `1.12.240` to `1.12.261`
  to fix [CVE-2022-31159](https://nvd.nist.gov/vuln/detail/CVE-2022-31159).

## [2.7.1-sap-05] - 2022-07-13
### Security
- Updated `org.apache.pdfbox:pdfbox` from `2.0.24` to `2.0.26`
  to fix [BDSA-2022-1920](https://sap.blackducksoftware.com/api/vulnerabilities/BDSA-2022-1920)

## [2.7.1-sap-04] - 2022-07-11
### Security
- Updated Apache Common Configuration2 components from `2.1.1` to `2.8.0`
  to fix [CVE-2022-33980](https://nvd.nist.gov/vuln/detail/CVE-2022-33980)

## [2.7.1-sap-03] - 2022-06-30
### Security
- Updated Apache Shiro components from `1.8.0` to `1.9.1`
  to fix [CVE-2022-32532/BDSA-2022-1777](https://nvd.nist.gov/vuln/detail/CVE-2022-32532)

## [2.7.1-sap-02] - 2022-06-29
### Security
- Updated Apache tika components from `1.28.3` to `1.28.4`
  to fix [CVE-2022-30126/BDSA-2022-1353](https://nvd.nist.gov/vuln/detail/CVE-2022-30126),
  [CVE-2022-33879/BDSA-2022-1772](https://nvd.nist.gov/vuln/detail/CVE-2022-33879) and
  [CVE-2022-30973/BDSA-2022-1517](https://nvd.nist.gov/vuln/detail/CVE-2022-30973).

## [2.7.1-sap-01] - 2022-06-24
  - Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.1`
  and `org.springframework.boot:spring-boot-dependencies:2.7.1`.
  - Updated `com.sap.cp.auditlog` components from `2.3.0` to `2.3.9`
  - Updated `com.sap.cloud.security:java-bom` from `2.11.11` to `2.12.2`

## [2.7.0-sap-02] - 2022-06-02
### Security
  - Updated Apache tika components from `1.28.2` to `1.28.3`
  to fix [CVE-2022-30126/BDSA-2022-1353](https://nvd.nist.gov/vuln/detail/CVE-2022-30126) and
  [CVE-2022-30973/BDSA-2022-1517](https://nvd.nist.gov/vuln/detail/CVE-2022-30973).

## [2.7.0-sap-01] - 2022-05-19
  - Updated to `org.springframework.boot:spring-boot-starter-parent:2.7.0`
    and `org.springframework.boot:spring-boot-dependencies:2.7.0`.


