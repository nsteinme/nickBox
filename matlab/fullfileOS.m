

function ff = fullfileOS(varargin)
% why the normal fullfile does not do this, is beyond me. 

ff = fullfile(varargin{:});
ff = strrep(ff, '/', filesep); 
ff = strrep(ff, '\', filesep); 