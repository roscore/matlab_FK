function r = roll(x)
%  roll �� �־��� ����(x)�� �����
%  ����Ѵ�.
    
    r = [cosd(x), -sind(x), 0; sind(x), cosd(x), 0; 0, 0, 1;];
    
end