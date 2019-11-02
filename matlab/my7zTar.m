

function my7zTar(outFilename, inFilenames)
oldDir = pwd;
SzDir = 'c:\Program Files\7-Zip';
cd(SzDir)
compStr = sprintf('7z a %s %s', outFilename, sprintf('%s ', inFilenames{:}));

system(compStr);

cd(oldDir);