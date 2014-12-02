CSCI3431: Quizzes
================= 

This repo will track the quizzes given in the Fall 2014 CSCI3431 course.  
The quizzes are processed with pandoc and then typeset with XeLaTeX.  
The [XeLaTeX template](templates/quiz.xelatex.template) is largely based off [Dr. Driver's standard reading quiz.](https://gist.github.com/danieldriver/90a73c4d3c72dd837e39)  


##Quizzes

[Quiz 1: CPU and Git](src/01-CPU-and-git-quiz.yaml)  
This quiz reviews system calls and concepts for dealing with processes, additionally we review the git workflow.  

[Quiz 2: Memory](src/02-Memory-and-scheduling.yaml)  
This quiz reviews the virtualization of memory, dealing particularly with segmentation.  
Quiz 2 was not given out in class.  

[Quiz 3: Concurrency](src/03-Concurrency.yaml)  
This quiz reviews threads, locks, and issues with concurrent systems.

[Quiz 4: Persistence](src/04-Persistence.yaml)  
This quiz reviews IO devices, filesystem concepts, and filesystem integrity.
Quiz 4 was not given out in class.  


##Building Quizzes
The quizzes are built using the Makefile.

```bash
#build .pdf and .tex files for all quizzes
make all

#clean up build files
make clean-tex
```

Generating pdfs of quizzes requires pandoc and XeLaTeX.
