function y = yaw(z)
%  roll �� �־��� ����(x)�� �����
%  ����Ѵ�.

    y = [1, 0, 0; 0, cosd(z), -sind(z); 0, sind(z), cosd(z);];
    
end
