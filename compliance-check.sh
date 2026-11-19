
#!/bin/bash

echo "================================"
echo " DriveEasy Security Compliance"
echo "================================"

echo
echo "[1] SSH Port Check"
if sudo sshd -T 2>/dev/null | grep -qx "port 2222"; then
    echo "PASS: SSH port is 2222"
else
    echo "FAIL: SSH port is not 2222"
fi

echo
echo "[2] Root Login Check"
if sudo sshd -T 2>/dev/null | grep -qx "permitrootlogin no"; then
    echo "PASS: Root SSH login disabled"
else
    echo "FAIL: Root SSH login is not disabled"
fi

echo
echo "[3] UFW Firewall Check"
if sudo ufw status | grep -q "Status: active"; then
    echo "PASS: UFW is active"
else
    echo "FAIL: UFW is inactive"
fi

echo
echo "[4] Firewall Rules"
sudo ufw status

echo
echo "[5] CUPS Port Check"
if sudo ss -ltn | grep -qE '(^|[[:space:]])(127\.0\.0\.1|\[::1\]|0\.0\.0\.0|\*):631([[:space:]]|$)'; then
    echo "FAIL: Port 631 is listening"
else
    echo "PASS: Port 631 is not listening"
fi

echo
echo "================================"
echo " Compliance checks completed"
echo "================================"
