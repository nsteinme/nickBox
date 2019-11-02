

function [mn, se] = mnSE(data)

mn = mean(data); 
se = std(data)./sqrt(numel(data)); 
