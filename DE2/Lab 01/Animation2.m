
filename = 'testAnimated.gif';
x = 0:0.05:40;
sum = 0;
for n = 1:1:100
    % Draw plot for y = x.^n
    An = 2/(n*pi)*sin(n*pi/2);
    sum = An*cos(n*pi*x/5) + sum
    plot(sum);
    frame = getframe(gcf);
    img =  frame2im(frame);
    [img,cmap] = rgb2ind(img,256);
    if n == 1
        imwrite(img,cmap,'animation.gif','gif','LoopCount',Inf,'DelayTime',1);
    else
        imwrite(img,cmap,'animation.gif','gif','WriteMode','append','DelayTime',1);
    end 
  end