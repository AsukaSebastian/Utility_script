
# a script that automatically commits when the file is saved
# you need to install inotify-tools
inotifywait -q -m -e CLOSE_WRITE --format="git commit -m 'autocommit on change' %w" file.txt | sh
