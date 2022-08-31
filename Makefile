build:
	jb build .

to_ipy:
	jupytext --to notebook --execute sites/programming-one.md
	jupytext --to notebook --execute sites/programming-two.md
