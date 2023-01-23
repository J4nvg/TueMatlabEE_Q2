 x = 0:.2:12;
          Y = [besselj(1,x); besselj(2,x); besselj(3,x)];
          plot(x,Y);
          legend('First','Second','Third','Location','NorthEastOutside')