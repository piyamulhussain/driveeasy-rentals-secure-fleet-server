# DriveEasy Rentals — Secure Fleet Management Server

## Project Overview
This project documents the setup and baseline security assessment of an Ubuntu virtual machine for DriveEasy Rentals.

## Virtual Machine Setup
- Operating System: Ubuntu Linux 26.04
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
`nmap -oN baseline-scan.txt 127.0.0.1`

### Scan Result
- Host: 127.0.0.1
- Host Status: Up
- Open TCP Port: 631
- Service: IPP
- Closed TCP Ports: 999

## Project Files
- `baseline-scan.txt` — Nmap baseline scan output.
- `top-3-risks.txt` — Initial risk summary.

## Security Note
All testing was performed against my own local virtual machine in an isolated lab environment.

## Next Steps
Review unnecessary services, identify service versions, and apply appropriate server-hardening measures.
