#!/bin/sh

set -e

# SSH config
touch $HOME/.ssh/config
cat <<EOF >> $HOME/.ssh/config
Host *
  IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
EOF