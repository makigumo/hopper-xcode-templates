//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___PACKAGENAMEASIDENTIFIER___Ctx.h"
#import "___PACKAGENAMEASIDENTIFIER___CPU.h"

@implementation ___PACKAGENAMEASIDENTIFIER___Ctx {
    ___PACKAGENAMEASIDENTIFIER___CPU *_cpu;
    NSObject<HPDisassembledFile> *_file;
}

- (instancetype)initWithCPU:(___PACKAGENAMEASIDENTIFIER___CPU *)cpu
                    andFile:(NSObject<HPDisassembledFile> *)file {
    if (self = [super init]) {
        _cpu = cpu;
        _file = file;
    }
    return self;
}

- (void)dealloc {
}

- (NSObject<CPUDefinition> *)cpuDefinition {
    return _cpu;
}

- (void)initDisasmStructure:(nonnull DisasmStruct*)disasm
            withSyntaxIndex:(NSUInteger)syntaxIndex {
    bzero(disasm, sizeof(DisasmStruct));
}

////////////////////////////////////////////////////////////////////////////////
//
// Analysis
//
////////////////////////////////////////////////////////////////////////////////

- (Address)adjustCodeAddress:(Address)address {
    return address;
}

- (uint8_t)cpuModeFromAddress:(Address)address {
    return 0;
}

- (BOOL)addressForcesACPUMode:(Address)address {
    return NO;
}

- (uint8_t)estimateCPUModeAtVirtualAddress:(Address)address {
    return 0;
}

- (Address)nextAddressToTryIfInstructionFailedToDecodeAt:(Address)address
                                              forCPUMode:(uint8_t)mode {
    return ((address & ~1) + 2);
}

- (int)isNopAt:(Address)address {
    uint16_t word = [_file readUInt16AtVirtualAddress:address];
    return (word == 0x4e71) ? 2 : 0;
}

- (BOOL)hasProcedurePrologAt:(Address)address {
    return NO;
}

- (NSUInteger)detectedPaddingLengthAt:(Address)address {
    NSUInteger len = 0;
    while ([_file readUInt16AtVirtualAddress:address] == 0) {
        address += 2;
        len += 2;
    }

    return len;
}

- (void)analysisBeginsAt:(Address)entryPoint {
}

- (void)analysisEnded {
}

- (void)procedureAnalysisBeginsForProcedure:(nonnull NSObject<HPProcedure> *)procedure
                               atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisOfPrologForProcedure:(nonnull NSObject<HPProcedure> *)procedure
                                 atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisOfEpilogForProcedure:(nonnull NSObject<HPProcedure> *)procedure
                                 atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisEndedForProcedure:(nonnull NSObject<HPProcedure> *)procedure
                              atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisContinuesOnBasicBlock:(nonnull NSObject<HPBasicBlock> *)basicBlock {
}

- (void)resetDisassembler {
}

- (uint8_t)estimateCPUModeAtVirtualAddress:(Address)address {
    return 0;
}

- (BOOL)instructionConditionsCPUModeAtTargetAddress:(DisasmStruct *)disasmStruct resultCPUMode:(uint8_t *)cpuMode {
    return NO;
}

- (int)disassembleSingleInstruction:(nonnull DisasmStruct *)disasm 
                 usingProcessorMode:(NSUInteger)mode {
    if (disasm->bytes == NULL)
        return DISASM_UNKNOWN_OPCODE;

    // clear possible artefacts
    disasm->instruction.branchType = DISASM_BRANCH_NONE;
    disasm->instruction.addressValue = 0;
    disasm->instruction.pcRegisterValue = disasm->virtualAddr + insn->size;

    // should return instruction size
    return DISASM_UNKNOWN_OPCODE;
}

- (BOOL)instructionHaltsExecutionFlow:(nonnull DisasmStruct *)disasm {
    return NO;
}

- (void)performProcedureAnalysis:(nonnull NSObject<HPProcedure> *)procedure
                      basicBlock:(nonnull NSObject<HPBasicBlock> *)basicBlock
                          disasm:(nonnull DisasmStruct *)disasm {
}

- (void)updateProcedureAnalysis:(nonnull DisasmStruct *)disasm {
}

- (void)updateProcedureAnalysis:(DisasmStruct *)disasm {
}


- (BOOL)instructionCanBeUsedToExtractDirectMemoryReferences:(nonnull DisasmStruct *)disasmStruct {
    return YES;
}

- (BOOL)instructionOnlyLoadsAddress:(nonnull DisasmStruct *)disasmStruct {
    return NO;
}

- (BOOL)instructionManipulatesFloat:(nonnull DisasmStruct *)disasmStruct {
    return NO;
}

- (uint8_t)cpuModeForNextInstruction:(nonnull DisasmStruct *)disasmStruct {
    return 0;
}

- (BOOL)instructionMayBeASwitchStatement:(nonnull DisasmStruct *)disasmStruct {
    return NO;
}

