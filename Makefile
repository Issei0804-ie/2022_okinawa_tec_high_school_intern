build: to_ipy
	jb build .

to_ipy:
	jupytext --to notebook --execute sites/programming-one.md
