# GreenMyPoints
## What's GreenMyPoints
When you are in a company, you work and push your code to pravite git servers, your commit history on your GitHub page will not update.

You work hard but no one outside of your company knows.

However, you can show on your GitHub page with this script.

The script is simple, naive, but works.

##How to?
1. download mygit.sh and put it into your `/usr/bin/` (wherever you can get).

2. create a private git repo on GitHub and clone it to your computer. (if your work is not classified, the repo can be public)

3. edit `mygit.sh` and change `WORK_LOG_DIR` into your local dictionary of your repo in 2 and change `WORK_LOG_NAME` into the name of your logfile (the file records the log when you commit)

4.add `alias git='mygit.sh'` into `~/.bash_profile`

5.done

##Effect

Your every commit will be recorded into your private repo.

When you push your work repo, you will also do push in your private log repo by the script.

Your code will not be commit into GitHub but your commit log will. Your commit history will be lighted.

##More

If you are using git alias like `ci=commit`, you should edit `mygit.sh` and replace `"commit"` into your alias `ci`.

The script is simple and naive, so I think every one can read and modify it to get better experience.

##Enjoy and show how hard you are working to the world. 
