seq = 0

for i=-180:180
    if(seq == 0)
        if(i == 180)
            i = -180;
            seq = 1;
        else
            Cal(i,0,0,0,0,0);
        end
        print("seq 0 is end");
    elseif(seq == 1)
        if(i == 180)
            i = -180;
            seq = 2;
        else
            Cal(0,i,0,0,0,0);
        end
    elseif(seq == 2)
        if(i == 180)
            i = -180;
            seq = 3;
        else
            Cal(0,0,i,0,0,0);
        end
    elseif(seq == 3)
        if(i == 180)
            i = -180;
            seq = 4;
        else
            Cal(0,0,0,i,0,0);
        end
    elseif(seq == 4)
        if(i == 180)
            i = -180;
            seq = 5;
        else
            Cal(0,0,0,0,i,0);
        end
    elseif(seq == 5)
        if(i == 180)
            i = -180;
            seq = 999;
        else
            Cal(0,0,0,0,0,i);
        end
    else
        print("end");
    end
            
end



 
                    