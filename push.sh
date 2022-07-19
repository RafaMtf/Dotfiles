#!/bin/bash
cd /home/rafa/Git
git add --all
git commit -m "Revision: $(crc32 <(echo $(date)))"
git branch -M main >/dev/null 2>&1
git remote add origin git@github.com:/RafaMtF/dotfiles.git > /dev/null 2>&1
git push -u origin main > /dev/null 2>&1
git push