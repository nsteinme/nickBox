

function h = addY(yval, varargin)
% h = addY(yval[, ax]);
% adds vertical dashed line at the given x position

if nargin<2
    ax = gca;
else
    ax = varargin{1};
end

xl = xlim(); 
np = get(ax, 'NextPlot'); 
set(ax, 'NextPlot', 'add'); % hold on;
h = plot(ax, xl, yval*[1 1], 'k--');
xlim(xl);
set(ax, 'NextPlot', np);
