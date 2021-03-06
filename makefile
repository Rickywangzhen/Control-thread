ANAME=Ass2
CC=g++
TMP_PROGS = ass2_proj.cpp ass.cpp
PROGS = $(TMP_PROGS)
OBJS = $(PROGS:.cpp=.o)
INCDIR=./
all: $(ANAME)
$(ANAME): $(OBJS)
	@echo "--------------- .o to ELT "
	$(CC) -g $(TMP_PROGS) -o $@ -lpthread   
.cpp.o:
	@echo "--------------- CPP to .o "
	$(CC) -g $(CFLAGS) -I$(INCDIR) -c  $< -o $@  -lpthread
clean:
	$(RM) $(ANAME)
	$(RM) *.o 
