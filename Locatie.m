function Locatie(metoda)

switch(metoda)
	case 1
		[nsi,er,x,xNs,fNs,pNs]=SplineL(0.1);
		plot(xNs,fNs,'r');
		hold on;
		plot(x,pNs,'b');
		hold off;
	case 2
		
		[nsi,er,x,xNs,fNs,pNs]=SplineN(0.1);
		plot(xNs,fNs,'r');
		hold on;
		plot(x,pNs,'b');
		hold off;
	case 3
		
		[nsi,er,x,xNs,fNs,pNs]=SplineT(0.1);
		plot(xNs,fNs,'r');
		hold on;
		plot(x,pNs,'b');
		hold off;
end

endfunction



