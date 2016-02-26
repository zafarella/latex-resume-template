#!/usr/bin/env bash
#
# Copyright (C) Zafar Khaydarov
#
#  What it does:
#  -- builds pdf output and stores version of the output in the ARC directory
#  -- clean-up of tmp files
#  -- makes copy of the output pdf file in ARC dir.
#  -- commits current version into git
#
#  How to use:
#   Just launch the file in bash
#

hash pdflatex 2>/dev/null || { echo >&2 "No pdflatex has been found.  Aborting. If you use brew install using: 'brew cask install mactex'"; exit 1; }

cur_day=$(date +_%b_%Y)
todays_date=$(date +%F)
resume_file='resume-template.tex'
pdf_out='resume-template.pdf'
mylocation='NYC'
existing_file="FirstName_LastName_SDE_Resume_$mylocation"_$cur_day".pdf"

if [ -f "${existing_file}" ]
then
    echo "${existing_file} "
    if [ ! -d "ARC" ]
    then
        mkdir ARC/tex
    fi

    mv ${existing_file} ARC/

    if ls *pdf 1> /dev/null 2>&1;  then
        mv *pdf ARC/
    fi
fi

echo "Compiling.."

pdflatex "${resume_file}" >> /dev/null;
pdflatex "${resume_file}" >> /dev/null;
pdflatex "${resume_file}" >> /dev/null;

clear

echo "---------------------------------------"
echo "Compiled with exit code -> " $?
echo "Final output" ${existing_file}

# rename
mv -f "${pdf_out}" ${existing_file}

echo -e "Cleaning up..";
rm -rf *aux *bbl *log *out *blg
echo "Done";

open ${existing_file}
# including in VCS
# echo -e "Please version the revision -- Enter commit message for revision \n\n"
# read -n1 -r -p "Press any key to continue..." key

# git commit
