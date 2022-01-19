s1 = sine_gen2(1,10,1000,1,0);
filename = 'testAnimated.gif';
phase = 0;
for n = 0:0.1:2*pi
    % Draw plot for y = x.^n
    s2 = sine_gen2(1,30,1000,1,n);
    plot(s1(1:200));
    hold on 
    plot(s2(1:200));
    sig = s1 + s2;
    plot(sig(1:200))
    hold off
    frame = getframe(gcf);
    img =  frame2im(frame);
    [img,cmap] = rgb2ind(img,256);
    if n == 0
        imwrite(img,cmap,'animation.gif','gif','LoopCount',Inf,'DelayTime',1);
    else
        imwrite(img,cmap,'animation.gif','gif','WriteMode','append','DelayTime',1);
    end
  end