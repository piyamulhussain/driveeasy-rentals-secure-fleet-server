# DriveEasy Rentals — Secure Fleet Management Server

## Project Overview
This project documents the setup and baseline security assessment of an Ubuntu virtual machine for DriveEasy Rentals.

## Virtual Machine Setup
- Operating System: Ubuntu Linux 26.04.1 LTS
- Virtualization: Oracle VirtualBox 7.2.22
- VM Name: DriveEasy-Ubuntu-Server
- Host-only IP Address: 192.168.56.103
- Username: piyam-ul-hussain
- Password: Not included for security reasons
- Network: Host-only Adapter + NAT

## Tools Used
- Nmap 7.98
- Ubuntu Terminal
- VirtualBox

## Baseline Scan
Command used:
nmap -oN baseline-scan.txt 127.0.0.1

### Scan Result
- Host: 127.0.0.1
- Host Status: Up
- Open TCP Port: 631
- Service: IPP
- Closed TCP Ports: 999

## Service Version Detection
Command used:
nmap -sV -p 631 -oN service-version-scan.txt 127.0.0.1

### Result
- Port: 631/tcp
- State: Open
- Service: IPP
- Detected software: CUPS 2.4

## Project Files
- README.md — Project overview, setup details, and scan summary.
- baseline-scan.txt — Initial Nmap baseline scan output.
- service-version-scan.txt — Nmap service version detection output for port 631.
- top-3-risks.txt — Initial risk summary.

## Security Note
All testing was performed against my own local virtual machine in an isolated lab environment.

## Next Steps
Review whether the CUPS printing service is required, restrict access if necessary, and apply appropriate server-hardening measures.
