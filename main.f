      program main
      implicit none
      real dl,eta,l,t,dt,sigma,c,f,ee,calc_f,tol
      integer kount,i
      parameter(tol=1e-5)
      l=10.
      t=0.
      dt=0.001
      sigma=0.
      c=3.
      eta=30.
      ee=200.



      open(1,file='output.txt')

      do while(t<30.01)
      dl=c*dt
      f=tol*2
      kount=0
      do while(abs(f)>tol.and.kount<10)
        f=calc_f(sigma,eta,ee,c,t,dt,l)
        sigma=sigma+f
        kount=kount+1
      enddo

      write(1,*)t,l,sigma,kount
      l=l+dl
      t=t+dt
      enddo
      close(1)
      end
