function pNs =SplineLiniar(xNs,fNs,ns,np,x)
	 for i=2:ns
              a(i-1)=(fNs(i)-fNs(i-1))/(xNs(i)-xNs(i-1));
              b(i-1)=(xNs(i)*fNs(i-1)-xNs(i-1)*fNs(i))/(xNs(i)-xNs(i-1));
          end
          i=1;
          for k=1:np+1
            while (~(x(k)>=xNs(i) && x(k)<=xNs(i+1)))
                i=i+1;
            end
                pNs(k)=a(i)*x(k)+b(i);      
          end
endfunction
