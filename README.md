# Top 3 Risks Identified - DriveEasy Rentals

Scan Date: November 16, 2026
Scan Time: 20:57:54 PKT
Target: 127.0.0.1
Tool: Nmap 7.98

## 1. CUPS Printing Service - Port 631

Risk: The CUPS printing service is running even though printing is not required for a fleet management server. If accessible to an attacker, it may expose printer and service information, allow unauthorized print-job operations depending on permissions, or expose sensitive information in queued documents. It may also be misused to consume system resources.

Recommendation: Disable the printing service if it is not required. Otherwise, restrict access to trusted systems and keep CUPS updated.

## 2. SSH Service - Port 22

Risk: SSH provides remote login access. If access is not properly restricted, unauthorized login attempts may be a concern.

Recommendation: Use strong authentication, restrict access to trusted systems, and keep SSH updated.

## 3. MySQL Service - Port 3306

Risk: The MySQL database service may expose sensitive database information if unauthorized users gain access.

Recommendation: Keep MySQL bound to localhost unless remote access is required, and use strong database credentials.

## Additional Finding

Port 80/tcp - Apache HTTP web service was also detected as open. Unencrypted HTTP traffic may expose information if used outside the local lab.

## Note

These are potential risks based on services identified during the Nmap baseline scan. No vulnerability or unauthorized access was confirmed by this scan.
