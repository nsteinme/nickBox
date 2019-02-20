


function saveFig(h, figName, varargin)

mode = 'jpgOnly'; % can also be 'all'
if ~isempty(varargin)    
    mode = varargin{1};
else
    
end

% saveas(h, figName, 'jpeg')
% set(h,'PaperPositionMode','auto')
print(h, '-djpeg', figName, '-painters')

if strcmp(mode, 'all')
    saveas(h, figName, 'fig')
    
    %export_fig(figName, '-transparent', '-pdf', '-jpg', h)
    
%     saveTightFigure(h, [figName '.pdf']);
    ps = get(h, 'PaperSize');
    pp = get(h, 'PaperPosition');
    set(h, 'PaperSize', pp(3:4));
    saveas(h, figName, 'pdf');
    set(h, 'PaperSize', ps);
    
else
% saveas(h, figName, 'jpg')
% saveas(h, figName, 'epsc')
% disp(num2str(h));
% saveSameSize(h, 'file', figName, 'format', 'fig')


% try
% saveSameSize(h, 'file', figName, 'format', 'jpeg')
%     saveSameSize(h, 'file', figName, 'format', 'epsc', 'renderer', 'painters')
% export_fig(figName, '-transparent', '-pdf', '-jpg', h)
%     export_fig(figName, '-transparent', '-jpg', h)

% catch e
%     disp('error generated and caught')
%     disp(e)
%     e.stack(1)
% end
end