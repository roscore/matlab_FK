function r = RotZ(x)
% z�� ȸ��
    
    r = [cosd(x), -sind(x), 0, 0; sind(x), cosd(x), 0, 0; 0, 0, 1, 0; 0, 0, 0, 1;];
    
end