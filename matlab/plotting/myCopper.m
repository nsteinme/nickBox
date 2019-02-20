

function cmap = myCopper(hue, nColors)
% function cmap = myCopper(x, m)
% x is the hue, ranges from 0 to 1, circular

% this bit is from copper(), to pick size if not supplied
if nargin < 2
   f = get(groot,'CurrentFigure');
   if isempty(f)
      nColors = size(get(groot,'DefaultFigureColormap'),1);
   else
      nColors = size(f.Colormap,1);
   end
end

cmap = hsv2rgb(horzcat(hue*ones(nColors,1), 0.6*ones(nColors,1), linspace(0,1,nColors)'));
