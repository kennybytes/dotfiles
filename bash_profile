#!/bin/bash
# This file holds some scripts for bash_profile -- do not overwrite the current stuff!


# Assign an ssh agent, and check if one is running.
# If one is already running, use that for the new window.

if [[ -e $HOME/.sshagent.conf ]]; then
. $HOME/.sshagent.conf
fi
if `ps -p ${SSH_AGENT_PID}>/dev/null`;then true;
else
ssh-agent >| $HOME/.sshagent.conf
. $HOME/.sshagent.conf
ssh-add ~/.ssh/id_rsa
fi

# Here is a script to startup a SSH agent when starting a terminal
SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS`
    trap "kill $SSH_AGENT_PID" 0
fi
