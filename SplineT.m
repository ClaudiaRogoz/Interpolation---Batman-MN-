function [nsi,er,x,xNs,fNs,pNs] = SplineT(eps)
	%functia primeste ca parametru valoarea erorii eps pentru 
	% a verifica convergenta metodei
	
	%nsi = numarul de noduri pentru care metoda converge
	%x, xNs, fNs,pNs = folosite pentru realizarea graficelor
	%er = eroarea obtinuta
 
	% se presupune ca metoda nu converge
	er = inf;
	nsi = 0;
	%functia initializeaza variabilele de care este nevoie
	[xp,yp,x,px,Ns,xmax,np] =initializare();

	
        for i=1:10
	 %cele nsi puncte echidistante  
	
          xNs=linspace(-xmax,xmax,Ns(i));
	
	% valoarea functiei in punctele xNs cu ajutorul
	  %functiei interp1
          fNs(1:Ns(i)) = interp1(xp,yp,xNs(:));
          
	  %metoda interpolare cu functii spline cubice tensionate pentru aflarea in Ns(i) noduri valoarea functiei punctelor din x
          pNs = SplineTensionate(Ns(i),xNs, fNs,x,np);
	%se afla eroarea      
	 S=0;
         e(1)=inf;
         for j=1:np+1
            S=S+(px(j)-pNs(j))^2;
         end
        
         e(i+1)=sqrt((2*xmax/np)*S);
         
 	 %se verifica daca metoda converge din datele problemei
          if e(i+1)<e(i)  
		if e(i)-e(i+1)<eps
			er = e(i+1)
               		nsi=Ns(i);
               		break;
          	end
	end
      end
        
         if nsi==0
            nsi=inf;
         end
        
     end
