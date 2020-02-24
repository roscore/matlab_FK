clc; clear;

% DH-Parameters
syms L1 L2 L3 L4 L5 L6; % x_i축을 기준으로 측정한 z_i 와 z_i+1 까지의 거리
syms a1 a2 a3 a4 a5 a6; % x_i축을 기준으로 측정한 z_i 와 z_i+1 까지의 각도
syms d2 d2 d3 d4 d5 d6; % z_i을 기준으로 측정한 x_i-1 와 x_i 까지의 거리
syms th1 th2 th3 th4 th5 th6; % z_i 주위로 측정한 x_i-1 에서 x_i 사이의 각도

syms t1 t2 t3 t4 t5 t6;

L1 = 10;
L2 = 10;
L3 = 20;
L4 = 5;
L5 = 0;
L6 = 0;

a1 = 17;
a2 = 90;
a3 = -90;
a4 = 90;
a5 = 90;
a6 = 0;

d1 = 0;
d2 = 0;
d3 = 0;
d4 = 10;
d5 = 0;
d6 = 6;

t1 = calculate_transform_matrix(0,0,th1,a1,0,L1);
t2 = calculate_transform_matrix(0,0,th2,a2,0,L2);
t3 = calculate_transform_matrix(0,0,th3,a3,0,L3);
t4 = calculate_transform_matrix(0,0,th4,a4,0,L4);
t5 = calculate_transform_matrix(0,0,th5,a5,0,L5);
t6 = calculate_transform_matrix(0,0,th6,a6,0,L6);

T_06 = t1 * t2 *t3 * t4 *t5 *t6;
