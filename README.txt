README for needs class
last updated 2017-05-05
Renee Boileau

This LaTeX class creates the style elements needed for the Needs Assessment Report document.

______________________________________
Included files:
______________________________________
needs.cls: class file
masterNeeds.tex: master tex file for Needs Assessment Report
genNeedsHeader.tex: input file with generic field contents

______________________________________
Instructions to build a document:
______________________________________
1. Add the class file (needs.cls) to your path or copy to your working directory.
2. Copy the generic master tex file for the policy you want to compile (masterNeedsReport.tex) to your working directory.
3. Copy the generic input file (genNeedsHeader.tex) to your working directory and rename it "header.tex".
4. Edit the generic input file, replacing all generic text (like "<<Status>>" ) with inputs like "Draft" . (Optional: comment lines out to generate default text from class.)
5. Compile the master tex file to generate the document as a pdf.
6. Good practice: clean the folder of auxiliary files (.aux, .log, .out, .synctex.gz)

______________________________________
File maintenance
______________________________________
Changes to the policies can be made in the master files:
1. Change page geometry, custom colours and formatting in the class file.
2. Change Common Content (title block, document information table, assessment tables) in the class file.
3. Change content (except for Common Content) in the master file.

______________________________________
