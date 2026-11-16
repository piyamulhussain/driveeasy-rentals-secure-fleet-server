# DriveEasy Rentals — Secure Fleet Management Server

## Project Overview
This project documents the setup and baseline security assessment of an Ubuntu virtual machine for DriveEasy Rentals.

## Virtual Machine Setup
- Operating System: Ubuntu 26.04.1 LTS
- Release: 26.04
- Codename: resolute
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

`nmap -sV -oN baseline-scan.txt 127.0.0.1`

### Scan Results
- Target: 127.0.0.1
- Host Status: Up
- Open TCP Ports: 22, 80, 631, 3306
- Closed TCP Ports: 996
- Scan Date: November 16, 2026
- Scan Time: 20:57:54 PKT

| Port | Service | Detected Version |
|---|---|---|
| 22/tcp | SSH | OpenSSH 10.2p1 Ubuntu 2ubuntu3.8 |
| 80/tcp | HTTP | Apache httpd 2.4.66 |
| 631/tcp | IPP | CUPS 2.4 |
| 3306/tcp | MySQL | MySQL 8.4.13-0ubuntu0.26.04.2 |

## Project Files
- `README.md` — VM setup and scan documentation.
- `baseline-scan.txt` — Nmap baseline scan output.
- `top-3-risks.txt` — Summary of three potential risks.
- `service-version-scan.txt` — Service version scan output.

## Security Note
This assessment was performed in a local virtual lab environment. Services should be securely configured, access should be restricted, and software should be kept updated.
