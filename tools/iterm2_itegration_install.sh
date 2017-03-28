#!/bin/bash
curl -L https://iterm2.com/misc/`basename $SHELL`_startup.in >> \
	~/myConfig/src/iterm2_intergration/iterm2_shell_integration.`basename $SHELL`

echo ehco "down iterm2_shell_integration.`basename $SHELL`"

curl -L https://iterm2.com/misc/zsh_startup.in >> \
	~/myConfig/src/iterm2_intergration/iterm2_shell_integration.zsh
echo "down ~/myConfig/src/iterm2_intergration/iterm2_shell_integration.zsh"

curl -L https://iterm2.com/misc/bash_startup.in >> \
	~/myConfig/src/iterm2_intergration/iterm2_shell_integration.bash
echo ehco "down ~/myConfig/src/iterm2_intergration/iterm2_shell_integration.bash"