- (void)performBranchesAnalysis:(nonnull DisasmStruct *)disasm
           computingNextAddress:(nonnull Address *)next
                    andBranches:(nonnull NSMutableArray<NSNumber *> *)branches
                   forProcedure:(nonnull NSObject<HPProcedure> *)procedure
                     basicBlock:(nonnull NSObject<HPBasicBlock> *)basicBlock
                      ofSegment:(nonnull NSObject<HPSegment> *)segment
                calledAddresses:(nonnull NSMutableArray<NSObject<HPCallDestination> *> *)calledAddresses
                      callsites:(nonnull NSMutableArray<NSNumber *> *)callSitesAddresses {
}

- (void)performInstructionSpecificAnalysis:(nonnull DisasmStruct *)disasm 
                              forProcedure:(nonnull NSObject<HPProcedure> *)procedure
                                 inSegment:(nonnull NSObject<HPSegment> *)segment {
}

- (Address)getThunkDestinationForInstructionAt:(Address)address {
    return BAD_ADDRESS;
}

////////////////////////////////////////////////////////////////////////////////
//
// Printing instruction
//
////////////////////////////////////////////////////////////////////////////////


- (NSObject<HPASMLine> *)buildMnemonicString:(nonnull DisasmStruct *)disasm
                                      inFile:(nonnull NSObject<HPDisassembledFile> *)file {
    NSObject<HPHopperServices> *services = _cpu.hopperServices;
    NSObject<HPASMLine> *line = [services blankASMLine];
    [line appendMnemonic:@(disasm->instruction.mnemonic)];
    return line;
}

- (NSObject<HPASMLine> *)buildOperandString:(nonnull DisasmStruct *)disasm
                            forOperandIndex:(NSUInteger)operandIndex
                                     inFile:(nonnull NSObject<HPDisassembledFile> *)file
                                        raw:(BOOL)raw {
    if (operandIndex >= DISASM_MAX_OPERANDS)
        return nil;
    DisasmOperand *operand = disasm->operand + operandIndex;
    if (operand->type == DISASM_OPERAND_NO_OPERAND)
        return nil;

    // Get the format requested by the user
    ArgFormat format = [file formatForArgument:operandIndex atVirtualAddress:disasm->virtualAddr];

    NSObject<HPHopperServices> *services = _cpu.hopperServices;

    NSObject<HPASMLine> *line = [services blankASMLine];

    // Put your code here

    // Set format so that changes show up in sidebar
    [file setFormat:format forArgument:operandIndex atVirtualAddress:disasm->virtualAddr];
    [line setIsOperand:operandIndex startingAtIndex:0];

    return line;
}

- (NSObject<HPASMLine> *)buildCompleteOperandString:(nonnull DisasmStruct *)disasm
                                             inFile:(nonnull NSObject<HPDisassembledFile> *)file
                                                raw:(BOOL)raw {
    NSObject<HPHopperServices> *services = _cpu.hopperServices;

    NSObject<HPASMLine> *line = [services blankASMLine];

    for (int op_index = 0; op_index <= DISASM_MAX_OPERANDS; op_index++) {
        NSObject<HPASMLine> *part = [self buildOperandString:disasm forOperandIndex:op_index inFile:file raw:raw];
        if (part == nil)
            break;
        if (op_index)
            [line appendRawString:@", "];
        [line append:part];
    }

    return line;
}

////////////////////////////////////////////////////////////////////////////////
//
// Decompiler
//
////////////////////////////////////////////////////////////////////////////////

- (BOOL)canDecompileProcedure:(nonnull NSObject<HPProcedure> *)procedure {
    return NO;
}

- (Address)skipHeader:(nonnull NSObject<HPBasicBlock> *)basicBlock
          ofProcedure:(nonnull NSObject<HPProcedure> *)procedure {
    return basicBlock.from;
}

- (Address)skipFooter:(nonnull NSObject<HPBasicBlock> *)basicBlock
          ofProcedure:(nonnull NSObject<HPProcedure> *)procedure {
    return basicBlock.to;
}

- (ASTNode *)decompileInstructionAtAddress:(Address)a
                                    disasm:(nonnull DisasmStruct *)d
                                 addNode_p:(nonnull BOOL *)addNode_p
                           usingDecompiler:(nonnull Decompiler *)decompiler {
    return nil;
}

////////////////////////////////////////////////////////////////////////////////
//
// Assembler
//
////////////////////////////////////////////////////////////////////////////////

- (nonnull NSData *)assembleRawInstruction:(nonnull NSString *)instr
                                 atAddress:(Address)addr 
                                   forFile:(nonnull NSObject<HPDisassembledFile> *)file 
                               withCPUMode:(uint8_t)cpuMode 
                        usingSyntaxVariant:(NSUInteger)syntax 
                                     error:(NSError * _Nullable * _Nullable)error;
 {
    return nil;
}

@end
