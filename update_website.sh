#!/bin/bash
cd Documents/sguo28.github.io
conda activate py27
python jemdoc.py -c mysite.conf index.jemdoc

git add .
git commit -m "update"
git push

python jemdoc.py demos.jemdoc
python jemdoc.py misc.jemdoc
