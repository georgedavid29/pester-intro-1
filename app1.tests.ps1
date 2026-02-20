# Pester test file for ping testing servers
Context "App1 Tests" {

    Describe 'Google DNS - 8.8.8.8' -Tag "Production" {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '8.8.8.8' -Count 2 -Quiet | Should -BeTrue
        }
    }

    Describe 'Google DNS - 8.8.4.4' -Tag "Disaster Recovery" {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '8.8.4.4' -Count 2 -Quiet | Should -BeTrue
        }
    }
    Describe 'Cloudflare DNS - 1.1.1.1' -Tag "Production" {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '1.1.1.1' -Count 2 -Quiet | Should -BeTrue
        }
    }

    Describe 'Cloudflare DNS - 1.0.0.1' -Tag "Disaster Recovery"{
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '1.0.0.1' -Count 2 -Quiet | Should -BeTrue
        }
    }
    Describe 'Quad9 DNS - 9.9.9.9' {
        It 'responds to ICMP (ping)' {
            Test-Connection -ComputerName '9.9.9.9' -Count 2 -Quiet | Should -BeTrue
        }
    }


    Describe "www.google.com" -Tag @("Production", "Disaster Recovery"){

        BeforeAll {
            $response = Invoke-WebRequest -Uri "https://www.google.com" -UseBasicParsing -TimeoutSec 15
        }

        It "Should return HTTP 200" {
            $response.StatusCode | Should -Be 200
        }

        It "Should return non-empty content" {
            $response.Content | Should -Not -BeNullOrEmpty
        }

    }


}