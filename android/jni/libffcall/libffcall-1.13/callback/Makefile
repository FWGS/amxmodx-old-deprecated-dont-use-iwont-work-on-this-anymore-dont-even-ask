# Makefile for callback

#### Start of system configuration section. ####

HOST = arm-unknown-linux-androideabi
CPU = arm

# Directories used by "make":
srcdir = .

# Directories used by "make install":
prefix = /usr/local
local_prefix = /usr/local
exec_prefix = ${prefix}
libdir = ${exec_prefix}/lib
includedir = ${prefix}/include
mandir = ${datarootdir}/man
datadir = ${datarootdir}
datarootdir = ${prefix}/share
htmldir = $(datadir)/html

# Programs used by "make":
CC = /home/a1ba/projects/Xash3D/amx/backup/amxmodx/android/jni/libffcall-1.13/arm-linux-androideabi/bin/gcc
CFLAGS = -g -O2
CPPFLAGS = 
CPP = /home/a1ba/projects/Xash3D/amx/backup/amxmodx/android/jni/libffcall-1.13/arm-linux-androideabi/bin/gcc -E
INCLUDES = -I. -I$(srcdir) -I..
LDFLAGS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIBTOOL_LINK = $(LIBTOOL) --mode=link
LIBTOOL_INSTALL = $(LIBTOOL) --mode=install
LIBTOOL_UNINSTALL = $(LIBTOOL) --mode=uninstall
AR = /home/a1ba/projects/Xash3D/amx/backup/amxmodx/android/jni/libffcall-1.13/arm-linux-androideabi/bin/ar
AR_FLAGS = rc
RANLIB = ranlib
LN_S = ln -s
RM = rm -f


# Programs used by "make install":
INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644

# Libtool options for linking with the thread library.
LTLIBTHREAD = 

#### End of system configuration section. ####

SHELL = /bin/sh

# Needed by $(LIBTOOL).
top_builddir = ..

all : all-subdirs callback.h vacall_r.h trampoline_r.h libcallback.la $(srcdir)/callback.3 $(srcdir)/callback.html

all-subdirs : force
	cd vacall_r && $(MAKE) all
	cd trampoline_r && $(MAKE) all

callback.h :
	$(LN_S) $(srcdir)/callback.h.in callback.h

vacall_r.h :
	$(LN_S) vacall_r/vacall_r.h vacall_r.h

trampoline_r.h :
	$(LN_S) trampoline_r/trampoline_r.h trampoline_r.h

