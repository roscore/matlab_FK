function t = calculate_transform_matrix(roll, pitch, yaw, x, y, z)
%  calculate_transform_matrix �� �־��� ����(roll, pitch, yaw, x, y, z)�� �����
%  ����Ѵ�.

    t_r = rotation_matrix(roll, pitch, yaw);

    t = [t_r(1,1), t_r(1,2), t_r(1,3), x;
        t_r(2,1), t_r(2,2), t_r(2,3), y;
        t_r(3,1), t_r(3,2), t_r(3,3), z;
        0,0,0,1;];
end