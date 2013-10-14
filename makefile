MC=pandoc
CFLAGS=-t beamer -i --toc 

seprLecture.pdf: seprLecture.md
	$(MC) $(CFLAGS) seprLecture.md -o seprLecture.pdf 
