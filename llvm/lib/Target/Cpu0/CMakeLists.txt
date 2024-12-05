add_llvm_component_group(Cpu0)

add_llvm_target(Cpu0CodeGen
    Cpu0TargetMachine.cpp

    LINK_COMPONENTS
    Support
    Cpu0Info
    Cpu0Desc
)

add_subdirectory(TargetInfo)
add_subdirectory(MCTargetDesc)