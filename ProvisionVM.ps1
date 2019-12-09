. ./AutomationHelpers.ps1

function ProvisionVM() {
    CopyPSModules
    InstallBoshAgent
    InstallOpenSSH
    Extract-LGPO
    Install-SecurityPoliciesAndRegistries
    Enable-SSHD
    InstallCFFeatures
    Enable-HyperV
    Install-WUCerts
    Restart-Computer
}