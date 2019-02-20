





function h = plotWithErrUL(xdata, ydata, errBars, color)
% function plotWithErrUL(xdata, ydata, errBars, color)
%
% This function is just like plotWithErr but instead of passing one error
% value, instead specify the locations of upper and lower bounds (for
% instance, if they are 25%/75% quartiles).
    holdOn = ishold(gca);    
    
    if size(xdata,1)>size(xdata,2)
        xdata = xdata'; % data must be a row
    end
    if size(ydata,1)>size(ydata,2)
        ydata = ydata'; % data must be a row
    end
    if size(errBars,1)>size(errBars,2)
        errBars = errBars'; % data must be a row
    end
    
    h = plot(xdata, ydata);
    hold on;
    set(h, 'Color', color);
    set(h, 'LineWidth', 2.0);
    
    % set all NaN values to 0 so the fill function can proceed just
    % skipping over those points. 
    ydata(isnan(ydata)) = 0;
    errBars(isnan(errBars)) = 0;
    
    fill([xdata xdata(end:-1:1)], [errBars(1,:) errBars(2,end:-1:1)], color, 'FaceAlpha', 0.5, 'EdgeAlpha', 0);
    
    % set the hold state back to what it was before
    if ~holdOn
        hold off;
    end
    
end