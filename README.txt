README for policy class
last updated 2017-05-03
Renee Boileau

This LaTeX class creates the style elements needed for the Acceptable Use Policy and Information Security Policy documents.

______________________________________
Included files:
______________________________________
policy.cls: class file
genUsePolicy.tex: master tex file for Acceptable Use Policy
genSecPolicy.tex: master tex file for Information Security Policy
genPolicyHeader.tex: input file with generic field contents

______________________________________
Instructions to build a document:
______________________________________
1. Add the class file (policy.cls) to your path or copy to your working directory.
2. Copy the generic master tex file for the policy you want to compile (genUsePolicy.tex or genSecPolicy.tex) to your working directory.
3. Copy the generic input file (genPolicyHeader.tex) to your working directory and rename it "header.tex" .
4. Edit the generic input file, replacing all generic text (like "<<Status>>" ) with inputs like "Draft" . (Optional: comment lines out to generate default text from class.)
5. Compile the master tex file to generate the document as a pdf.
6. Good practice: clean the folder of auxiliary files (.aux, .log, .out, .synctex.gz)

______________________________________
File maintenance
______________________________________
Changes to the policies can be made in the master files:
1. Change page geometry, custom colours and formatting in the class file.
2. Change Common Content (title block, document information table, signature block) in the class file.
3. Change content (except for Common Content) in the master file.

______________________________________
