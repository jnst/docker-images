FROM grpc/cxx

ARG SRC_DIR=./protobuf
ARG DEST_DIR=./codegen
ARG TARGET_FILES=${SRC_DIR}/*.proto

WORKDIR /workspace
COPY ${SRC_DIR} /workspace/protobuf

RUN mkdir ${DEST_DIR} \
  && protoc \
    --proto_path=${SRC_DIR} \
    --grpc_out=${DEST_DIR} --plugin=protoc-gen-grpc=`which grpc_cpp_plugin` \
    ${TARGET_FILES} \
  && protoc \
    --proto_path=${SRC_DIR} \
    --cpp_out=${DEST_DIR} \
    ${TARGET_FILES}
