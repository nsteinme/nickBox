

function mySaveFig(doSaveFig, thisFilename, figHand, figName)

if doSaveFig
    if ~ispc
        thisFilename = strrep(thisFilename, '\', '/');
    end
    destDir = fileparts(thisFilename);
    
    destCode = fullfile(destDir, sprintf('codeFor_%s.m', figName));
    destFig = fullfile(destDir, sprintf('fig_%s', figName));
    
    print(figHand, destFig, '-dpdf', '-bestfit', '-painters');
    print(figHand, destFig, '-dpng', '-r300');
    copyfile(thisFilename, destCode);
end

