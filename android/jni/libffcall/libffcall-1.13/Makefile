# Makefile for libffcall

#### Start of system configuration section. ####

# Directories used by "make install":
prefix = /usr/local
local_prefix = /usr/local
exec_prefix = ${prefix}
libdir = ${exec_prefix}/lib
includedir = ${prefix}/include
mandir = ${datarootdir}/man
datarootdir = ${prefix}/share

# Programs used by "make":
RM = rm -f


#### End of system configuration section. ####

SHELL = /bin/sh

all : force
	cd gnulib-lib && $(MAKE) all
	cd avcall && $(MAKE) all
	cd vacall && $(MAKE) all
	cd trampoline && $(MAKE) all
	cd callback && $(MAKE) all

install : force
	cd gnulib-lib && $(MAKE) install
	cd avcall && $(MAKE) install
	cd vacall && $(MAKE) install
	cd trampoline && $(MAKE) install
	cd callback && $(MAKE) install

installdirs : force
	cd gnulib-lib && $(MAKE) installdirs
	cd avcall && $(MAKE) installdirs
	cd vacall && $(MAKE) installdirs
	cd trampoline && $(MAKE) installdirs
	cd callback && $(MAKE) installdirs

uninstall : force
	cd gnulib-lib && $(MAKE) uninstall
	cd avcall && $(MAKE) uninstall
	cd vacall && $(MAKE) uninstall
	cd trampoline && $(MAKE) uninstall
	cd callback && $(MAKE) uninstall

check : force
	cd gnulib-lib && $(MAKE) check
	cd avcall && $(MAKE) check
	cd vacall && $(MAKE) check
	cd trampoline && $(MAKE) check
	cd callback && $(MAKE) check

extracheck : force
	cd gnulib-lib && $(MAKE) extracheck
	cd avcall && $(MAKE) extracheck
	cd vacall && $(MAKE) extracheck
	cd trampoline && $(MAKE) extracheck
	cd callback && $(MAKE) extracheck

mostlyclean : force
	cd gnulib-lib && $(MAKE) mostlyclean
	cd avcall && $(MAKE) mostlyclean
	cd vacall && $(MAKE) mostlyclean
	cd trampoline && $(MAKE) mostlyclean
	cd callback && $(MAKE) mostlyclean

clean : force
	cd gnulib-lib && $(MAKE) clean
	cd avcall && $(MAKE) clean
	cd vacall && $(MAKE) clean
	cd trampoline && $(MAKE) clean
	cd callback && $(MAKE) clean

DISTCLEANFILES = \
  config.status config.log config.cache Makefile config.h libtool \
  stamp-h1 \
  avcall/stamp-h2 \
  vacall/stamp-h3 \
  trampoline/stamp-h4 \
  callback/stamp-h5 \
  callback/vacall_r/stamp-h6 \
  callback/trampoline_r/stamp-h7

distclean : force
	cd gnulib-lib; if test -f Makefile; then $(MAKE) distclean; fi
	cd avcall; if test -f Makefile; then $(MAKE) distclean; fi
	cd vacall; if test -f Makefile; then $(MAKE) distclean; fi
	cd trampoline; if test -f Makefile; then $(MAKE) distclean; fi
	cd callback; if test -f Makefile; then $(MAKE) distclean; fi
	$(RM) $(DISTCLEANFILES)

maintainer-clean : force
	cd gnulib-lib; if test -f Makefile; then $(MAKE) maintainer-clean; fi
	cd avcall; if test -f Makefile; then $(MAKE) maintainer-clean; fi
	cd vacall; if test -f Makefile; then $(MAKE) maintainer-clean; fi
	cd trampoline; if test -f Makefile; then $(MAKE) maintainer-clean; fi
	cd callback; if test -f Makefile; then $(MAKE) maintainer-clean; fi
	$(RM) $(DISTCLEANFILES)


# List of source files (committed in version control).
SOURCE_FILES = \
  COPYING DEPENDENCIES NEWS PLATFORMS README README.os2 README.win32 \
  ChangeLog \
  VERSION \
  Makefile.devel \
  Makefile.maint \
  Makefile.in Makefile.mingw32 Makefile.msvc \
  configure.ac \
  m4/as-underscore.m4 \
  m4/cc-gcc.m4 \
  m4/codeexec.m4 \
  m4/endianness.m4 \
  m4/general.m4 \
  m4/getpagesize.m4 \
  m4/ireg.m4 \
  m4/ln.m4 \
  m4/mach-vm.m4 \
  m4/mmap.m4 \
  m4/mprotect.m4 \
  m4/pccstruct.m4 \
  m4/proto.m4 \
  m4/shm.m4 \
  m4/smallstruct.m4 \
  common/asm-alpha.sh \
  common/asm-arm.sh common/asm-arm.h \
  common/asm-hppa.sh common/asm-hppa.h \
  common/asm-i386.sh common/asm-i386.hh \
  common/asm-m68k.sh common/asm-m68k.h \
  common/asm-mips.sh common/asm-mips.h \
  common/asm-powerpc.sh \
  common/asm-s390.sh \
  common/asm-sparc.sh common/asm-sparc.h \
  common/asm-x86_64.sh common/asm-x86_64.h \
  common/noexecstack.h common/noexecstack-arm.h \
  common/structcpy.c \
  common/uniq-u.c
