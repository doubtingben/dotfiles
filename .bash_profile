if [ -f ${HOME}/.bashrc ]; then
        source ${HOME}/.bashrc
fi

if [ -z "$STY" ]; then
exec screen -dR
fi
