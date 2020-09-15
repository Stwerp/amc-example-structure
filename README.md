Overview
========
This is an example directory structure for using `automultiplechoice`. Even in looking at this, I realize how complicated it is, but is has been working well for me in several of my courses.

# Workflow #

Generally, I begin by copying an old folder and renaming it. The general format is creating a new `<root>/course/exams/builds/<examname_date>/` folder. This folder needs three files: `main.tex` containing the settings and front page of the exam, `questions.tex` containing the list of questions and how to organize the exam questions, and `automultiplechoice.sty` which is the style file. Because I work on several computers and automultiplechoice is not installed by default, I keep a copy in each folder. It's not at all a good way of working and just installing the style file is a much better option! However, I just need a standard latex install, clone my repository and can work away.

Once an exam is created, I then create new questions as needed (each question in its own file) and modify the `questions.tex` file to use the correct amount/order of questions and the `main.tex` file to have the correct header information.

Once complete, then the magic happens in the GUI. From AMC GUI, I make a new project as an empty file. I then go to that directory on my computer (`~/MC-projects/<course>/<examname_date>/`) and create *symbolic link* to the tex file on my computer that lives in my git repository. I do that by executing the following command

`ln -s ~/repo/textron/course/exam/builds/PresExample_20190614/main.tex source.tex`

This makes `source.tex` point to the `main.tex` file (and the reason I went into painstaking detail defining the `ThisInstanceDir` command in the tex file!).

From here, the GUI will be able to compile as many tests as you want. Once completed, print away. I print everything double-sided. Administer the exam, scan them back in (This is tricky! I've found that scanning in as a PDF at 300x300 dpi minimum with either color or grayscale works best. Disable any PDF compression that your copier has as I have found this causes AMC's graphics tools to have many problems.) AMC tends to like it best if you have one single PDF file that you load in for automatic detection, so I tend to merge all the scanned PDFs together into a single file. Scan, grade, associate with names in your CSV roster, annotate the PDFs and email back to students. My email is set to use my school gmail account and was done using MSMTP and a super helpful guide on the AMC forums.

# Directory Structure #

This is the most important part of this as everything is defined assuming the following:

```
. (root)
|-- BULogo_Black.eps   (logo)
|-- cruft.tex
|-- exam_coverpage.tex
|-- example
|   |-- exam
|   |   |-- builds
|   |   |   `-- PresExample_20190614
|   |   |       |-- automultiplechoice.sty
|   |   |       |-- main.pdf
|   |   |       |-- main.tex
|   |   |       |-- questions.tex
|   |   `-- processExams.tex
|   `-- questions
|       |-- code
|       |   `-- exam2.c
|       |-- figures
|       |   |-- badmark.png
|       |   |-- goodmark.png
|       |   |-- MCUBlockDiagram.png
|       |   `-- PenKeepout.png
|       |-- graphicsAndShortAnswer.tex
|       |-- IncludeCCodeFile.tex
|       |-- labelandreferencequestions.tex
|       |-- MakeSmallerQuestionsCombined.tex
|       |-- randomarray.tex
|       |-- randomMathQuestionSimpler.tex
|       `-- randomMathQuestion.tex
|-- hw_coverpage.tex
|-- packages_macros.tex
`-- README.md
```

This structure allows for easy re-use of questions common to a course. Common items such as packages are available in the root structure, but each course uses its own `processexams.tex` file as I've found it useful to define some custom items on a per-course basis.

# A few tips #

- You need to compile with the `--shell-escape` option as you will be doing things like converting eps->pdf which will be "above" or outside the home directory you are compiling in
- You need to define the `ThisInstanceDir` command to point to the absolute path of the main.tex file.
- There are quite a few options throughout the structure. Most you don't need to mess with, but I'd point you to look at "allowempty." I have this currently set to 2 which allows students to skip and not answer 2 questions without incurring a penalty. (It does affect students if they attempt the question and answer incorrectly.) I also define most of my questions using the `\pts{#}` command to give them a point value and also print out the number of points.

- If you need help, reach out to me at `sjt015@bucknell.edu`
