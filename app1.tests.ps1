# Pester test file for ping testing servers
Context "App1 Tests" {

    Describe 'Google DNS - 8.8.8.8' {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '8.8.8.8' -Count 2 -Quiet | Should -BeTrue
        }
    }

    Describe 'Cloudflare DNS - 1.1.1.1' {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '1.1.1.1' -Count 2 -Quiet | Should -BeTrue
        }
    }

    Describe 'Quad9 DNS - 9.9.9.9' {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '9.9.9.9' -Count 2 -Quiet | Should -BeTrue
        }
    }

    Describe 'Google DNS secondary - 8.8.4.4' {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '8.8.4.4' -Count 2 -Quiet | Should -BeTrue
        }
    }

}