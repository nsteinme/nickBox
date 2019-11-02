

function dbdir = dropboxDir()

% assuming this function is in /dropbox/code/matlab/nickbox
dbdir = fileparts(fileparts(fileparts(fileparts(mfilename('fullpath'))))); 
