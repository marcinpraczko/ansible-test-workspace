#!/bin/bash

echo ""
echo "[Test]      : Role: marcinpraczko.goss-install"
echo ""
echo "==== IMPORTANT ===="
echo "[FIXME-001] : Default variables are not taking \$HOME - so bin is created in current directory"
echo "              Fixed in this test with hardcoded variable in playbook"
echo "==================="

ansible-playbook -i test-install-hosts.txt test-install.yaml
