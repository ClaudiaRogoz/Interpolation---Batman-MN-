function Rapitor
	subplot(1,1,1);
	ezplot('((x/7)^2*sqrt(abs(abs(x)-3)/(abs(x)-3))+(y/3)^2*sqrt(abs(y+3/7*sqrt(33))/(y+3/7*sqrt(33)))-1)',[-8 8 -3*sqrt(33)/7 6-4*sqrt(33)/7]);
	ezplot('(abs(x/2)-((3*sqrt(33)-7)/112)*x^2-3+sqrt(1-(abs(abs(x)-2)-1)^2)-y)',[-4 4]);
	ezplot('(9*sqrt(abs((abs(x)-1)*(abs(x)-.75))/((1-abs(x))*(abs(x)-.75)))-8*abs(x)-y)',[-1 -0.75 -5 5]);
	ezplot('(9*sqrt(abs((abs(x)-1)*(abs(x)-.75))/((1-abs(x))*(abs(x)-.75)))-8*abs(x)-y)',[0.75 1 -5 5]);
	ezplot('(3*abs(x)+.75*sqrt(abs((abs(x)-.75)*(abs(x)-.5))/((.75-abs(x))*(abs(x)-.5)))-y)',[-0.75 0.75 2.25 5]);
	ezplot('(2.25*sqrt(abs((x-.5)*(x+.5))/((.5-x)*(.5+x)))-y)',[-0.5 0.5 -5 5]);
	ezplot('(6*sqrt(10)/7+(1.5-.5*abs(x))*sqrt(abs(abs(x)-1)/(abs(x)-1))-(6*sqrt(10)/14)*sqrt(4-(abs(x)-1)^2)-y)',[-3 -1 -5 5]);
	ezplot('(6*sqrt(10)/7+(1.5-.5*abs(x))*sqrt(abs(abs(x)-1)/(abs(x)-1))-(6*sqrt(10)/14)*sqrt(4-(abs(x)-1)^2)-y)',[1 3 -5 5]);

endfunction
