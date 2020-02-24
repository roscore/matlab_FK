clc; clear;

% DH-Parameters
syms L1 L2 L3 L4 L5 L6; % x_i축을 기준으로 측정한 z_i 와 z_i+1 까지의 거리
syms a1 a2 a3 a4 a5 a6; % x_i축을 기준으로 측정한 z_i 와 z_i+1 까지의 각도
syms d2 d2 d3 d4 d5 d6; % z_i을 기준으로 측정한 x_i-1 와 x_i 까지의 거리
syms th1 th2 th3 th4 th5 th6; % z_i 주위로 측정한 x_i-1 에서 x_i 사이의 각도

syms t1 t2 t3 t4 t5 t6;

L1 = 0;
L2 = 80;
L3 = 80;
L4 = 172.5;
L5 = 0;
L6 = 0;

a1 = 18;
a2 = -90;
a3 = 90;
a4 = -90;
a5 = 0;
a6 = 0;

d1 = 0;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 20;
d6 = 0;

for i=1:180
    
    th1 = 0;
    th2 = -90;
    th3 = 90;
    th4 = i;
    th5 = 0;
    th6 = 0;

    t0_1 = RotZ(th1) * calculate_transform_matrix(a1,0,0,L1,0,d1);
    t1_2 = RotZ(th2) * calculate_transform_matrix(a2,0,0,L2,0,d2);
    t2_3 = RotZ(th3) * calculate_transform_matrix(a3,0,0,L3,0,d3);
    t3_4 = RotZ(th4) * calculate_transform_matrix(a4,0,0,L4,0,d4);
    t4_5 = RotZ(th5) * calculate_transform_matrix(a5,0,0,L5,0,d5);
    t5_6 = RotZ(th6) * calculate_transform_matrix(a6,0,0,L6,0,d6);

    t0 = [1 0 0 0;
        1 0 0 0;
        0 0 1 0;
        0 0 0 1];

    t0_2 = t0_1 * t1_2;
    t0_3 = t0_2 * t2_3;
    t0_4 = t0_3 * t3_4;
    t0_5 = t0_4 * t4_5;
    t0_6 = t0_5 * t5_6;

    T_total = t0_1 * t1_2 * t2_3 * t3_4 * t4_5 * t5_6;

    originX = [t0(1,4), t0_1(1,4), t0_2(1,4), t0_3(1,4), t0_4(1,4), t0_5(1,4), t0_6(1,4)];
    originY = [t0(2,4), t0_1(2,4), t0_2(2,4), t0_3(2,4), t0_4(2,4), t0_5(2,4), t0_6(2,4)];
    originZ = [t0(3,4), t0_1(3,4), t0_2(3,4), t0_3(3,4), t0_4(3,4), t0_5(3,4), t0_6(3,4)];

    plot3(originX, originY, originZ, '-', 'linewidth', 5);
    % axis([min([originX, originY, originZ])-4, max([originX, originY, originZ])+4, min([originX, originY, originZ])-4, max([originX, originY, originZ])+4])
    axis([-400 400 -400 400 -400 400])
    grid on

    movegui([300 200]);
    
    drawnow;

end