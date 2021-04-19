default: gitpages

sync:
	rsync -av ../hugo_academic/content/post/2020-09-11_seminaire-thomas-serre content/event
	rsync -av ../hugo_academic/content/authors/laurent-u-perrinet content/authors
	rsync -av ../hugo_academic/content/authors/alberto-vergani content/authors
	rsync -av ../hugo_academic/content/authors/frederic-y-chavane content/authors
	rsync -av ../hugo_academic/content/authors/anna-montagnini content/authors
	rsync -av ../hugo_academic/content/authors/emmanuel-dauce content/authors

gitpages:
	git pull
	echo ">>> Commit changes to source repo to GitHub..."
	msg="rebuilding site `date`"
	git commit -m "$msg"
	git push
