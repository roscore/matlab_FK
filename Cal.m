function Cal(t1,t2,t3,t4,t5,t6)

% DH-Parameters
L = [0 0 -172.5 0 0 0];
a = [90 -90 -90 0 90 0];
d = [0 0 172.5 0 20 0];
th = [0 90 -90 90 0 0];

% aviobj = VideoWriter('test.avi');
% open(aviobj);

    th1 = t1 + th(1);
    th2 = t2 + th(2); % sholder
    th3 = t3 + th(3); % sholder
    th4 = t4 + th(4); % elbow
    th5 = t5 + th(5); % wrist
    th6 = t6 + th(6); % wrist

    t0_1 = RotZ(th1) * calculate_transform_matrix(a(1),0,0,L(1),0,d(1));
    t1_2 = RotZ(th2) * calculate_transform_matrix(a(2),0,0,L(2),0,d(2));
    t2_3 = RotZ(th3) * calculate_transform_matrix(a(3),0,0,L(3),0,d(3));
    t3_4 = RotZ(th4) * calculate_transform_matrix(a(4),0,0,L(4),0,d(4));
    t4_5 = RotZ(th5) * calculate_transform_matrix(a(5),0,0,L(5),0,d(5));
    t5_6 = RotZ(th6) * calculate_transform_matrix(a(6),0,0,L(6),0,d(6));

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
    % view(0,90);
    movegui([300 200]);


    drawnow;
    
    % mo = getframe;
    % writeVideo(aviobj, mo);

    % close(aviobj);
end
