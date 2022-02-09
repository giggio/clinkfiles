@echo off
IF EXIST %~dp0..\poshfiles\starship.toml set STARSHIP_CONFIG=%~dp0..\poshfiles\starship.toml

doskey st=git status $*
doskey k=kubectl $*
doskey add=if "$*" == "" ( git add -A :/ ) else ( git add $* )
doskey st=git status $*
doskey push=git push $*
doskey pull=git pull $*
doskey log=git log $*
doskey ci=git commit $*
doskey co=git checkout $*
doskey dif=git diff $*
doskey rs=git reset $*
doskey rb=git rebase $*
doskey fixup=git fixup $*
doskey branch=git branch $*
doskey tag=git tag $*
doskey up=git up $*
doskey sync=git sync $*
doskey l=ls $*
doskey ll=ls -la $*
doskey ccat=pygmentize -g -O style=vs -f console16m $*
where hub >nul 2> nul && if ERRORLEVEL 0 doskey git=hub $*
doskey pushsync=pwsh -NoProfile -NoLogo -NonInteractive -Command "& { $_branch = $(git rev-parse --abbrev-ref HEAD); git push --set-upstream origin $_branch; }"
doskey gitbash=%ProgramFiles%\Git\usr\bin\bash.exe $*
