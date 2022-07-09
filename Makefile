#
#  makefile for rnxqce - gfortran compiler
#---------------------------------------------------------
PGM      = rnxqce
FC       = gfortran
FFLAGS   = -Wall
RM       = rm
SRCS     = \
           f90/m_qc_multipath.f90 \
           f90/m_qc_snr.f90 \
           f90/m_rnxqce_frequency.f90 \
           f90/m_rnxqce_rinexmodify.f90 \
           f90/m_rnxqce_vertical_angel.f90 \
           f90/m_qc_findlack.f90 \
           f90/m_qc_slip.f90 \
           f90/m_rnxqce_control.f90 \
           f90/m_rnxqce_navread.f90 \
           f90/m_rnxqce_rinexread.f90 \
           f90/calculatesiteposition.f90 \
           f90/clockbias.f90 \
           f90/coordinate.f90 \
           f90/earthrot.f90 \
           f90/get_rnxqce_args.f90 \
           f90/parameters.f90 \
           f90/timetransform.f90 \
           f90/rnxqce.f90

#-------------------------------------
$(PGM): $(SRCS)
	$(FC) $(FFLAGS) -o $@ $^

clean:
	$(RM) -f *.mod $(PGM)
