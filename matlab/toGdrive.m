

function toGdrive(sourceFile, destDir)
% function toGdrive(sourceFile, destDir)
%
% sourceFile is a local path
% destDir is an "ID" from google drive. get this from "gdrive list" command
%
% To use this, first: 
% 1) go to https://github.com/gdrive-org/gdrive, download the software,
% follow installation instructions. 
% 2) Edit the first variable below specifying the location of the gdrive
% command
%
% Troubleshooting
% - getting a 400 Bad Request? Your token is probably expired. Delete the
% token.json file that is in a place like 
% C:\Users\<username>\AppData\Roaming\.gdrive
% or 
% ~\.gdrive
% then run a command like "gdrive about" to get a new token.

gdriveLoc = 'C:\Users\Nick\gdrive.exe';

if nargin<2 || isempty(destDir)
    system(sprintf('%s upload %s', gdriveLoc, sourceFile));
else
    system(sprintf('%s upload -p %s %s', gdriveLoc, destDir, sourceFile));
end

%%
% toGdrive('7zFM.exe', '1rJ_9_m98Qwr5zNR3MQR97nIDRCXFux2j')


