function pNs = SplineTensionate(ns,xNs, fNs,x,np)
 	  a=zeros(ns,ns);
          b=zeros(ns,1);
          d=zeros(ns,1);
         
          a(1,1)=2*(xNs(2)-xNs(1));
          a(1,2)=xNs(2)-xNs(1);
          a(ns,ns)=2*(xNs(ns)-xNs(ns-1));
          a(ns,ns-1)=xNs(ns)-xNs(ns-1);
          b(1)=3*(fNs(2)-fNs(1))/(xNs(2)-xNs(1))-3*(fNs(2)-fNs(1))/(xNs(2)-xNs(1));
          b(ns)=3*(xNs(ns)-xNs(ns-1))/(xNs(ns)-xNs(ns-1))-3*(xNs(ns)-xNs(ns-1))/(xNs(ns)-xNs(ns-1));
          
          for j=2:ns-1
              a(j,j-1)=xNs(j)-xNs(j-1);
              a(j,j+1)=xNs(j+1)-xNs(j);
              a(j,j)=2*(a(j,j-1)+a(j,j+1));
              b(j)=3*(fNs(j+1)-fNs(j))/a(j,j+1)-3*(fNs(j)-fNs(j-1))/a(j,j-1);
          end
          c=a\b;
          
          for j=1:ns-1
              h=xNs(j+1)-xNs(j);
              b(j)=(fNs(j+1)-fNs(j))/h-h/3*(2*c(j)+c(j+1));
              d(j)=(c(j+1)-c(j))/3*h;
          end
       
          %calcularea valorii functiilor spline 
          j=1;
          for k=1:np+1
              while (~(x(k)>=xNs(j) && x(k)<=xNs(j+1)))
                j=j+1;
              end
              pNs(k)=fNs(j)+b(j)*(x(k)-xNs(j))+c(j)*(x(k)-xNs(j))^2+d(j)*(x(k)-xNs(j))^3;      
          end
endfunction
