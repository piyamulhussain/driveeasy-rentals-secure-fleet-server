# DriveEasy Rentals — Secure Fleet Management Server

## Project Overview
This project documents the setup and baseline security assessment of an Ubuntu virtual machine for DriveEasy Rentals.

## Virtual Machine Setup
- Operating System: Ubuntu 26.04.1 LTS
- Release: 26.04
- Codename: resolute
- Scan Date: November 16, 2026
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

## Services Configured
- SSH Server
- Apache2 Web Server
- MySQL Community Server

## Baseline Scan
Command used:
`nmap -oN baseline-scan.txt 127.0.0.1`

### Scan Result
- Target: 127.0.0.1
- Host Status: Up
- Open TCP Ports: 22, 80, 631, 3306

| Port | Service | Description |
|---|---|---|
| 22/tcp | SSH | Remote login service |
| 80/tcp | HTTP | Apache web service |
| 631/tcp | IPP | Printing service |
| 3306/tcp | MySQL | Database service |

- Closed TCP Ports: 996
- Scan Date and Time: November 16, 2026, 20:23:42 PKT

## Project Files
- `baseline-scan.txt` — Nmap baseline scan output.
- `top-3-risks.txt` — Summary of three potential service-related risks.
- `service-version-scan.txt` — Service version scan output.

## Security Note
This baseline scan identifies open services and potential exposure risks. It does not confirm vulnerabilities. Services should be restricted, configured securely, and regularly updated.
