AC_PREREQ(2.52)

AC_INIT([apertium-fin], [0.0.0], [flammie@iki.fi])
AM_INIT_AUTOMAKE(no-define)
AC_PROG_LN_S
AC_PROG_AWK

m4_define([required_apertium_version], [3.3.0])
PKG_CHECK_MODULES(APERTIUM,   apertium >= required_apertium_version, [], [PKG_CHECK_MODULES(APERTIUM,   apertium-3.2 >= required_apertium_version)])
                          

PKG_CHECK_MODULES(HFST, hfst >= 3.4.0)

AC_ARG_ENABLE([hfst],
              [AS_HELP_STRING([--enable-hfst],
                              [use HFST to compile XEROX versions of stuffs @<:@default=yes@:>@])],
              [enable_hfst=$enableval], [enable_hfst=yes])
AM_CONDITIONAL([WANT_TRUE_APERTIUM], [test x$enable_hfst == xno])


AC_PATH_PROG([LTPRINT], [lt-print], [no])

AS_IF([test x$ac_cv_path_LTPRINT = x], 
      [AC_MSG_ERROR([You do not have lt-print installed.])])
AS_IF([test x$ac_cv_path_LTPRINT = xno,],
      [AC_MSG_ERROR([You do not have lt-print installed.])])

AC_PATH_PROG(CGCOMP, cg-comp, no)
AS_IF([test x$ac_cv_path_CGCOMP = xno],
      [AC_MSG_ERROR([You do not have cg-comp installed.])])
AS_IF([test x$ac_cv_path_CGPROC = xno],
      [AC_MSG_ERROR([You do not have cg-comp installed.])])

AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
AS_IF([test x$ac_cv_path_PKG_CONFIG = x],
      [AC_MSG_ERROR([You do not have pkg-config installed.])])
AS_IF([test x$ac_cv_path_PKG_CONFIG = xno],
      [AC_MSG_ERROR([You do not have pkg-config installed.])])


AP_MKINCLUDE

AC_OUTPUT([Makefile apertium-fin.pc])
