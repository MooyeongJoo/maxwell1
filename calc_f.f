      real function calc_f(sigma,eta,ee,c,t,dt,l)
      implicit none
      real sigma,c,l,eta,t,dt,ee
      calc_f=(c*eta/(l+ee*t))*(1/(eta/(ee*dt+1)))+eta*sigma/(eta+ee*dt)
      return
      end function
