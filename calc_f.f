      real function calc_f(sigma,eta,ee,c,t,dt,l0)
      implicit none
      real sigma,c,eta,t,dt,ee,l0
	  calc_f=c*eta
	  calc_f=calc_f/(l0+c*t)
	  calc_f=calc_f+(eta*sigma)/(ee*dt)
	  calc_f=calc_f/(eta/(ee*dt)+1)
	  
      return
      end function
