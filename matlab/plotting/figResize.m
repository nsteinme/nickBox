

function figResize(f, w, h)

p = get(f, 'Position');

if ~isempty(w) 
    newW = w;
else
    newW = p(3); 
end

if ~isempty(h)
    newH = h;
else
    newH = p(4);
end

set(f, 'Position', [p(1) p(2) newW newH]);