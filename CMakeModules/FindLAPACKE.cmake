# - Find the LAPACKE library
#
# Usage:
#   FIND_PACKAGE(LAPACKE [REQUIRED] [QUIET] )
#
# It sets the following variables:
#   LAPACK_FOUND               ... true if LAPACKE is found on the system
#   LAPACK_LIBRARIES           ... full path to LAPACKE library
#   LAPACK_INCLUDES            ... LAPACKE include directory
#

set(LAPACK_FOUND YES)
set(LAPACK_LIBRARIES /export/b02/ws15dgalvez/install-wav2letter/opt/lib/libopenblas.a)
set(LAPACK_INCLUDE_DIR /export/b02/ws15dgalvez/install-wav2letter/opt/include/openblas)

add_library(LAPACKE::LAPACKE UNKNOWN IMPORTED)
set_target_properties(LAPACKE::LAPACKE PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGE "C"
  IMPORTED_LOCATION "${LAPACK_LIBRARIES}"
  INTERFACE_INCLUDE_DIRECTORIES "${LAPACK_INCLUDE_DIR}"
  )
