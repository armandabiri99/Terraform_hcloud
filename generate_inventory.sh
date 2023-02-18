#!/bin/bash

cat > inventory.ini <<EOF
[all]
${SERVER_IP} ansible_user=root
EOF

cp inventory.ini ../../Ansible/X-UI-Ansible/
