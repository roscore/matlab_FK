function rm = rotation_matrix(x, y, z)
%  rotation_matrix �� �־��� ����(roll, pitch, yaw)�� �����
%  ����Ѵ�.
    
    rm = roll(x) * pitch(y) * yaw(z);
        
end