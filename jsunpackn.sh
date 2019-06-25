#!/bin/bash
#git clone results output-files
SAMPLESPATH=$(pwd)
cd /jsunpack-n

#if [[ "$(ls $SAMPLESPATH/pdf-source/pdf |wc -l)" == 0 ]]; then  
if [[ "$(ls $SAMPLESPATH/pdf |wc -l)" == 0 ]]; then  
	echo "Folder is empty"
else
	#for file in $SAMPLESPATH/pdf-source/pdf/*
	for file in $SAMPLESPATH/pdf/*
	  do
	  echo "Processing $file ..."
	  xbase=${file##*/};xfext=${xbase##*.};xpref=${xbase%.*}
	  echo ${xpref}.${xfext}
	  #/usr/bin/python jsunpackn.py $file -d $SAMPLESPATH/output-files/shellcode/${xpref}.${xfext}/
	  /usr/bin/python jsunpackn.py $file -d $SAMPLESPATH/results/shellcode/${xpref}.${xfext}/
	  echo "output folder: $SAMPLESPATH/output-files/shellcode/${xpref}.${xfext}/"
	done

	#cd $SAMPLESPATH/output-files
  cd $SAMPLESPATH
	git add .
	#git config --global user.name "${GITLAB_USER_ID}"
	#git config --global user.email "${GITLAB_USER_EMAIL}"
	#git commit -m "update jsunpack-n results"
fi
