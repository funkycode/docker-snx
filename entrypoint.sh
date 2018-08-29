#!/bin/bash
server=$SNX_SERVER
certpath=$CERT_PATH
certpass=$CERT_PASS

/usr/bin/expect <<EOF
spawn snx -s ${server} -c ${certpath}
expect "*?assword:"
send "${certpass}\r"
expect "*Do you accept*"
send "y\r"
expect "SNX - connected."
interact
EOF

/bin/bash
