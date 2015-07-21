# GreenMyPoints
## What's GreenMyPoints
When you are in a company, you work and push your code to pravite git servers, your commit history on your GitHub page will not update.

You work hard but noone knows outside your company.

However, you can show on your GitHub page with this script.

The script is simple, naive, but works.

##How to?
1. download mygit.sh and put it into your /usr/bin/

2. create a private git repo on GitHub. (if your work is not classified, the repo can be public)

3. edit mygit.sh and change WORK_LOG_DIR into your local dictionary of your repo in 2 and change WORK_LOG_NAME into the name of your logfile (the file records the log when you commit)

4.add `alias git='mygit.sh'` into ~/.bash_profile

5.done

