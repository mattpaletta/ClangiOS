set -eoux pipefail
mkdir -p build_host
pushd build_host
cmake -GXcode -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS=clang -DLLVM_TARGETS_TO_BUILD="Native" ..
cmake --build . --target clang-tblgen --target llvm-tblgen | xcpretty
popd
mkdir -p build
pushd build
cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/iOS_toolchain.cmake -DCMAKE_BUILD_TYPE=Release -GXcode -DLLVM_NATIVE_TOOL_DIR="$(pwd)/../build_host/third_party/llvm-project/llvm/Debug/bin" ..
xcodebuild build -scheme AppClangParse -sdk iphoneos | xcpretty
popd
