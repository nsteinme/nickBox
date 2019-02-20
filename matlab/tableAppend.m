

function t = tableAppend(t, varargin)

q = varargin;
nv = numel(q); 
varnames = t.Properties.VariableNames;

if nv~=numel(varnames)
    error('cannot append, number of table variables does not match number of input args'); 
end

nr = size(q{1},1); 
xx = cell(nr,numel(varnames));
for x = 1:numel(q)
    if size(q{x},1)~=nr
        error('cannot append, number of rows in one of the input vars does not match the others'); 
    end
    
    for y = 1:size(q{x},1)
        xx{y,x} = q{x}(y,:); 
    end

end

t = [t; xx];

