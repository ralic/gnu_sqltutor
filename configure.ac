#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
AC_PREREQ(2.65)
AC_INIT([sqltutor], [0.7], [cepek@gnu.org])
AC_CONFIG_SRCDIR([cgi.cpp/sqltutor.cpp])
AC_CONFIG_HEADER([config.h])
AC_CONFIG_AUX_DIR([config.aux])

AM_INIT_AUTOMAKE

# Output variables for the SQLtutor database
AC_SUBST([SQLTUTOR_DATABASE], [sqltutor])
AC_SUBST([SQLTUTOR_WWW_USER], [sqlquiz])
AC_SUBST([SQLTUTOR_PASSWORD], [sqlkrok])
AC_SUBST([SQLTUTOR_WWW_EXEC], [sqlexec])
AC_SUBST([SQLTUTOR_PASSEXEC], [sqlkrok])

AC_DEFINE_UNQUOTED([SQLTUTOR_DATABASE], [$SQLTUTOR_DATABASE], [SQLtutor database name])
AC_DEFINE_UNQUOTED([SQLTUTOR_WWW_USER], [$SQLTUTOR_WWW_USER], [SQLtutor web/cgi user name])
AC_DEFINE_UNQUOTED([SQLTUTOR_PASSWORD], [$SQLTUTOR_PASSWORD], [SQLtutor web/cgi user password])
AC_DEFINE_UNQUOTED([SQLTUTOR_WWW_EXEC], [$SQLTUTOR_WWW_EXEC], [SQLtutor user/sql user name])
AC_DEFINE_UNQUOTED([SQLTUTOR_PASSEXEC], [$SQLTUTOR_PASSEXEC], [SQLtutor user/sql user password])

# Checks for programs.
AC_PROG_AWK
AC_PROG_CXX
AC_PROG_CC
AC_PROG_CPP
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_RANLIB

# Checks for libraries.
AC_CHECK_LIB([pqxx], [main])

PKG_CHECK_MODULES([LIBPQXX], [libpqxx >= 3.0.2])
AC_SUBST(LIBPQXX_CFLAGS)
AC_SUBST(LIBPQXX_LIBS)

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STAT
AC_HEADER_STDBOOL
AC_C_CONST
AC_C_INLINE
AC_TYPE_OFF_T
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_MEMCMP
AC_FUNC_MMAP
AC_FUNC_REALLOC
AC_FUNC_SETVBUF_REVERSED
AC_CHECK_FUNCS([memmove memset munmap pow sqrt])

AC_OUTPUT([Makefile 
           cgi.cpp/Makefile
           database/Makefile
           doc/Makefile
          ])
