rm -r pythontex-files-* 2>NUL
rm  GuineaPigRule.pytxcode  GuineaPigRule.pdf 2>NUL

@REM @docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  GuineaPigRule.tex
@REM @docker run -w /root -v %cd%:/root/ texlive/texlive pythontex GuineaPigRule.tex
@docker run -w /root -v %cd%:/root/ texlive/texlive xelatex  GuineaPigRule.tex

@REM rm GuineaPigRule.aux GuineaPigRule.log GuineaPigRule.pytxcode texput.log 2>NUL
@REM rm -r pythontex-files-* 2>NUL

@start GuineaPigRule.pdf