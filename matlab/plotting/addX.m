

function h = addX(xval, varargin)
% h = addX(xval[, ax]);
% adds vertical dashed line at the given x position

if nargin<2
    ax = gca;
else
    ax = varargin{1};
end

yl = ylim(); 
np = get(ax, 'NextPlot'); 
set(ax, 'NextPlot', 'add'); % hold on;
h = plot(ax, xval*[1 1], yl, 'k--');
ylim(yl);
set(ax, 'NextPlot', np);