libcallback.la : vacall_r/libvacall.la trampoline_r/libtrampoline.la
	$(LIBTOOL_LINK) $(CC) -o libcallback.la -rpath $(libdir) vacall_r/vacall.lo vacall_r/misc.lo vacall_r/vacall-structcpy.lo trampoline_r/*.lo ../gnulib-lib/libgnu.la $(LDFLAGS) $(LTLIBTHREAD)

# Installs the library and include files only. Typically called with only
# $(libdir) and $(includedir) - don't use $(prefix) and $(exec_prefix) here.
install-lib : all force
	cd vacall_r && $(MAKE) install-lib libdir='$(libdir)' includedir='$(includedir)'
	cd trampoline_r && $(MAKE) install-lib libdir='$(libdir)' includedir='$(includedir)'
	mkdir -p $(libdir)
	$(LIBTOOL_INSTALL) $(INSTALL_DATA) libcallback.la $(libdir)/libcallback.la
	mkdir -p $(includedir)
	$(INSTALL_DATA) callback.h $(includedir)/callback.h

install : force
	cd vacall_r && $(MAKE) install
	cd trampoline_r && $(MAKE) install
	mkdir -p $(DESTDIR)$(prefix)
	mkdir -p $(DESTDIR)$(exec_prefix)
	mkdir -p $(DESTDIR)$(libdir)
	$(LIBTOOL_INSTALL) $(INSTALL_DATA) libcallback.la $(DESTDIR)$(libdir)/libcallback.la
	mkdir -p $(DESTDIR)$(includedir)
	$(INSTALL_DATA) callback.h $(DESTDIR)$(includedir)/callback.h
	mkdir -p $(DESTDIR)$(mandir)
	mkdir -p $(DESTDIR)$(mandir)/man3
	$(INSTALL_DATA) $(srcdir)/callback.3 $(DESTDIR)$(mandir)/man3/callback.3
	mkdir -p $(DESTDIR)$(datadir)
	mkdir -p $(DESTDIR)$(htmldir)
	$(INSTALL_DATA) $(srcdir)/callback.html $(DESTDIR)$(htmldir)/callback.html

installdirs : force
	cd vacall_r && $(MAKE) installdirs
	cd trampoline_r && $(MAKE) installdirs
	mkdir -p $(DESTDIR)$(prefix)
	mkdir -p $(DESTDIR)$(exec_prefix)
	mkdir -p $(DESTDIR)$(libdir)
	mkdir -p $(DESTDIR)$(includedir)
	mkdir -p $(DESTDIR)$(mandir)
	mkdir -p $(DESTDIR)$(mandir)/man3
	mkdir -p $(DESTDIR)$(datadir)
	mkdir -p $(DESTDIR)$(htmldir)

uninstall : force
	cd vacall_r && $(MAKE) uninstall
	cd trampoline_r && $(MAKE) uninstall
	$(LIBTOOL_UNINSTALL) $(RM) $(DESTDIR)$(libdir)/libcallback.la
	$(RM) $(DESTDIR)$(includedir)/callback.h
	$(RM) $(DESTDIR)$(mandir)/man3/callback.3
	$(RM) $(DESTDIR)$(htmldir)/callback.html

test1.o : $(srcdir)/test1.c callback.h vacall_r.h trampoline_r.h
	$(CC) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) -c $(srcdir)/test1.c

test1 : test1.o libcallback.la
	$(LIBTOOL_LINK) $(CC) $(CFLAGS) -x none test1.o libcallback.la $(LDFLAGS) -o test1

minitests.o : $(srcdir)/minitests.c $(srcdir)/tests.c callback.h vacall_r.h trampoline_r.h
	$(CC) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) -c $(srcdir)/minitests.c

minitests.s : $(srcdir)/minitests.c $(srcdir)/tests.c callback.h vacall_r.h trampoline_r.h
	$(CC) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) -S $(srcdir)/minitests.c

minitests : minitests.o libcallback.la
	$(LIBTOOL_LINK) $(CC) $(CFLAGS) -x none minitests.o libcallback.la $(LDFLAGS) -o minitests

check-subdirs : force
	cd vacall_r && $(MAKE) check
	cd trampoline_r && $(MAKE) check

check : all check-subdirs test1 minitests
	./test1
	./minitests > minitests.out
	LC_ALL=C uniq -u < minitests.out > minitests.output.$(HOST)
	test '!' -s minitests.output.$(HOST)

tests.o : $(srcdir)/tests.c callback.h vacall_r.h trampoline_r.h
	$(CC) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) -c $(srcdir)/tests.c

tests.s : $(srcdir)/tests.c callback.h vacall_r.h trampoline_r.h
	$(CC) $(INCLUDES) $(CPPFLAGS) $(CFLAGS) -S $(srcdir)/tests.c

tests : tests.o libcallback.la
	$(LIBTOOL_LINK) $(CC) $(CFLAGS) -x none tests.o libcallback.la $(LDFLAGS) -o tests

extracheck-subdirs : force
	cd vacall_r && $(MAKE) extracheck
	cd trampoline_r && $(MAKE) extracheck

extracheck : all extracheck-subdirs tests
	./tests > tests.out
	LC_ALL=C uniq -u < tests.out > tests.output.$(HOST)
	test '!' -s tests.output.$(HOST)

MOSTLYCLEANDIRS = .libs _libs
MOSTLYCLEANFILES = \
  *.o *.lo core \
  callback.h vacall_r.h trampoline_r.h libcallback.* \
  test1.o test1 \
  minitests.o minitests.s minitests minitests.out \
  tests.o tests.s tests tests.out

mostlyclean : force
	cd vacall_r && $(MAKE) mostlyclean
	cd trampoline_r && $(MAKE) mostlyclean
	$(RM) -r $(MOSTLYCLEANDIRS)
	$(RM) $(MOSTLYCLEANFILES)

clean : force
	cd vacall_r && $(MAKE) clean
	cd trampoline_r && $(MAKE) clean
	$(RM) -r $(MOSTLYCLEANDIRS)
	$(RM) $(MOSTLYCLEANFILES)

DISTCLEANFILES = \
  Makefile \
  minitests.output.* tests.output.*

distclean : force
	cd vacall_r && if test -f Makefile; then $(MAKE) distclean; fi
	cd trampoline_r && if test -f Makefile; then $(MAKE) distclean; fi
	$(RM) -r $(MOSTLYCLEANDIRS)
	$(RM) $(MOSTLYCLEANFILES)
	$(RM) $(DISTCLEANFILES)

maintainer-clean : force
	cd vacall_r && if test -f Makefile; then $(MAKE) maintainer-clean; fi
	cd trampoline_r && if test -f Makefile; then $(MAKE) maintainer-clean; fi
	$(RM) -r $(MOSTLYCLEANDIRS)
	$(RM) $(MOSTLYCLEANFILES)
	$(RM) $(DISTCLEANFILES)


# List of source files (committed in version control).
SOURCE_FILES = \
  COPYING MIGRATION PLATFORMS README callback.3 callback.html elf-hack.txt \
  Makefile.maint \
  Makefile.in Makefile.mingw32 Makefile.msvc \
  callback.h.in \
  test1.c \
  minitests.c \
  tests.c
# List of distributed files generated by Makefile.maint.
GENERATED_FILES = \
  callback.man
# List of distributed files.
DISTFILES = $(SOURCE_FILES) $(GENERATED_FILES)

distdir : $(DISTFILES)
	for file in $(DISTFILES); do \
	  if test -f $$file; then dir='.'; else dir='$(srcdir)'; fi; \
	  cp -p "$$dir/$$file" '$(distdir)'/$$file || exit 1; \
	done
	test -d '$(distdir)'/vacall_r || mkdir '$(distdir)'/vacall_r; cd vacall_r && $(MAKE) distdir distdir='$(distdir)'/vacall_r
	test -d '$(distdir)'/trampoline_r || mkdir '$(distdir)'/trampoline_r; cd trampoline_r && $(MAKE) distdir distdir='$(distdir)'/trampoline_r


force :
