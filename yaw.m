function y = yaw(z)
%  roll 은 주어진 인자(x)로 행렬을
%  계산한다.

    y = [1, 0, 0; 0, cosd(z), -sind(z); 0, sind(z), cosd(z);];
    
end
