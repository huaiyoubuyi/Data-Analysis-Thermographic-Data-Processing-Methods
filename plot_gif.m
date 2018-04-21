function [  ] = plot_gif( F1 )
for k=1:60
    imagesc(F1.images{1,k});
    drawnow
    frame=getframe(1);
    im=frame2im(frame);
    [A,map]=rgb2ind(im,256);
        if k == 1;
            imwrite(A,map,'test.gif','LoopCount',60,'DelayTime',0.1);
        else
            imwrite(A,map,'test.gif','WriteMode','append','DelayTime',0.2);
        end
end
end

