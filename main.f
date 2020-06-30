      program main
      implicit none
      real dl,eta,l,t,dt,sigma,c,f,ee,calc_f,l0
      integer i
      l0=10.
	  l=10.
      t=0.
      dt=1.
      sigma=0.001
      c=2.
      eta=10000.
      ee=200.


      open(1,file='output.txt')

      do while(t<30.01)
      dl=c*dt
      f=calc_f(sigma,eta,ee,c,t,dt,l0,l)
      sigma=f
      write(1,*)t,l,sigma
      l=l+dl
      t=t+dt
      enddo
	  
      close(1)
      end
