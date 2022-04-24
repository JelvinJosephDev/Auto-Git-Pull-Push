:: Make sure to change the path to your obsidian drive and directory
set sourceDrive=G:
set sourcePath="G:\ObsidianVaults"

:: Make sure to set your GitHub remote repository variable
:: example - set gitHubRemoteRepository=git@github.com:JelvinJosephDev/Auto-Git-Pull-Push.git
set gitHubRemoteRepository="<put your gitHub remote repository ssh here>"

%sourceDrive%
cd %sourcePath%
@echo off
echo Starting GitHub sync sequence...
echo GitHub sync sequence started at %time%
echo Starting GitHub Pull...
git pull %gitHubRemoteRepository% main
pwd
echo GitHub Pull complete.
echo Adding files to local repository...
git add .
echo Files added.
echo Committing files to local repository...
git commit -m "Auto-commit from %time%"
echo Files committed.
echo Pushing files to Remote GitHub repository...
git push origin main
echo Files pushed.
echo GitHub sync sequence complete.
echo GitHub sync sequence completed at %time%
timeout /t 240

:: Created by @Tatsuya#8082 (Jelvin Joseph)
