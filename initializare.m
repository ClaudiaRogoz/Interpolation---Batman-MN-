function [xp,yp,x,px,Ns,xmax,np] =initializare()
	%limitele pentru punctele printesei	
	xmax = 8;
	ymax = 5;
	
	np=500;
	
	% numar de noduri
	Ns= [10 20 30 40 50 100 150 200 250 300];
	%punctele descrise de printesa
	xp = [-8:1:8];
	yp = [-5 1 0 5 -1 3 2 5 3 4 2 0 1 -1 1 3 -5];
	
	% generarea unui x in intervalul specificat
	x = linspace(-xmax,xmax,np+1 );
	% aflarea valorilor functiei descrise de printesa 
	% prin intermediul interp1
	px = interp1(xp,yp,x);

endfunction
