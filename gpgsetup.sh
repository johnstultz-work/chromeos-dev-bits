
GPG_ENV="$HOME/.ssh/gpgenv"

function start_agent {
	gpg-agent --daemon --enable-ssh-support > "$GPG_ENV"
	chmod 600 "$GPG_ENV"
	. "$GPG_ENV" > /dev/null
}


ps -ef | grep gpg-agent | grep -v grep  > /dev/null
if [ $? -ne 0 ]; then
	start_agent
else 
	if [ -f "$GPG_ENV" ]; then
		. "$GPG_ENV" > /dev/null
	else
		start_agent
	fi
fi

