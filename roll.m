function r = roll(x)
%  roll 은 주어진 인자(x)로 행렬을
%  계산한다.
    
    r = [cosd(x), -sind(x), 0; sind(x), cosd(x), 0; 0, 0, 1;];
    
end