# List of distributed files imported from other packages or directories.
LIBTOOL_IMPORTED_FILES = \
  build-aux/ltmain.sh \
  m4/libtool.m4 \
  m4/lt~obsolete.m4 \
  m4/ltoptions.m4 \
  m4/ltsugar.m4 \
  m4/ltversion.m4
GNULIB_IMPORTED_FILES = \
  build-aux/ar-lib \
  build-aux/compile \
  build-aux/config.guess \
  build-aux/config.sub \
  build-aux/install-sh \
  gnulib-m4/*.m4
AUTOMAKE_IMPORTED_FILES = \
  build-aux/missing
IMPORTED_FILES = \
  $(LIBTOOL_IMPORTED_FILES) $(GNULIB_IMPORTED_FILES) $(AUTOMAKE_IMPORTED_FILES)
# List of files copied by autogen.sh.
COPIED_FILES = \
  callback/vacall_r/vacall-arm.c \
  callback/vacall_r/vacall-armhf.c \
  callback/vacall_r/vacall-arm64.c \
  callback/vacall_r/vacall-hppa.c \
  callback/vacall_r/vacall-i386.c \
  callback/vacall_r/vacall-ia64.c \
  callback/vacall_r/vacall-m68k.c \
  callback/vacall_r/vacall-mips.c \
  callback/vacall_r/vacall-mipsn32.c \
  callback/vacall_r/vacall-mips64.c \
  callback/vacall_r/vacall-powerpc.c \
  callback/vacall_r/vacall-powerpc64.c \
  callback/vacall_r/vacall-s390.c \
  callback/vacall_r/vacall-s390x.c \
  callback/vacall_r/vacall-sparc.c \
  callback/vacall_r/vacall-sparc64.c \
  callback/vacall_r/vacall-x86_64.c \
  callback/trampoline_r/PORTING \
  callback/trampoline_r/cache.c \
  callback/trampoline_r/cache-alpha.c \
  callback/trampoline_r/cache-hppa.c
# List of distributed files generated by Makefile.maint.
GENERATED_FILES = \
  aclocal.m4 \
  configure \
  config.h.in \
  common/asm-i386.h
# List of distributed files.
DISTFILES = $(SOURCE_FILES) $(IMPORTED_FILES) $(COPIED_FILES) $(GENERATED_FILES)

distdir : $(DISTFILES)
	for file in $(DISTFILES); do \
	  if test -f $$file; then dir='.'; else dir='$(srcdir)'; fi; \
	  destdir=`echo '$(distdir)'/$$file | sed -e 's|//*[^/]*$$||'`; \
	  test -d "$$destdir" || mkdir -p "$$destdir"; \
	  cp -p "$$dir/$$file" '$(distdir)'/$$file || exit 1; \
	done
	test -d '$(distdir)'/gnulib-lib || mkdir '$(distdir)'/gnulib-lib; cd gnulib-lib && $(MAKE) distdir distdir='$(distdir)'/gnulib-lib
	test -d '$(distdir)'/avcall || mkdir '$(distdir)'/avcall; cd avcall && $(MAKE) distdir distdir='$(distdir)'/avcall
	test -d '$(distdir)'/vacall || mkdir '$(distdir)'/vacall; cd vacall && $(MAKE) distdir distdir='$(distdir)'/vacall
	test -d '$(distdir)'/trampoline || mkdir '$(distdir)'/trampoline; cd trampoline && $(MAKE) distdir distdir='$(distdir)'/trampoline
	test -d '$(distdir)'/callback || mkdir '$(distdir)'/callback; cd callback && $(MAKE) distdir distdir='$(distdir)'/callback


# Creating a distribution tarball.
# Example: make dist VERSION=1.13-pre-20161227
PACKAGE = libffcall
VERSION = 1.13
TAR = tar
GZIP = gzip

dist : force
	tmpdistdir=$(PACKAGE)-$(VERSION); \
	abstmpdistdir=`pwd`/$$tmpdistdir; \
	rm -rf $$tmpdistdir $$tmpdistdir.tar $$tmpdistdir.tar.gz \
	  && mkdir $$tmpdistdir \
	  && $(MAKE) distdir distdir="$$abstmpdistdir" \
	  && $(TAR) chof $$tmpdistdir.tar --owner=root --group=root $$tmpdistdir \
	  && $(GZIP) -9 $$tmpdistdir.tar \
	  && rm -rf $$tmpdistdir


force :

