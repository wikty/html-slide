rem HTML slide
call pandoc -t revealjs -V theme=moon --mathjax -s slide.md -o slide.html
rem PDF 
call pandoc -t beamer slide.md -o slide.pdf
rem windows PPT
call pandoc slide.md -o slide.pptx