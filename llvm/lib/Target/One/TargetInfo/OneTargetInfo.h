#ifndef __CPU0_TARGETINFO_H__
#define __CPU0_TARGETINFO_H__

namespace llvm {
  
class Target;

Target &getTheOneTarget();

}

#endif // __CPU0_TARGETINFO_H__