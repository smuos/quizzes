CSCI3431: Quizzes
================= 

This repo will track the quizzes given in the Fall 2014 CSCI3431 course.  
The quizzes are processed with pandoc and then typeset with XeLaTeX.  
The [XeLaTeX template](templates/quiz.xelatex.template) is largely based off [Dr. Driver's standard reading quiz.](https://gist.github.com/danieldriver/90a73c4d3c72dd837e39)  


##Quizzes

[Quiz 1: CPU and Git](src/01-CPU-and-git-quiz.yaml)  
This quiz reviews system calls and concepts for dealing with processes, additionally we review the git workflow.  


##Building Quizzes
The quizzes are built by passing the quiz yaml file to `build-quiz.sh` in `bin`

Quizzes depend on pandoc and xelatex.
