# pester-intro-1

A minimal guide to using Pester for infrastructure testing (PowerShell).

## Overview
Pester is a testing framework for PowerShell ideal for validating infrastructure code (scripts, DSC, ARM/Bicep deployments, etc.). This repo demonstrates basic Pester usage and patterns for infra tests.

## Prerequisites
- PowerShell 7.x or Windows PowerShell 5.1
- Pester 5.x (`Install-Module -Name Pester -Force`)
- Really wish MS fixed the default 3.x version they deployed with windows conflicting with the latest version, you have to force install it.

## Project/Folder layout
- Root folder `pester-intro-1/` folder.
- Name test files `*.Tests.ps1`

## Example: run tests
Run all tests in the repo:
 Invoke-Pester -Output Detailed -Path .

<img width="680" height="325" alt="image" src="https://github.com/user-attachments/assets/6e5b819f-7c40-418e-b72e-7294044b7896" />
