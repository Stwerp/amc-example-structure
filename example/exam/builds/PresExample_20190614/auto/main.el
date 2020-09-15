(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "letterpaper" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("automultiplechoice" "box")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "gentium"
    "listings"
    "automultiplechoice")
   (TeX-add-symbols
    '("inputQ" 1)
    "ThisInstanceDir"
    "BuildBaseDir"
    "ExamBaseDir"
    "ClassBaseDir"
    "QuestionBaseDir"
    "CommonRootDir"
    "examtitle"
    "courseterm"
    "courseid"
    "coursetitle"
    "instructor"
    "examstarttime"
    "examendtime"
    "examdate"
    "examduration"
    "additionalinstructions"
    "goodmarkexample"
    "badmarkexample"
    "adminmarkexample"
    "customAuthorizedAid"
    "EmptyInstructions"))
 :latex)

