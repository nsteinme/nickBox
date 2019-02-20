


function equalizeAxes(h, varargin)
% make the x and y limits the same for all subplots in a figure specified
% by handle h. If h is a vector, then it's assumed to be a vector of axes
% handles to use. An optional second argument specifies whether to to
% equalize 'x', 'y', or 'xy'.

if length(h)==1
    sp = get(h, 'Children');
else
    sp = h;
end

if ~isempty(varargin)
    eqType = varargin{1};
else
    eqType = 'xy';
end

subplots = [];
for i = 1:length(sp)
    if strcmp(get(sp(i), 'Type'), 'axes')
        subplots(end+1) = sp(i);
    end
end

if ~isempty(subplots)
    
    if contains(eqType, 'y')
        limFunc = @ylim;
        eqAx(limFunc, subplots);
    end
    
    if contains(eqType, 'x')
        limFunc = @xlim;
        eqAx(limFunc, subplots);
    end
    
    if contains(eqType, 'c')
        limFunc = @caxis;
        eqAx(limFunc, subplots);
    end
    
end
end

function eqAx(limFunc, subplots)
yl = limFunc(subplots(1));

minY = yl(1);
maxY = yl(2);

for s = 2:length(subplots)
    yl = limFunc(subplots(s));
    if yl(1)<minY; minY = yl(1); end
    if yl(2)>maxY; maxY = yl(2); end
end

for s = 1:length(subplots)
    limFunc(subplots(s), [minY maxY]);
end
end