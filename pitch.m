function p = pitch(y)
%  roll 은 주어진 인자(x)로 행렬을
%  계산한다.

    p = [cosd(y), 0, sind(y); 0, 1, 0; -sind(y), 0, cosd(y);];
    
end