s1 = sine_gen2(1,10,1000,1,0);
filename = 'testAnimated.gif';
phase = 0;
for n = 0:0.1:20
    % Draw plot for y = x.^n
    s2 = sine_gen2(1,30,1000,1,n);
    plot(s1(1:200));
    hold on 
    plot(s2(1:200));
    sig = s1 + s2;
    plot(sig(1:200))
    hold off
    frame = getframe(1);
      im = frame2im(frame);
      [imind,cm] = rgb2ind(im,256);
      if n == 0;
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf);
      else
          imwrite(imind,cm,filename,'gif','WriteMode','append');
      end 
  end