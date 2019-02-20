

function dbdir = dropboxDir()

dbdir = fileparts(fileparts(fileparts(mfilename('fullpath')))); % assuming this function is in /dropbox/code/nickbox
