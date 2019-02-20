
function cp = contourPoints(C)

n = 1;
cp = [];
while n<size(C,2)
    nextSetSize = C(2,n);
    cp(:,size(cp,2)+1:size(cp,2)+nextSetSize) = C(:,n+1:n+nextSetSize);
    n = n+nextSetSize+1;
end