
classdef affineTrans
    
    properties
        
    end
    
    methods (Static)
        function T = affineTrans(tx, ty)
            
            T = [1 0 tx; ...
                0 1 ty; ...
                0 0 1];
        end
        
        
        function T = affineRot(theta)
            
            T = [cos(theta) -sin(theta) 0;...
                sin(theta) cos(theta) 0;...
                0 0 1];
        end
    end
    
end