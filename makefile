MC=pandoc
CFLAGS=-t beamer -i --toc 

slides: seprLecture.md
	$(MC) $(CFLAGS) seprLecture.md -o seprLecture.pdf 

links: SVN-Links.md
	$(MC) SVN-Links.md -o SVN-Links.pdf
	$(MC) Git-Links.md -o Git-Links.pdf
