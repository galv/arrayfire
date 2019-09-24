# Using FindCBLAS.cmake from the following repo
# https://github.com/clementfarabet/THC/blob/master/COPYRIGHT.txt

# - Find CBLAS library
#
# This module finds an installed fortran library that implements the CBLAS
# linear-algebra interface (see http://www.netlib.org/blas/), with CBLAS
# interface.
#
# This module sets the following variables:
#  CBLAS_FOUND - set to true if a library implementing the CBLAS interface is found
#  CBLAS_LIBRARIES - list of libraries (using full path name) to link against to use CBLAS
#  CBLAS_INCLUDE_DIR - path to includes
#  CBLAS_INCLUDE_FILE - the file to be included to use CBLAS
#  MKL_BLAS_FOUND - set if MKL is found

set(CBLAS_FOUND YES)
set(CBLAS_LIBRARIES /export/b02/ws15dgalvez/install-wav2letter/opt/lib/libopenblas.a)
set(CBLAS_INCLUDE_DIR /export/b02/ws15dgalvez/install-wav2letter/opt/include/openblas)
set(CBLAS_INCLUDE_FILE cblas.h)
set(MKL_BLAS_FOUND NO)

MARK_AS_ADVANCED(
    CBLAS_INCLUDE_DIR
    CBLAS_INCLUDE_FILE
    CBLAS_LIBRARIES
    cblas_LIBRARY
    blas_LIBRARY)
