

function h = addXeqY(varargin)
% h = addXeqY([ax]);
% adds vertical dashed line at the given x position

if nargin<1
    ax = gca;
else
    ax = varargin{1};
end

xl = xlim(); yl = ylim(); 
mn = min([xl(:) yl(:)]); mx = max([xl(:) yl(:)]);
np = get(ax, 'NextPlot'); 
set(ax, 'NextPlot', 'add'); % hold on;
h = plot(ax, [mn mx], [mn mx], 'k--');
xlim(xl); ylim(yl);
set(ax, 'NextPlot', np);
