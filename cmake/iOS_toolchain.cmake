set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_DEPLOYMENT_TARGET 18.0)

set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development")

set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH[variant=Debug] YES)
set(CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH NO)
set(CMAKE_XCODE_ATTRIBUTE_SKIP_INSTALL YES)
set(CMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LANGUAGE_STANDARD c++20)
set(CMAKE_XCODE_ATTRIBUTE_CLANG_CXX_LIBRARY libc++)
set(CMAKE_XCODE_ATTRIBUTE_INSTALL_PATH /Library/Frameworks)
set(CMAKE_XCODE_ATTRIBUTE_DYLIB_INSTALL_NAME_BASE @rpath)

set(CMAKE_XCODE_ATTRIBUTE_DEAD_CODE_STRIPPING YES)
set(CMAKE_XCODE_ATTRIBUTE_LLVM_LTO[variant=Debug] YES_THIN)
set(CMAKE_XCODE_ATTRIBUTE_LLVM_LTO YES)

set(CMAKE_XCODE_ATTRIBUTE_ALLOW_TARGET_PLATFORM_SPECIALIZATION YES)
set(CMAKE_XCODE_ATTRIBUTE_SDKROOT auto)
set(CMAKE_XCODE_ATTRIBUTE_SUPPORTED_PLATFORMS "xrsimulator xros watchsimulator watchos macosx iphonesimulator iphoneos appletvsimulator appletvos")
set(CMAKE_XCODE_ATTRIBUTE_SUPPORTS_MACCATALYST YES)
