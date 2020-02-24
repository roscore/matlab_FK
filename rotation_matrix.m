function rm = rotation_matrix(x, y, z)
%  rotation_matrix 는 주어진 인자(roll, pitch, yaw)로 행렬을
%  계산한다.
    
    rm = roll(x) * pitch(y) * yaw(z);
        
end