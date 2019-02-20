

function colorbackup(ax)
ax.ColorOrderIndex = mod(ax.ColorOrderIndex-2, size(ax.ColorOrder,1))+1;
end