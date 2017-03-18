function ems {
	emerge -s "$@"
}

for i in $HOME/Shell/pms/emerge/*.sh
do
  . "$i"
done
