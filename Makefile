FC = gfortran

#FFLAGS = -O -Wall -fbounds-check -g -Wno-uninitialized 
FFLAGS = -g

DRIVER1_90 = DriverRosenbrockNonSmooth.f90
DRIVER2_90 = Driveryurirosen_ns1.f90
DRIVER3_90 = Driveryurirosen_ns2.f90
DRIVER4_90 = driver3.f90
DRIVER5_90 = chained_CB3v1.f90
DRIVER6_90 = chained_CB3v2.f90
DRIVER7_90 = chained_crescent1.f90
DRIVER8_90 = chained_crescent2.f90
DRIVER9_90 = chained_LQ.f90

LBFGSB  = lbfgsb.f
LINPACK = linpack.f
BLAS    = blas.f
TIMER   = timer.f

all :  lbfgsb_90_1 lbfgsb_90_2 lbfgsb_90_3 lbfgsb_90_4 lbfgsb_90_5 lbfgsb_90_6 lbfgsb_90_7 lbfgsb_90_8 lbfgsb_90_9

lbfgsb_90_1 : $(DRIVER1_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER1_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o rosenbrocknonsmooth

lbfgsb_90_2 : $(DRIVER2_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER2_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o yurirosen_ns1

lbfgsb_90_3 : $(DRIVER3_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER3_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o yurirosen_ns2

lbfgsb_90_4 : $(DRIVER4_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER4_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o driver3

lbfgsb_90_5 : $(DRIVER5_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER5_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o chained_CB3v1

lbfgsb_90_6 : $(DRIVER6_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER6_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o chained_CB3v2

lbfgsb_90_7 : $(DRIVER7_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER7_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o chained_crescent1

lbfgsb_90_8 : $(DRIVER8_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER8_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o chained_crescent2

lbfgsb_90_9 : $(DRIVER9_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER)
	$(FC) $(FFLAGS) $(DRIVER9_90) $(LBFGSB) $(LINPACK) $(BLAS) $(TIMER) -o chained_LQ
