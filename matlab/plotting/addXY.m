

function h = addXY(varargin)

if nargin<1
    ax = gca;
else
    ax = varargin{1};
end

h(1) = addX(0,ax); 
h(2) = addY(0,ax); 
h(3) = addXeqY(ax); 
