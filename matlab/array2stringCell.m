
function c = array2stringCell(a)

c = cellfun(@num2str, num2cell(a), 'UniformOutput', false);