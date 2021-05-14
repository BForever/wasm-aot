#project name
PROJECT(aot)
#head file path
INCLUDE_DIRECTORIES(
include
app
)
#source directory
AUX_SOURCE_DIRECTORY(src DIR_SRCS)
#set environment variable
SET(test
${DIR_SRCS}
)
#set extern libraries
# SET(LIBRARIES
# libm.so
# )
#add executable file
ADD_EXECUTABLE(../bin/test ${test})

