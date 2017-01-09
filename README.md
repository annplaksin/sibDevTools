# sibDevTools
Some useful small Sibleius Plug-ins for analyzing scores

This repository contains some fast written Sibelius Plug-ins which helps analyzing a Sibelius score file to have even a slight chance of debugging while Plug-in development.
Every Plug-ins uses Trace() for reporting.

For development or deploying, use [plgToMSS](https://github.com/tido/plgToMSS) tool.

##analyzeBeams
Gives an overview of Beam and GraceNote variables for the NoteRest objects in a selection.

##evalScore
Gives an overview of used special barlines, symbols, lines, and text styles in a *.sib file.

##getTimeSig4Bar
Gives an overview of the used time signatures in a file.

##TimeSelection
Give an overview of objects in a selection:
* Symbol Items
* Text
* NoteRest
* LyricItem
