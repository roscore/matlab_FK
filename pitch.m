function p = pitch(y)
%  roll �� �־��� ����(x)�� �����
%  ����Ѵ�.

    p = [cosd(y), 0, sind(y); 0, 1, 0; -sind(y), 0, cosd(y);];
    
end