#include "llvm/MC/TargetRegistry.h"
#include "TargetInfo/OneTargetInfo.h"
 
using namespace llvm;

Target &llvm::getTheOneTarget() {
  static Target TheOneTarget;
  return TheOneTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeOneTargetInfo() {
  RegisterTarget<Triple::one,
                  /*HasJIT=*/true>
        X(getTheOneTarget(), "one", "ONE (32-bit big endian)", "One");

}