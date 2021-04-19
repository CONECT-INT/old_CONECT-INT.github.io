default: gitpages

sync:
	sh update_wowchemy.sh

gitpages:
	echo ">>> Commit changes to source repo to GitHub..."
	msg="rebuilding site `date`"
	if [ $# -eq 1 ]
	  then msg="$1"
	fi
	git commit -m "$msg"

	git push origin master
