#include_directories(${ProdCons_SOURCE_DIR}/src)
#link_directories(${ProdCons_BINARY_DIR}/src)

ADD_LIBRARY(Shared shared)
ADD_EXECUTABLE(Consumer consumer)
ADD_EXECUTABLE(Producer producer)
TARGET_LINK_LIBRARIES(Consumer Shared)
TARGET_LINK_LIBRARIES(Producer Shared)