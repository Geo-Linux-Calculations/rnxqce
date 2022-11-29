#
#  makefile for rnxqce - gfortran compiler
#---------------------------------------------------------
PGM      = rnxqce
FC       = gfortran
FCFLAGS  = -Wall -Isrc -Jsrc
RM       = rm -f
SRCS     = \
           src/parameters.f90 \
           src/m_rnxqce_control.f90 \
           src/coordinate.f90 \
           src/timetrans.f90 \
           src/m_rnxqce_rinexread.f90 \
           src/m_qc_findlack.f90 \
           src/m_rnxqce_frequency.f90 \
           src/m_qc_multipath.f90 \
           src/m_qc_snr.f90 \
           src/m_rnxqce_rinexmodify.f90 \
           src/m_rnxqce_navread.f90 \
           src/calculatesiteposition.f90 \
           src/clockbias.f90 \
           src/earthrot.f90 \
           src/vertical_angle.f90 \
           src/m_qc_slip.f90 \
           src/get_rnxqce_args.f90 \
           src/rnxqce.f90
OBJS     = $(SRCS:%.f90=%.o)
MODS     = $(SRCS:%.f90=%.mod)

#-------------------------------------

all: $(PGM)

$(PGM): $(OBJS)
	$(FC) $(FCFLAGS) $^ -o $@

%.o : %.f90
	$(FC) $(FCFLAGS) -c $< -o $@

clean:
	$(RM) $(PGM) $(OBJS) $(MODS)
