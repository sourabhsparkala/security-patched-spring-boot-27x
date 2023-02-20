#!/usr/bin/env groovy

@Library(['piper-lib', 'piper-lib-os', 'pipelines']) _

properties([
        parameters([
                booleanParam(name: 'run_on_all_branches',
                        defaultValue: false,
                        description: 'If "not selected" this job is only run on "main" and "PR*" branches. Select it to run on other branches.'),
                booleanParam(name: 'deploy_release',
                        defaultValue: false,
                        description: 'Would you like to deploy to the Nexus Release?'),
                booleanParam(name: 'skip_security_scans',
                        defaultValue: false,
                        description: 'Would you like to skip security scans?'),
                booleanParam(name: 'skip_tests',
                        defaultValue: true,
                        description: 'Would you like to skip the tests (can not be skipped for release build)?'),
                booleanParam(name: 'generate_change_log',
                        defaultValue: false,
                        description: 'Would you like to generate change log?'),
                booleanParam(name: 'send_mail_to_gtlc_team',
                        defaultValue: false,
                        description: 'Set it to true if a mail need to be sent to GTLC team to notify new release.'),
                booleanParam(name: 'skip_black_duck_scan_and_check_findings',
                        defaultValue: true,
                        description: 'Would you like to skip Black Duck scan and just check findings?'),
                string(name: 'exemption_list_branch_name',
                        defaultValue: 'main',
                        description: 'The name of the branch where the exemption lists to be considered in security-patched-boms-special-cases repository.')
        ]),

        pipelineTriggers([
                parameterizedCron(env.BRANCH_NAME == 'main' ? '''
                # leave spaces where you want them around the parameters. They'll be trimmed.
                #M HH DD MM WD  %  Variables
                H  */3 * * 1-5 %skip_security_scans=false;skip_tests=true
                # To run full security scan
                H  5 * * 1-5 %skip_security_scans=false;skip_tests=true;skip_black_duck_scan_and_check_findings=false
                ''' : '')
        ]),
])

p = new com.sap.sgs.phosphor.spring.patched.pipeline()
p.setChangelogRegex(/2\.7\.\d\d*\-sap-\d\d\d*/)
p.setRunOnAllBranches(params.run_on_all_branches)
p.setSendNotification(true)
p.setOurArtifactIds(["security-patched-spring-boot-starter", "security-patched-spring-boot-dependencies"])
p.setNotifyGtlcTeamIgnoringBuildNumber(params.send_mail_to_gtlc_team)
p.setSkipBlackDuckScanAndCheckFindings(params.skip_black_duck_scan_and_check_findings)
p.setDeployRelease(params.deploy_release)
p.setSkipSecurityScans(params.skip_security_scans)
p.setSkipTests(params.skip_tests)
p.setGenerateChangeLog(params.generate_change_log)
p.setUseExemptionsFromBranch(params.exemption_list_branch_name)
p.go()
