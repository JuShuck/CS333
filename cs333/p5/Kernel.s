! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41712
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_224:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_223:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_222:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_221:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_220:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_219:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_218:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_217:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_216:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_215:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_214:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_213:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_212:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_211:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_210:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_209:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_208:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_207:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_206:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_205:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_204:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_203:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_202:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_201:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_200:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_199:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_198:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_197:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_196:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_195:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_194:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_193:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_192:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_191:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_190:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_189:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_188:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_187:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_186:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_185:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_184:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_183:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_182:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_181:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_180:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_179:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_178:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_177:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_176:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_175:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_174:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_173:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_172:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_171:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_170:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_169:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_168:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_167:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_166:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_165:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_163:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_162:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_160:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_159:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_158:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_157:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_156:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_155:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_153:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_152:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_151:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_150:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_149:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_148:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_147:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_146:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_145:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_144:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_143:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_142:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_141:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_138:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_137:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_136:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_135:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_134:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_133:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_132:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_131:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_130:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_129:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_128:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_127:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_126:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_123:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_122:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_121:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_120:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_119:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_118:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_117:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_116:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_115:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_114:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_113:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_112:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_111:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_110:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_109:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_108:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_104:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_103:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_102:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_101:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_100:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_99:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_98:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_97:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_96:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_95:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_94:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_91:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_90:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_89:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_88:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_87:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_86:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_85:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_83:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_82:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_81:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_80:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_79:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_77:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_76:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_75:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_74:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_73:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_72:
	.word	10			! length
	.ascii	"fileDes = "
	.align
_StringConst_71:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_70:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_69:
	.word	17			! length
	.ascii	"\nnewCurrentPos = "
	.align
_StringConst_68:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_67:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	15			! length
	.ascii	"\nsizeInBytes = "
	.align
_StringConst_64:
	.word	23			! length
	.ascii	"\nvirt addr of buffer = "
	.align
_StringConst_63:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	15			! length
	.ascii	"\nsizeInBytes = "
	.align
_StringConst_59:
	.word	23			! length
	.ascii	"\nvirt addr of buffer = "
	.align
_StringConst_58:
	.word	38			! length
	.ascii	"Handle_Sys_Read invoked! \n fileDesc = "
	.align
_StringConst_57:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_55:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_54:
	.word	33			! length
	.ascii	"Handle_Sys_Open called invoked! \n"
	.align
_StringConst_53:
	.word	43			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Open"
	.align
_StringConst_52:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_51:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_49:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_48:
	.word	45			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Create"
	.align
_StringConst_47:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"Handle_Sys_Fork invoked! \n"
	.align
_StringConst_43:
	.word	27			! length
	.ascii	"Handle_Sys_Yield invoked! \n"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_39:
	.word	25			! length
	.ascii	"Handle_sys_Exit invoked!\n"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	34			! length
	.ascii	"ERROR: Cannot open \'TestProgram1\'."
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	17			! length
	.ascii	"UserProgramThread"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xd65278d8,r4		! myHashVal = -699238184
	cmp	r3,r4
	be	_Label_234
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_234:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_235
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_235
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_235
_Label_235:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_236 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3056:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3056
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_240 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_241 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   _temp_242 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_243 = _temp_242 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_243 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3057:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3057
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_245 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_246 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_247 = _function_233_IdleFunction
	set	_function_233_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_248 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_249
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-24
	.word	4
	.word	_Label_254
	.word	-28
	.word	4
	.word	_Label_255
	.word	-32
	.word	4
	.word	_Label_256
	.word	-36
	.word	4
	.word	_Label_257
	.word	-40
	.word	4
	.word	_Label_258
	.word	-44
	.word	4
	.word	_Label_259
	.word	-48
	.word	4
	.word	_Label_260
	.word	-52
	.word	4
	.word	_Label_261
	.word	-56
	.word	4
	.word	_Label_262
	.word	-60
	.word	4
	.word	0
_Label_249:
	.ascii	"InitializeScheduler\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_233_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_233_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_263:
!	jmp	_Label_264
_Label_264:
	mov	44,r13		! source line 44
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0IF",r10
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_266 else goto _Label_267
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_267
	jmp	_Label_266
_Label_266:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_269
_Label_267:
! ELSE...
	mov	49,r13		! source line 49
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_269:
! END WHILE...
	jmp	_Label_263
_Label_265:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_233_IdleFunction:
	.word	_sourceFileName
	.word	_Label_270
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_271
	.word	8
	.word	4
	.word	_Label_272
	.word	-12
	.word	4
	.word	_Label_273
	.word	-16
	.word	4
	.word	0
_Label_270:
	.ascii	"IdleFunction\0"
	.align
_Label_271:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_273:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_276 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_276 ) then goto _Label_275		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_275
!	jmp	_Label_274
_Label_274:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_278 [0 ] into _temp_279
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_277 = _temp_279		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_275:
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_280 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_280 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_281:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_285 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_284  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_284 then goto _Label_283 else goto _Label_282
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_282
	jmp	_Label_283
_Label_282:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_287 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_281
_Label_283:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_290 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_290 ) then goto _Label_289		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_289
!	jmp	_Label_288
_Label_288:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_292 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_292 [0 ] into _temp_293
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_291 = _temp_293		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_294 = *_temp_295  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_294) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _temp_294 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_289:
! RETURN STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_297
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_298
	.word	8
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	_Label_300
	.word	-20
	.word	4
	.word	_Label_301
	.word	-24
	.word	4
	.word	_Label_302
	.word	-28
	.word	4
	.word	_Label_303
	.word	-32
	.word	4
	.word	_Label_304
	.word	-36
	.word	4
	.word	_Label_305
	.word	-40
	.word	4
	.word	_Label_306
	.word	-44
	.word	4
	.word	_Label_307
	.word	-48
	.word	4
	.word	_Label_308
	.word	-52
	.word	4
	.word	_Label_309
	.word	-9
	.word	1
	.word	_Label_310
	.word	-56
	.word	4
	.word	_Label_311
	.word	-60
	.word	4
	.word	_Label_312
	.word	-64
	.word	4
	.word	_Label_313
	.word	-68
	.word	4
	.word	_Label_314
	.word	-72
	.word	4
	.word	_Label_315
	.word	-76
	.word	4
	.word	_Label_316
	.word	-80
	.word	4
	.word	0
_Label_297:
	.ascii	"Run\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_309:
	.byte	'C'
	.ascii	"_temp_284\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_316:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_317 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_318 = _function_232_ThreadPrintShort
	set	_function_232_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_319 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_318  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_320
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_321
	.word	-12
	.word	4
	.word	_Label_322
	.word	-16
	.word	4
	.word	_Label_323
	.word	-20
	.word	4
	.word	_Label_324
	.word	-24
	.word	4
	.word	0
_Label_320:
	.ascii	"PrintReadyList\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_324:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	114,r13		! source line 114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_325  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_326 = *_temp_327  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_328 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	130,r13		! source line 130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_330
	.word	-12
	.word	4
	.word	_Label_331
	.word	-16
	.word	4
	.word	_Label_332
	.word	-20
	.word	4
	.word	_Label_333
	.word	-24
	.word	4
	.word	_Label_334
	.word	-28
	.word	4
	.word	_Label_335
	.word	-32
	.word	4
	.word	0
_Label_329:
	.ascii	"ThreadStartMain\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	135,r13		! source line 135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_336 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_337 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	153,r13		! source line 153
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_339
	.word	-12
	.word	4
	.word	_Label_340
	.word	-16
	.word	4
	.word	_Label_341
	.word	-20
	.word	4
	.word	0
_Label_338:
	.ascii	"ThreadFinish\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	158,r13		! source line 158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_342 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_344		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_344
!	jmp	_Label_343
_Label_343:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_346 = *_temp_347  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_344:
! CALL STATEMENT...
!   _temp_348 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_349 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_350 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_351
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_352
	.word	8
	.word	4
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	_Label_356
	.word	-24
	.word	4
	.word	_Label_357
	.word	-28
	.word	4
	.word	_Label_358
	.word	-32
	.word	4
	.word	_Label_359
	.word	-36
	.word	4
	.word	_Label_360
	.word	-40
	.word	4
	.word	0
_Label_351:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_352:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_360:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	181,r13		! source line 181
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_362		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_362
!	jmp	_Label_361
_Label_361:
! THEN...
	mov	197,r13		! source line 197
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_363
_Label_362:
! ELSE...
	mov	200,r13		! source line 200
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_363:
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_364
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_365
	.word	8
	.word	4
	.word	_Label_366
	.word	-12
	.word	4
	.word	0
_Label_364:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_365:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_232_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_232_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	642,r13		! source line 642
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_370
!   _temp_369 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_371
_Label_370:
!   _temp_369 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_371:
!   if _temp_369 then goto _Label_368 else goto _Label_367
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_367
	jmp	_Label_368
_Label_367:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_372 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_368:
! CALL STATEMENT...
!   _temp_373 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_375 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_374 = *_temp_375  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	657,r13		! source line 657
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_385 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_384 = *_temp_385  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_379
	cmp	r1,2
	be	_Label_380
	cmp	r1,3
	be	_Label_381
	cmp	r1,4
	be	_Label_382
	cmp	r1,5
	be	_Label_383
	jmp	_Label_377
! CASE 1...
_Label_379:
! CALL STATEMENT...
!   _temp_386 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 2...
_Label_380:
! CALL STATEMENT...
!   _temp_387 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 3...
_Label_381:
! CALL STATEMENT...
!   _temp_388 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 4...
_Label_382:
! CALL STATEMENT...
!   _temp_389 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_378
! CASE 5...
_Label_383:
! CALL STATEMENT...
!   _temp_390 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_378
! DEFAULT CASE...
_Label_377:
! CALL STATEMENT...
!   _temp_391 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_391  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	674,r13		! source line 674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_378:
! CALL STATEMENT...
!   _temp_392 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_393 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_394 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_232_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_395
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_396
	.word	8
	.word	4
	.word	_Label_397
	.word	-16
	.word	4
	.word	_Label_398
	.word	-20
	.word	4
	.word	_Label_399
	.word	-24
	.word	4
	.word	_Label_400
	.word	-28
	.word	4
	.word	_Label_401
	.word	-32
	.word	4
	.word	_Label_402
	.word	-36
	.word	4
	.word	_Label_403
	.word	-40
	.word	4
	.word	_Label_404
	.word	-44
	.word	4
	.word	_Label_405
	.word	-48
	.word	4
	.word	_Label_406
	.word	-52
	.word	4
	.word	_Label_407
	.word	-56
	.word	4
	.word	_Label_408
	.word	-60
	.word	4
	.word	_Label_409
	.word	-64
	.word	4
	.word	_Label_410
	.word	-68
	.word	4
	.word	_Label_411
	.word	-72
	.word	4
	.word	_Label_412
	.word	-76
	.word	4
	.word	_Label_413
	.word	-9
	.word	1
	.word	_Label_414
	.word	-80
	.word	4
	.word	0
_Label_395:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_396:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_413:
	.byte	'C'
	.ascii	"_temp_369\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_231_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_231_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1008,r13		! source line 1008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_415 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_415  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_231_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	0
_Label_416:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1018,r13		! source line 1018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_419 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1024,r13		! source line 1024
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_420
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_421
	.word	8
	.word	4
	.word	_Label_422
	.word	-12
	.word	4
	.word	0
_Label_420:
	.ascii	"ProcessFinish\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_423 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_424 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_424  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_425 = _function_230_StartUserProcess
	set	_function_230_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_425  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_426
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_427
	.word	-12
	.word	4
	.word	_Label_428
	.word	-16
	.word	4
	.word	_Label_429
	.word	-20
	.word	4
	.word	_Label_430
	.word	-24
	.word	4
	.word	0
_Label_426:
	.ascii	"InitFirstProcess\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"ptrThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_230_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_230_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1042,r13		! source line 1042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_431 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrToPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = ptrToPCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_432 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_433 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_433 = ptrToPCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
	mov	1065,r13		! source line 1065
	mov	"\0\0SE",r10
!   _temp_434 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_435 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_436
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_436
	jmp	_Label_437
_Label_436:
! THEN...
	mov	1067,r13		! source line 1067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_438 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1067,r13		! source line 1067
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_437:
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_439 = _temp_440		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_441 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=ptrOpenFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_444 = _temp_443 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_442 = *_temp_444  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_442 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_445 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_445 [999 ] into _temp_446
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   ptrInitSystemStackTop = _temp_446		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_448 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_449 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_449  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_230_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_450
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_451
	.word	8
	.word	4
	.word	_Label_452
	.word	-12
	.word	4
	.word	_Label_453
	.word	-16
	.word	4
	.word	_Label_454
	.word	-20
	.word	4
	.word	_Label_455
	.word	-24
	.word	4
	.word	_Label_456
	.word	-28
	.word	4
	.word	_Label_457
	.word	-32
	.word	4
	.word	_Label_458
	.word	-36
	.word	4
	.word	_Label_459
	.word	-40
	.word	4
	.word	_Label_460
	.word	-44
	.word	4
	.word	_Label_461
	.word	-48
	.word	4
	.word	_Label_462
	.word	-52
	.word	4
	.word	_Label_463
	.word	-56
	.word	4
	.word	_Label_464
	.word	-60
	.word	4
	.word	_Label_465
	.word	-64
	.word	4
	.word	_Label_466
	.word	-68
	.word	4
	.word	_Label_467
	.word	-72
	.word	4
	.word	_Label_468
	.word	-76
	.word	4
	.word	_Label_469
	.word	-80
	.word	4
	.word	_Label_470
	.word	-84
	.word	4
	.word	_Label_471
	.word	-88
	.word	4
	.word	_Label_472
	.word	-92
	.word	4
	.word	_Label_473
	.word	-96
	.word	4
	.word	_Label_474
	.word	-100
	.word	4
	.word	0
_Label_450:
	.ascii	"StartUserProcess\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_469:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_470:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_471:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_472:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_473:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_474:
	.byte	'I'
	.ascii	"previousStatus\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_475
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_475:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1617,r13		! source line 1617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0IF",r10
!   _temp_479 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_480 = _temp_479 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_478 = *_temp_480  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_478 == 0 then goto _Label_477		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_477
!	jmp	_Label_476
_Label_476:
! THEN...
	mov	1632,r13		! source line 1632
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0SE",r10
!   _temp_482 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_483 = _temp_482 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_481 = *_temp_483  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_481) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_477:
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_484
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_485
	.word	-12
	.word	4
	.word	_Label_486
	.word	-16
	.word	4
	.word	_Label_487
	.word	-20
	.word	4
	.word	_Label_488
	.word	-24
	.word	4
	.word	_Label_489
	.word	-28
	.word	4
	.word	_Label_490
	.word	-32
	.word	4
	.word	0
_Label_484:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1640,r13		! source line 1640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_491
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_491:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1654,r13		! source line 1654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_492 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_493
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_494
	.word	-12
	.word	4
	.word	0
_Label_493:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1666,r13		! source line 1666
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_495 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_496
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_497
	.word	-12
	.word	4
	.word	0
_Label_496:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1678,r13		! source line 1678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_498 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_499
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_500
	.word	-12
	.word	4
	.word	0
_Label_499:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_501 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_502
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_503
	.word	-12
	.word	4
	.word	0
_Label_502:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1702,r13		! source line 1702
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_504 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_505
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_506
	.word	-12
	.word	4
	.word	0
_Label_505:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1714,r13		! source line 1714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_507 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_508
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_509
	.word	-12
	.word	4
	.word	0
_Label_508:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1732,r13		! source line 1732
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_510 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1733,r13		! source line 1733
	mov	"\0\0CA",r10
	call	_function_229_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_229_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_229_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1738,r13		! source line 1738
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_513 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_514 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1748,r13		! source line 1748
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_518 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_517 = *_temp_518  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_517 == 0 then goto _Label_516		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_516
!	jmp	_Label_515
_Label_515:
! THEN...
	mov	1749,r13		! source line 1749
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_520 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_519 = *_temp_520  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_519) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_521
_Label_516:
! ELSE...
	mov	1751,r13		! source line 1751
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_522 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_521:
! SEND STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_229_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_523
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_524
	.word	8
	.word	4
	.word	_Label_525
	.word	-12
	.word	4
	.word	_Label_526
	.word	-16
	.word	4
	.word	_Label_527
	.word	-20
	.word	4
	.word	_Label_528
	.word	-24
	.word	4
	.word	_Label_529
	.word	-28
	.word	4
	.word	_Label_530
	.word	-32
	.word	4
	.word	_Label_531
	.word	-36
	.word	4
	.word	0
_Label_523:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_524:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1764,r13		! source line 1764
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1785,r13		! source line 1785
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3081
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_532
_Label_3081:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_532
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_532
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_546,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_546:
	jmp	_Label_538	! 1:	
	jmp	_Label_545	! 2:	
	jmp	_Label_535	! 3:	
	jmp	_Label_534	! 4:	
	jmp	_Label_537	! 5:	
	jmp	_Label_536	! 6:	
	jmp	_Label_539	! 7:	
	jmp	_Label_540	! 8:	
	jmp	_Label_541	! 9:	
	jmp	_Label_542	! 10:	
	jmp	_Label_543	! 11:	
	jmp	_Label_544	! 12:	
! CASE 4...
_Label_534:
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_535:
! CALL STATEMENT...
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_536:
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_537:
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_538:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_539:
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_550  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_550  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_540:
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_551  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_551  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_541:
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_552  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_552  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_542:
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_553  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_553  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_543:
! RETURN STATEMENT...
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_554  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_554  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_544:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_545:
! CALL STATEMENT...
!   Call the function
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_532:
! CALL STATEMENT...
!   _temp_555 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1817,r13		! source line 1817
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_556 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1818,r13		! source line 1818
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_533:
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_557
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	12
	.word	4
	.word	_Label_560
	.word	16
	.word	4
	.word	_Label_561
	.word	20
	.word	4
	.word	_Label_562
	.word	24
	.word	4
	.word	_Label_563
	.word	-12
	.word	4
	.word	_Label_564
	.word	-16
	.word	4
	.word	_Label_565
	.word	-20
	.word	4
	.word	_Label_566
	.word	-24
	.word	4
	.word	_Label_567
	.word	-28
	.word	4
	.word	_Label_568
	.word	-32
	.word	4
	.word	_Label_569
	.word	-36
	.word	4
	.word	_Label_570
	.word	-40
	.word	4
	.word	_Label_571
	.word	-44
	.word	4
	.word	_Label_572
	.word	-48
	.word	4
	.word	0
_Label_557:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_559:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_560:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_561:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	4,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1825,r13		! source line 1825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_573 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_574 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_575 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_576
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_577
	.word	8
	.word	4
	.word	_Label_578
	.word	-12
	.word	4
	.word	_Label_579
	.word	-16
	.word	4
	.word	_Label_580
	.word	-20
	.word	4
	.word	0
_Label_576:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1836,r13		! source line 1836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_581 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1838,r13		! source line 1838
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_582
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_583
	.word	-12
	.word	4
	.word	0
_Label_582:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_584 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1845,r13		! source line 1845
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_585
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_586
	.word	-12
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_587 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1853,r13		! source line 1853
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_588
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_589
	.word	-12
	.word	4
	.word	0
_Label_588:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	4,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1859,r13		! source line 1859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_590 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_591 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_592 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_593
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_594
	.word	8
	.word	4
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-20
	.word	4
	.word	0
_Label_593:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_594:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	63,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1870,r13		! source line 1870
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3088:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3088
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_599 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_600  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0AS",r10
	mov	1898,r13		! source line 1898
	mov	"\0\0SE",r10
!   _temp_601 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_602 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_601  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_602  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_605		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_605
!	jmp	_Label_604
_Label_604:
! THEN...
	mov	1900,r13		! source line 1900
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_605:
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_606 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_607 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_606  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrOpenFile2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile2) then goto _Label_608
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_608
	jmp	_Label_609
_Label_608:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_609:
! ASSIGNMENT STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0AS",r10
	mov	1915,r13		! source line 1915
	mov	"\0\0SE",r10
!   _temp_610 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_610  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_612		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_612
!	jmp	_Label_611
_Label_611:
! THEN...
	mov	1917,r13		! source line 1917
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_612:
! ASSIGNMENT STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_613 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3089:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3089
! SEND STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0SE",r10
!   _temp_614 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=ptrOpenFile2  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_616 = *_temp_617  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_616) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_618 = _temp_616 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_615 = _temp_618		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_619 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_615  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0AS",r10
!   _temp_621 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_622 = _temp_621 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_620 = *_temp_622  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_620 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_623 [999 ] into _temp_624
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   ptrInitSystemStackTop = _temp_624		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_625 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_626 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_626  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1929,r13		! source line 1929
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_627
	.word	4		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_628
	.word	8
	.word	4
	.word	_Label_629
	.word	-12
	.word	4
	.word	_Label_630
	.word	-16
	.word	4
	.word	_Label_631
	.word	-20
	.word	4
	.word	_Label_632
	.word	-24
	.word	4
	.word	_Label_633
	.word	-28
	.word	4
	.word	_Label_634
	.word	-32
	.word	4
	.word	_Label_635
	.word	-36
	.word	4
	.word	_Label_636
	.word	-40
	.word	4
	.word	_Label_637
	.word	-44
	.word	4
	.word	_Label_638
	.word	-48
	.word	4
	.word	_Label_639
	.word	-52
	.word	4
	.word	_Label_640
	.word	-56
	.word	4
	.word	_Label_641
	.word	-60
	.word	4
	.word	_Label_642
	.word	-64
	.word	4
	.word	_Label_643
	.word	-68
	.word	4
	.word	_Label_644
	.word	-72
	.word	4
	.word	_Label_645
	.word	-76
	.word	4
	.word	_Label_646
	.word	-80
	.word	4
	.word	_Label_647
	.word	-84
	.word	4
	.word	_Label_648
	.word	-88
	.word	4
	.word	_Label_649
	.word	-92
	.word	4
	.word	_Label_650
	.word	-96
	.word	4
	.word	_Label_651
	.word	-100
	.word	4
	.word	_Label_652
	.word	-104
	.word	4
	.word	_Label_653
	.word	-196
	.word	92
	.word	_Label_654
	.word	-220
	.word	24
	.word	_Label_655
	.word	-224
	.word	4
	.word	_Label_656
	.word	-228
	.word	4
	.word	_Label_657
	.word	-232
	.word	4
	.word	_Label_658
	.word	-236
	.word	4
	.word	_Label_659
	.word	-240
	.word	4
	.word	_Label_660
	.word	-244
	.word	4
	.word	0
_Label_627:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_652:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
	.align
_Label_653:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_654:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_655:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_659:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"previousStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	23,r1
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
	mov	1940,r13		! source line 1940
	mov	"\0\0SE",r10
!   _temp_661 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_662 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_663 = *_temp_664  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_663) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = _temp_663 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_661  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_662  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_667		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	1944,r13		! source line 1944
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_668 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1944,r13		! source line 1944
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_667:
! CALL STATEMENT...
!   _temp_669 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_670 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   _temp_671 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_672 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_673 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CA",r10
	call	_function_228_printString
! CALL STATEMENT...
!   _temp_674 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_675
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_676
	.word	8
	.word	4
	.word	_Label_677
	.word	-12
	.word	4
	.word	_Label_678
	.word	-16
	.word	4
	.word	_Label_679
	.word	-20
	.word	4
	.word	_Label_680
	.word	-24
	.word	4
	.word	_Label_681
	.word	-28
	.word	4
	.word	_Label_682
	.word	-32
	.word	4
	.word	_Label_683
	.word	-36
	.word	4
	.word	_Label_684
	.word	-40
	.word	4
	.word	_Label_685
	.word	-44
	.word	4
	.word	_Label_686
	.word	-48
	.word	4
	.word	_Label_687
	.word	-52
	.word	4
	.word	_Label_688
	.word	-56
	.word	4
	.word	_Label_689
	.word	-80
	.word	24
	.word	_Label_690
	.word	-84
	.word	4
	.word	0
_Label_675:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_676:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_689:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	23,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1956,r13		! source line 1956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   _temp_691 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_692 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_693 = *_temp_694  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_693) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_695 = _temp_693 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_691  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_692  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_697		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_697
!	jmp	_Label_696
_Label_696:
! THEN...
	mov	1965,r13		! source line 1965
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_698 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1965,r13		! source line 1965
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_697:
! CALL STATEMENT...
!   _temp_699 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_700 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   _temp_701 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_701  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_702 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_function_228_printString
! CALL STATEMENT...
!   _temp_704 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1973,r13		! source line 1973
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_705
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_706
	.word	8
	.word	4
	.word	_Label_707
	.word	-12
	.word	4
	.word	_Label_708
	.word	-16
	.word	4
	.word	_Label_709
	.word	-20
	.word	4
	.word	_Label_710
	.word	-24
	.word	4
	.word	_Label_711
	.word	-28
	.word	4
	.word	_Label_712
	.word	-32
	.word	4
	.word	_Label_713
	.word	-36
	.word	4
	.word	_Label_714
	.word	-40
	.word	4
	.word	_Label_715
	.word	-44
	.word	4
	.word	_Label_716
	.word	-48
	.word	4
	.word	_Label_717
	.word	-52
	.word	4
	.word	_Label_718
	.word	-56
	.word	4
	.word	_Label_719
	.word	-80
	.word	24
	.word	_Label_720
	.word	-84
	.word	4
	.word	0
_Label_705:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_706:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_719:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1978,r13		! source line 1978
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_721 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_722 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_723 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_724 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_725 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_726
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_727
	.word	8
	.word	4
	.word	_Label_728
	.word	12
	.word	4
	.word	_Label_729
	.word	16
	.word	4
	.word	_Label_730
	.word	-12
	.word	4
	.word	_Label_731
	.word	-16
	.word	4
	.word	_Label_732
	.word	-20
	.word	4
	.word	_Label_733
	.word	-24
	.word	4
	.word	_Label_734
	.word	-28
	.word	4
	.word	0
_Label_726:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_728:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_729:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	7,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1993,r13		! source line 1993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_735 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_736 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_737 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_738 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_739 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_740 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_741
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_742
	.word	8
	.word	4
	.word	_Label_743
	.word	12
	.word	4
	.word	_Label_744
	.word	16
	.word	4
	.word	_Label_745
	.word	-12
	.word	4
	.word	_Label_746
	.word	-16
	.word	4
	.word	_Label_747
	.word	-20
	.word	4
	.word	_Label_748
	.word	-24
	.word	4
	.word	_Label_749
	.word	-28
	.word	4
	.word	_Label_750
	.word	-32
	.word	4
	.word	0
_Label_741:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_742:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_743:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	5,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	2008,r13		! source line 2008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_751 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_752 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_753 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2013,r13		! source line 2013
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_754 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_755
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_756
	.word	8
	.word	4
	.word	_Label_757
	.word	12
	.word	4
	.word	_Label_758
	.word	-12
	.word	4
	.word	_Label_759
	.word	-16
	.word	4
	.word	_Label_760
	.word	-20
	.word	4
	.word	_Label_761
	.word	-24
	.word	4
	.word	0
_Label_755:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_756:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_757:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	4,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	2021,r13		! source line 2021
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_762 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_763 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2023,r13		! source line 2023
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2024,r13		! source line 2024
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_764 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_765
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_766
	.word	8
	.word	4
	.word	_Label_767
	.word	-12
	.word	4
	.word	_Label_768
	.word	-16
	.word	4
	.word	_Label_769
	.word	-20
	.word	4
	.word	0
_Label_765:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_766:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
! 
! ===============  FUNCTION printString  ===============
! 
_function_228_printString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_printString,r1
	push	r1
	mov	1,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	2031,r13		! source line 2031
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_printString:
	.word	_sourceFileName
	.word	_Label_770
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_771
	.word	8
	.word	4
	.word	0
_Label_770:
	.ascii	"printString\0"
	.align
_Label_771:
	.byte	'P'
	.ascii	"arg\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_227_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	2625,r13		! source line 2625
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_772 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_772  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   _temp_773 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_773) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_775 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_775) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_774 = *_temp_775  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_773 = _temp_774  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   _temp_776 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_776) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_778) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_777 = *_temp_778  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_776 = _temp_777  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
!   _temp_779 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_779) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_781 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_781) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_780 = *_temp_781  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_779 = _temp_780  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_227_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_782
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_783
	.word	8
	.word	4
	.word	_Label_784
	.word	12
	.word	4
	.word	_Label_785
	.word	-16
	.word	4
	.word	_Label_786
	.word	-9
	.word	1
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-10
	.word	1
	.word	_Label_790
	.word	-28
	.word	4
	.word	_Label_791
	.word	-32
	.word	4
	.word	_Label_792
	.word	-11
	.word	1
	.word	_Label_793
	.word	-36
	.word	4
	.word	_Label_794
	.word	-12
	.word	1
	.word	_Label_795
	.word	-40
	.word	4
	.word	_Label_796
	.word	-44
	.word	4
	.word	0
_Label_782:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_783:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_784:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_786:
	.byte	'C'
	.ascii	"_temp_780\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_789:
	.byte	'C'
	.ascii	"_temp_777\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_792:
	.byte	'C'
	.ascii	"_temp_774\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_794:
	.byte	'C'
	.ascii	"_temp_772\0"
	.align
_Label_795:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_226_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_printFCB,r1
	push	r1
	mov	3,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	2635,r13		! source line 2635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_798 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_797 = *_temp_798  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_printFCB:
	.word	_sourceFileName
	.word	_Label_799
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_800
	.word	8
	.word	4
	.word	_Label_801
	.word	-12
	.word	4
	.word	_Label_802
	.word	-16
	.word	4
	.word	0
_Label_799:
	.ascii	"printFCB\0"
	.align
_Label_800:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_225_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_printOpen,r1
	push	r1
	mov	4,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	2640,r13		! source line 2640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_803 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_803  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_804 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_804  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_805 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2643,r13		! source line 2643
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_printOpen:
	.word	_sourceFileName
	.word	_Label_806
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_807
	.word	8
	.word	4
	.word	_Label_808
	.word	-12
	.word	4
	.word	_Label_809
	.word	-16
	.word	4
	.word	_Label_810
	.word	-20
	.word	4
	.word	0
_Label_806:
	.ascii	"printOpen\0"
	.align
_Label_807:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_811
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_811:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_812
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_812:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_814		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_814
!	jmp	_Label_813
_Label_813:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_815 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	234,r13		! source line 234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_814:
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_817
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_819
	.word	12
	.word	4
	.word	_Label_820
	.word	-12
	.word	4
	.word	_Label_821
	.word	-16
	.word	4
	.word	0
_Label_817:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_818:
	.ascii	"Pself\0"
	.align
_Label_819:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	242,r13		! source line 242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_823		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_823
!	jmp	_Label_822
_Label_822:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_824 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	248,r13		! source line 248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_823:
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_826		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_826
!	jmp	_Label_825
_Label_825:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_827 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_828 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_828 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_829 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_826:
! ASSIGNMENT STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_830
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_832
	.word	-12
	.word	4
	.word	_Label_833
	.word	-16
	.word	4
	.word	_Label_834
	.word	-20
	.word	4
	.word	_Label_835
	.word	-24
	.word	4
	.word	_Label_836
	.word	-28
	.word	4
	.word	_Label_837
	.word	-32
	.word	4
	.word	0
_Label_830:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_831:
	.ascii	"Pself\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_837:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	261,r13		! source line 261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_839		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_839
!	jmp	_Label_838
_Label_838:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_840 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	266,r13		! source line 266
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_839:
! ASSIGNMENT STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_842		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_842
!	jmp	_Label_841
_Label_841:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_843 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_842:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_844
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_846
	.word	-12
	.word	4
	.word	_Label_847
	.word	-16
	.word	4
	.word	_Label_848
	.word	-20
	.word	4
	.word	0
_Label_844:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_845:
	.ascii	"Pself\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_848:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_849
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_849:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_850
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_850:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	296,r13		! source line 296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_852
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_854
	.word	-12
	.word	4
	.word	0
_Label_852:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_853:
	.ascii	"Pself\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_856		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_856
!	jmp	_Label_855
_Label_855:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_857 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_857  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_856:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_861		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_861
!   _temp_860 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_862
_Label_861:
!   _temp_860 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_862:
!   if _temp_860 then goto _Label_859 else goto _Label_858
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_858
	jmp	_Label_859
_Label_858:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_863
_Label_859:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_864 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_863:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_865
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_867
	.word	-16
	.word	4
	.word	_Label_868
	.word	-9
	.word	1
	.word	_Label_869
	.word	-20
	.word	4
	.word	_Label_870
	.word	-24
	.word	4
	.word	0
_Label_865:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_866:
	.ascii	"Pself\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_868:
	.byte	'C'
	.ascii	"_temp_860\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_870:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_872		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_872
!	jmp	_Label_871
_Label_871:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_873 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_873  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_872:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_874 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_876		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_876
!	jmp	_Label_875
_Label_875:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_877 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_877 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_878 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_879
_Label_876:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_879:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_880
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_882
	.word	-12
	.word	4
	.word	_Label_883
	.word	-16
	.word	4
	.word	_Label_884
	.word	-20
	.word	4
	.word	_Label_885
	.word	-24
	.word	4
	.word	_Label_886
	.word	-28
	.word	4
	.word	_Label_887
	.word	-32
	.word	4
	.word	0
_Label_880:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_881:
	.ascii	"Pself\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_878\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_874\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_887:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_890		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_890
!	jmp	_Label_889
_Label_889:
!   _temp_888 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_891
_Label_890:
!   _temp_888 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_891:
!   ReturnResult: _temp_888  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_892
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_894
	.word	-9
	.word	1
	.word	0
_Label_892:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_893:
	.ascii	"Pself\0"
	.align
_Label_894:
	.byte	'C'
	.ascii	"_temp_888\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_895
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_895:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_896
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_896:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_898
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_900
	.word	-12
	.word	4
	.word	0
_Label_898:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_899:
	.ascii	"Pself\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_903  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_903 then goto _Label_902 else goto _Label_901
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_901
	jmp	_Label_902
_Label_901:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_904 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_904  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_902:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_905 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_906
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_908
	.word	12
	.word	4
	.word	_Label_909
	.word	-16
	.word	4
	.word	_Label_910
	.word	-20
	.word	4
	.word	_Label_911
	.word	-9
	.word	1
	.word	_Label_912
	.word	-24
	.word	4
	.word	0
_Label_906:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_907:
	.ascii	"Pself\0"
	.align
_Label_908:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_911:
	.byte	'C'
	.ascii	"_temp_903\0"
	.align
_Label_912:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_915  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_915 then goto _Label_914 else goto _Label_913
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_913
	jmp	_Label_914
_Label_913:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_916 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_914:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_917 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_919		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_920 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_920 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_921 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_919:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_922
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_924
	.word	12
	.word	4
	.word	_Label_925
	.word	-16
	.word	4
	.word	_Label_926
	.word	-20
	.word	4
	.word	_Label_927
	.word	-24
	.word	4
	.word	_Label_928
	.word	-28
	.word	4
	.word	_Label_929
	.word	-9
	.word	1
	.word	_Label_930
	.word	-32
	.word	4
	.word	_Label_931
	.word	-36
	.word	4
	.word	0
_Label_922:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_923:
	.ascii	"Pself\0"
	.align
_Label_924:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_929:
	.byte	'C'
	.ascii	"_temp_915\0"
	.align
_Label_930:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_931:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_934  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_934 then goto _Label_933 else goto _Label_932
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_932
	jmp	_Label_933
_Label_932:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_935 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_935  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_933:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_936:
!	jmp	_Label_937
_Label_937:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_939 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_940
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_940
	jmp	_Label_941
_Label_940:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_938
! END IF...
_Label_941:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_942 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_943 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_936
_Label_938:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_944
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_945
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_946
	.word	12
	.word	4
	.word	_Label_947
	.word	-16
	.word	4
	.word	_Label_948
	.word	-20
	.word	4
	.word	_Label_949
	.word	-24
	.word	4
	.word	_Label_950
	.word	-28
	.word	4
	.word	_Label_951
	.word	-9
	.word	1
	.word	_Label_952
	.word	-32
	.word	4
	.word	_Label_953
	.word	-36
	.word	4
	.word	0
_Label_944:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_945:
	.ascii	"Pself\0"
	.align
_Label_946:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_951:
	.byte	'C'
	.ascii	"_temp_934\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_954
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_954:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_955
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_955:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	449,r13		! source line 449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_956 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_956 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_957 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_957 [0 ] into _temp_958
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_958 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_959 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_959 [999 ] into _temp_960
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_960 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_961 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_961 [999 ] into _temp_962
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_962		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_963 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_965 = &_temp_964
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_965 = _temp_965 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_967:
!   Data Move: *_temp_965 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_965 = _temp_965 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_966 = _temp_966 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_966) then goto _Label_967
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_967
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_968 = &_temp_964
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3112
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3112:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_963 = *_temp_968  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3113:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3113
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   _temp_969 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_971 = &_temp_970
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_971 = _temp_971 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_973:
!   Data Move: *_temp_971 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_971 = _temp_971 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_972 = _temp_972 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_972) then goto _Label_973
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_973
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_974 = &_temp_970
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3114
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3114:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_969 = *_temp_974  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3115:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3115
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_975
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	12
	.word	4
	.word	_Label_978
	.word	-12
	.word	4
	.word	_Label_979
	.word	-16
	.word	4
	.word	_Label_980
	.word	-20
	.word	4
	.word	_Label_981
	.word	-84
	.word	64
	.word	_Label_982
	.word	-88
	.word	4
	.word	_Label_983
	.word	-92
	.word	4
	.word	_Label_984
	.word	-96
	.word	4
	.word	_Label_985
	.word	-100
	.word	4
	.word	_Label_986
	.word	-156
	.word	56
	.word	_Label_987
	.word	-160
	.word	4
	.word	_Label_988
	.word	-164
	.word	4
	.word	_Label_989
	.word	-168
	.word	4
	.word	_Label_990
	.word	-172
	.word	4
	.word	_Label_991
	.word	-176
	.word	4
	.word	_Label_992
	.word	-180
	.word	4
	.word	_Label_993
	.word	-184
	.word	4
	.word	_Label_994
	.word	-188
	.word	4
	.word	0
_Label_975:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	468,r13		! source line 468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_995  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_997 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_996  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_998
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1000
	.word	12
	.word	4
	.word	_Label_1001
	.word	16
	.word	4
	.word	_Label_1002
	.word	-12
	.word	4
	.word	_Label_1003
	.word	-16
	.word	4
	.word	_Label_1004
	.word	-20
	.word	4
	.word	_Label_1005
	.word	-24
	.word	4
	.word	_Label_1006
	.word	-28
	.word	4
	.word	0
_Label_998:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_999:
	.ascii	"Pself\0"
	.align
_Label_1000:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1006:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1009 == _P_Kernel_currentThread then goto _Label_1008		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	509,r13		! source line 509
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
	mov	515,r13		! source line 515
	mov	"\0\0SE",r10
!   _temp_1011 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1013		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1015		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1015
!	jmp	_Label_1014
_Label_1014:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1016 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	521,r13		! source line 521
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1015:
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1018 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1017  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1013:
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1019
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1021
	.word	-12
	.word	4
	.word	_Label_1022
	.word	-16
	.word	4
	.word	_Label_1023
	.word	-20
	.word	4
	.word	_Label_1024
	.word	-24
	.word	4
	.word	_Label_1025
	.word	-28
	.word	4
	.word	_Label_1026
	.word	-32
	.word	4
	.word	_Label_1027
	.word	-36
	.word	4
	.word	_Label_1028
	.word	-40
	.word	4
	.word	_Label_1029
	.word	-44
	.word	4
	.word	0
_Label_1019:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1020:
	.ascii	"Pself\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1027:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1028:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1029:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1031		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1031
!	jmp	_Label_1030
_Label_1030:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1032 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	545,r13		! source line 545
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1031:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1035 == _P_Kernel_currentThread then goto _Label_1034		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1034
!	jmp	_Label_1033
_Label_1033:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	549,r13		! source line 549
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1034:
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
!   _temp_1037 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1038
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1038
	jmp	_Label_1039
_Label_1038:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	557,r13		! source line 557
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1039:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	559,r13		! source line 559
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1041
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1043
	.word	-12
	.word	4
	.word	_Label_1044
	.word	-16
	.word	4
	.word	_Label_1045
	.word	-20
	.word	4
	.word	_Label_1046
	.word	-24
	.word	4
	.word	_Label_1047
	.word	-28
	.word	4
	.word	_Label_1048
	.word	-32
	.word	4
	.word	0
_Label_1041:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1042:
	.ascii	"Pself\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1048:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1052 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1052 [0 ] into _temp_1053
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1051 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1051 == 606348324 then goto _Label_1050		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1054 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1055
_Label_1050:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1059 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1059 [999 ] into _temp_1060
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1058 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1058 == 606348324 then goto _Label_1057		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1057
!	jmp	_Label_1056
_Label_1056:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1061 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	573,r13		! source line 573
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1057:
! END IF...
_Label_1055:
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1062
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1064
	.word	-12
	.word	4
	.word	_Label_1065
	.word	-16
	.word	4
	.word	_Label_1066
	.word	-20
	.word	4
	.word	_Label_1067
	.word	-24
	.word	4
	.word	_Label_1068
	.word	-28
	.word	4
	.word	_Label_1069
	.word	-32
	.word	4
	.word	_Label_1070
	.word	-36
	.word	4
	.word	_Label_1071
	.word	-40
	.word	4
	.word	0
_Label_1062:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1063:
	.ascii	"Pself\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1072 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1073 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1075 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1076 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1081 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1082 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1081  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1077:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1082 then goto _Label_1080		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1080
_Label_1078:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1083 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1084 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1085 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1087 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1087 [i ] into _temp_1088
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1086 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1089 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1091 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1091 [i ] into _temp_1092
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1090 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1093 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1079:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1077
! END FOR
_Label_1080:
! CALL STATEMENT...
!   _temp_1094 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-116]
!   _temp_1095 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1095  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1096 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-108]
!   _temp_1098 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1098 [0 ] into _temp_1099
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1097 = _temp_1099		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1097  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	603,r13		! source line 603
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1102
	cmp	r1,2
	be	_Label_1103
	cmp	r1,3
	be	_Label_1104
	cmp	r1,4
	be	_Label_1105
	cmp	r1,5
	be	_Label_1106
	jmp	_Label_1100
! CASE 1...
_Label_1102:
! CALL STATEMENT...
!   _temp_1107 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 2...
_Label_1103:
! CALL STATEMENT...
!   _temp_1108 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 3...
_Label_1104:
! CALL STATEMENT...
!   _temp_1109 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 4...
_Label_1105:
! CALL STATEMENT...
!   _temp_1110 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 5...
_Label_1106:
! CALL STATEMENT...
!   _temp_1111 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1101
! DEFAULT CASE...
_Label_1100:
! CALL STATEMENT...
!   _temp_1112 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1112  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	620,r13		! source line 620
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1101:
! CALL STATEMENT...
!   _temp_1113 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1114 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1119 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1120 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1119  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1115:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1120 then goto _Label_1118		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1118
_Label_1116:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1121 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1122 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1123 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1125 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1125 [i ] into _temp_1126
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1124 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1127 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1129 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1129 [i ] into _temp_1130
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1128 = *_temp_1130  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1131 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1117:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1115
! END FOR
_Label_1118:
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1132
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1134
	.word	-12
	.word	4
	.word	_Label_1135
	.word	-16
	.word	4
	.word	_Label_1136
	.word	-20
	.word	4
	.word	_Label_1137
	.word	-24
	.word	4
	.word	_Label_1138
	.word	-28
	.word	4
	.word	_Label_1139
	.word	-32
	.word	4
	.word	_Label_1140
	.word	-36
	.word	4
	.word	_Label_1141
	.word	-40
	.word	4
	.word	_Label_1142
	.word	-44
	.word	4
	.word	_Label_1143
	.word	-48
	.word	4
	.word	_Label_1144
	.word	-52
	.word	4
	.word	_Label_1145
	.word	-56
	.word	4
	.word	_Label_1146
	.word	-60
	.word	4
	.word	_Label_1147
	.word	-64
	.word	4
	.word	_Label_1148
	.word	-68
	.word	4
	.word	_Label_1149
	.word	-72
	.word	4
	.word	_Label_1150
	.word	-76
	.word	4
	.word	_Label_1151
	.word	-80
	.word	4
	.word	_Label_1152
	.word	-84
	.word	4
	.word	_Label_1153
	.word	-88
	.word	4
	.word	_Label_1154
	.word	-92
	.word	4
	.word	_Label_1155
	.word	-96
	.word	4
	.word	_Label_1156
	.word	-100
	.word	4
	.word	_Label_1157
	.word	-104
	.word	4
	.word	_Label_1158
	.word	-108
	.word	4
	.word	_Label_1159
	.word	-112
	.word	4
	.word	_Label_1160
	.word	-116
	.word	4
	.word	_Label_1161
	.word	-120
	.word	4
	.word	_Label_1162
	.word	-124
	.word	4
	.word	_Label_1163
	.word	-128
	.word	4
	.word	_Label_1164
	.word	-132
	.word	4
	.word	_Label_1165
	.word	-136
	.word	4
	.word	_Label_1166
	.word	-140
	.word	4
	.word	_Label_1167
	.word	-144
	.word	4
	.word	_Label_1168
	.word	-148
	.word	4
	.word	_Label_1169
	.word	-152
	.word	4
	.word	_Label_1170
	.word	-156
	.word	4
	.word	_Label_1171
	.word	-160
	.word	4
	.word	_Label_1172
	.word	-164
	.word	4
	.word	_Label_1173
	.word	-168
	.word	4
	.word	_Label_1174
	.word	-172
	.word	4
	.word	_Label_1175
	.word	-176
	.word	4
	.word	_Label_1176
	.word	-180
	.word	4
	.word	_Label_1177
	.word	-184
	.word	4
	.word	_Label_1178
	.word	-188
	.word	4
	.word	_Label_1179
	.word	-192
	.word	4
	.word	_Label_1180
	.word	-196
	.word	4
	.word	0
_Label_1132:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1133:
	.ascii	"Pself\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1179:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1180:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1181
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1181:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1182
	.word	_sourceFileName
	.word	196		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1182:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11507,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1183 = _StringConst_113
	set	_StringConst_113,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41700,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41700,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_1185 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1187 = &_temp_1186
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1187 = _temp_1187 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1189 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3122:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3122
!   _temp_1189 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1191:
!   Data Move: *_temp_1187 = _temp_1189  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3123:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3123
!   _temp_1187 = _temp_1187 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1188 = _temp_1188 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1188) then goto _Label_1191
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1191
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1192 = &_temp_1186
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3124
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3124:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1185 = *_temp_1192  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3125:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3125
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1193 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-188]
!   _temp_1194 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1194 [0 ] into _temp_1195
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_1193  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1196 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-176]
!   _temp_1197 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1197 [1 ] into _temp_1198
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_1196  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_1199 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-164]
!   _temp_1200 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1200 [2 ] into _temp_1201
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1202 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-152]
!   _temp_1203 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1203 [3 ] into _temp_1204
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_1202  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_1205 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-140]
!   _temp_1206 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1206 [4 ] into _temp_1207
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_1205  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_1208 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-128]
!   _temp_1209 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1209 [5 ] into _temp_1210
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_1208  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_1211 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-116]
!   _temp_1212 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1212 [6 ] into _temp_1213
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_1211  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_1214 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-104]
!   _temp_1215 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1215 [7 ] into _temp_1216
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_1214  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_1217 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-92]
!   _temp_1218 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1218 [8 ] into _temp_1219
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_1217  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_1220 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-80]
!   _temp_1221 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1221 [9 ] into _temp_1222
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_1220  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1227 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1228 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1227  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1223:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1228 then goto _Label_1226		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1226
_Label_1224:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1229 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1229 [index ] into _temp_1230
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_1231 = _temp_1230 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1231 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1233 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1233 [index ] into _temp_1234
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1232 = _temp_1234		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1235 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1232  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1225:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1223
! END FOR
_Label_1226:
! ASSIGNMENT STATEMENT...
	mov	724,r13		! source line 724
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0SE",r10
!   _temp_1237 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1239 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: leadThread = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   leadThread = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0SE",r10
!   _temp_1241 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0RE",r10
	set	46032,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1242
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1244
	.word	-12
	.word	4
	.word	_Label_1245
	.word	-16
	.word	4
	.word	_Label_1246
	.word	-20
	.word	4
	.word	_Label_1247
	.word	-24
	.word	4
	.word	_Label_1248
	.word	-28
	.word	4
	.word	_Label_1249
	.word	-32
	.word	4
	.word	_Label_1250
	.word	-36
	.word	4
	.word	_Label_1251
	.word	-40
	.word	4
	.word	_Label_1252
	.word	-44
	.word	4
	.word	_Label_1253
	.word	-48
	.word	4
	.word	_Label_1254
	.word	-52
	.word	4
	.word	_Label_1255
	.word	-56
	.word	4
	.word	_Label_1256
	.word	-60
	.word	4
	.word	_Label_1257
	.word	-64
	.word	4
	.word	_Label_1258
	.word	-68
	.word	4
	.word	_Label_1259
	.word	-72
	.word	4
	.word	_Label_1260
	.word	-76
	.word	4
	.word	_Label_1261
	.word	-80
	.word	4
	.word	_Label_1262
	.word	-84
	.word	4
	.word	_Label_1263
	.word	-88
	.word	4
	.word	_Label_1264
	.word	-92
	.word	4
	.word	_Label_1265
	.word	-96
	.word	4
	.word	_Label_1266
	.word	-100
	.word	4
	.word	_Label_1267
	.word	-104
	.word	4
	.word	_Label_1268
	.word	-108
	.word	4
	.word	_Label_1269
	.word	-112
	.word	4
	.word	_Label_1270
	.word	-116
	.word	4
	.word	_Label_1271
	.word	-120
	.word	4
	.word	_Label_1272
	.word	-124
	.word	4
	.word	_Label_1273
	.word	-128
	.word	4
	.word	_Label_1274
	.word	-132
	.word	4
	.word	_Label_1275
	.word	-136
	.word	4
	.word	_Label_1276
	.word	-140
	.word	4
	.word	_Label_1277
	.word	-144
	.word	4
	.word	_Label_1278
	.word	-148
	.word	4
	.word	_Label_1279
	.word	-152
	.word	4
	.word	_Label_1280
	.word	-156
	.word	4
	.word	_Label_1281
	.word	-160
	.word	4
	.word	_Label_1282
	.word	-164
	.word	4
	.word	_Label_1283
	.word	-168
	.word	4
	.word	_Label_1284
	.word	-172
	.word	4
	.word	_Label_1285
	.word	-176
	.word	4
	.word	_Label_1286
	.word	-180
	.word	4
	.word	_Label_1287
	.word	-184
	.word	4
	.word	_Label_1288
	.word	-188
	.word	4
	.word	_Label_1289
	.word	-192
	.word	4
	.word	_Label_1290
	.word	-196
	.word	4
	.word	_Label_1291
	.word	-4360
	.word	4164
	.word	_Label_1292
	.word	-4364
	.word	4
	.word	_Label_1293
	.word	-4368
	.word	4
	.word	_Label_1294
	.word	-46012
	.word	41644
	.word	_Label_1295
	.word	-46016
	.word	4
	.word	_Label_1296
	.word	-46020
	.word	4
	.word	_Label_1297
	.word	-46024
	.word	4
	.word	_Label_1298
	.word	-46028
	.word	4
	.word	0
_Label_1242:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1243:
	.ascii	"Pself\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1298:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1299 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1304 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1305 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1304  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1300:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1305 then goto _Label_1303		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1303
_Label_1301:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1306 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1307 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1309 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1309 [i ] into _temp_1310
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1308 = _temp_1310		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_232_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1302:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1300
! END FOR
_Label_1303:
! CALL STATEMENT...
!   _temp_1311 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1312 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1313 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1312  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1314
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1316
	.word	-12
	.word	4
	.word	_Label_1317
	.word	-16
	.word	4
	.word	_Label_1318
	.word	-20
	.word	4
	.word	_Label_1319
	.word	-24
	.word	4
	.word	_Label_1320
	.word	-28
	.word	4
	.word	_Label_1321
	.word	-32
	.word	4
	.word	_Label_1322
	.word	-36
	.word	4
	.word	_Label_1323
	.word	-40
	.word	4
	.word	_Label_1324
	.word	-44
	.word	4
	.word	_Label_1325
	.word	-48
	.word	4
	.word	_Label_1326
	.word	-52
	.word	4
	.word	_Label_1327
	.word	-56
	.word	4
	.word	_Label_1328
	.word	-60
	.word	4
	.word	0
_Label_1314:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1315:
	.ascii	"Pself\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1327:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	12,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1329 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0WH",r10
_Label_1330:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1333 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1331 else goto _Label_1332
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1332
	jmp	_Label_1331
_Label_1331:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1334 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_1335 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1334  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1330
_Label_1332:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1336 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   if intIsZero (threadToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1337 = threadToReturn + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1337 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1338 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1339 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1338  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1340 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0RE",r10
!   ReturnResult: threadToReturn  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1341
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1342
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1343
	.word	-12
	.word	4
	.word	_Label_1344
	.word	-16
	.word	4
	.word	_Label_1345
	.word	-20
	.word	4
	.word	_Label_1346
	.word	-24
	.word	4
	.word	_Label_1347
	.word	-28
	.word	4
	.word	_Label_1348
	.word	-32
	.word	4
	.word	_Label_1349
	.word	-36
	.word	4
	.word	_Label_1350
	.word	-40
	.word	4
	.word	_Label_1351
	.word	-44
	.word	4
	.word	_Label_1352
	.word	-48
	.word	4
	.word	0
_Label_1341:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1342:
	.ascii	"Pself\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1352:
	.byte	'P'
	.ascii	"threadToReturn\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	9,r1
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	782,r13		! source line 782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1353 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0IF",r10
!   if th == 0 then goto _Label_1355		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1355
!	jmp	_Label_1354
_Label_1354:
! THEN...
	mov	791,r13		! source line 791
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1356 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1356 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1357 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1358 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1359 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1358  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_1360
_Label_1355:
! ELSE...
	mov	795,r13		! source line 795
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1361 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1361  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	795,r13		! source line 795
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1360:
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1362 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1363
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1365
	.word	12
	.word	4
	.word	_Label_1366
	.word	-12
	.word	4
	.word	_Label_1367
	.word	-16
	.word	4
	.word	_Label_1368
	.word	-20
	.word	4
	.word	_Label_1369
	.word	-24
	.word	4
	.word	_Label_1370
	.word	-28
	.word	4
	.word	_Label_1371
	.word	-32
	.word	4
	.word	_Label_1372
	.word	-36
	.word	4
	.word	0
_Label_1363:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1364:
	.ascii	"Pself\0"
	.align
_Label_1365:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1373
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1373:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1374
	.word	_sourceFileName
	.word	218		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1374:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	810,r13		! source line 810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3130:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3130
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1376 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1377
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1378
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1379
	.word	-12
	.word	4
	.word	_Label_1380
	.word	-16
	.word	4
	.word	0
_Label_1377:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1378:
	.ascii	"Pself\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1381) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	830,r13		! source line 830
	mov	"\0\0SE",r10
!   _temp_1382 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1383 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_function_232_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1384
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1386
	.word	-12
	.word	4
	.word	_Label_1387
	.word	-16
	.word	4
	.word	_Label_1388
	.word	-20
	.word	4
	.word	0
_Label_1384:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1385:
	.ascii	"Pself\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1389 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1391 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1392 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1394		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1394
!	jmp	_Label_1393
_Label_1393:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1395 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1396
_Label_1394:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1398		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1398
!	jmp	_Label_1397
_Label_1397:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1399 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1399  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1400
_Label_1398:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1402		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1402
!	jmp	_Label_1401
_Label_1401:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1403 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1404
_Label_1402:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1405 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	863,r13		! source line 863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1404:
! END IF...
_Label_1400:
! END IF...
_Label_1396:
! CALL STATEMENT...
!   _temp_1406 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1406  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1407 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1407  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1408
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1409
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1410
	.word	-12
	.word	4
	.word	_Label_1411
	.word	-16
	.word	4
	.word	_Label_1412
	.word	-20
	.word	4
	.word	_Label_1413
	.word	-24
	.word	4
	.word	_Label_1414
	.word	-28
	.word	4
	.word	_Label_1415
	.word	-32
	.word	4
	.word	_Label_1416
	.word	-36
	.word	4
	.word	_Label_1417
	.word	-40
	.word	4
	.word	_Label_1418
	.word	-44
	.word	4
	.word	_Label_1419
	.word	-48
	.word	4
	.word	0
_Label_1408:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1409:
	.ascii	"Pself\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1420
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1420:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1421
	.word	_sourceFileName
	.word	238		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1421:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	365,r1
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	880,r13		! source line 880
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1423 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1452]
!   NEW ARRAY Constructor...
!   _temp_1425 = &_temp_1424
	add	r14,-1448,r1
	store	r1,[r14+-204]
!   _temp_1425 = _temp_1425 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1427 = zeros  (sizeInBytes=124)
	add	r14,-196,r4
	mov	31,r3
_Label_3134:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3134
!   _temp_1427 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-196]
	mov	10,r1
	store	r1,[r14+-200]
_Label_1429:
!   Data Move: *_temp_1425 = _temp_1427  (sizeInBytes=124)
	add	r14,-196,r5
	load	[r14+-204],r4
	mov	31,r3
_Label_3135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3135
!   _temp_1425 = _temp_1425 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   _temp_1426 = _temp_1426 + -1
	load	[r14+-200],r1
	add	r1,-1,r1
	store	r1,[r14+-200]
!   if intNotZero (_temp_1426) then goto _Label_1429
	load	[r14+-200],r1
	cmp	r1,r0
	bne	_Label_1429
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1448]
!   _temp_1430 = &_temp_1424
	add	r14,-1448,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1452],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3136
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3136:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1423 = *_temp_1430  (sizeInBytes=1244)
	load	[r14+-68],r5
	load	[r14+-1452],r4
	mov	311,r3
_Label_3137:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3137
! FOR STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1435 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1436 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1435  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1431:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1436 then goto _Label_1434		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1434
_Label_1432:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1437 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1437 [index ] into _temp_1438
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1440 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1440 [index ] into _temp_1441
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1439 = _temp_1441		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1442 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1439  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1433:
!   index = index + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1431
! END FOR
_Label_1434:
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1444 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1446 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1448 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0RE",r10
	add	r15,1464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1449
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1451
	.word	-12
	.word	4
	.word	_Label_1452
	.word	-16
	.word	4
	.word	_Label_1453
	.word	-20
	.word	4
	.word	_Label_1454
	.word	-24
	.word	4
	.word	_Label_1455
	.word	-28
	.word	4
	.word	_Label_1456
	.word	-32
	.word	4
	.word	_Label_1457
	.word	-36
	.word	4
	.word	_Label_1458
	.word	-40
	.word	4
	.word	_Label_1459
	.word	-44
	.word	4
	.word	_Label_1460
	.word	-48
	.word	4
	.word	_Label_1461
	.word	-52
	.word	4
	.word	_Label_1462
	.word	-56
	.word	4
	.word	_Label_1463
	.word	-60
	.word	4
	.word	_Label_1464
	.word	-64
	.word	4
	.word	_Label_1465
	.word	-68
	.word	4
	.word	_Label_1466
	.word	-72
	.word	4
	.word	_Label_1467
	.word	-196
	.word	124
	.word	_Label_1468
	.word	-200
	.word	4
	.word	_Label_1469
	.word	-204
	.word	4
	.word	_Label_1470
	.word	-1448
	.word	1244
	.word	_Label_1471
	.word	-1452
	.word	4
	.word	_Label_1472
	.word	-1456
	.word	4
	.word	_Label_1473
	.word	-1460
	.word	4
	.word	0
_Label_1449:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1450:
	.ascii	"Pself\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1473:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	916,r13		! source line 916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1474 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1479 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1480 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1479  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1475:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1480 then goto _Label_1478		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1478
_Label_1476:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1481 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1481  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1482 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1483 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1483 [i ] into _temp_1484
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1477:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1475
! END FOR
_Label_1478:
! CALL STATEMENT...
!   _temp_1485 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1486 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1487 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1488
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1490
	.word	-12
	.word	4
	.word	_Label_1491
	.word	-16
	.word	4
	.word	_Label_1492
	.word	-20
	.word	4
	.word	_Label_1493
	.word	-24
	.word	4
	.word	_Label_1494
	.word	-28
	.word	4
	.word	_Label_1495
	.word	-32
	.word	4
	.word	_Label_1496
	.word	-36
	.word	4
	.word	_Label_1497
	.word	-40
	.word	4
	.word	_Label_1498
	.word	-44
	.word	4
	.word	_Label_1499
	.word	-48
	.word	4
	.word	_Label_1500
	.word	-52
	.word	4
	.word	_Label_1501
	.word	-56
	.word	4
	.word	0
_Label_1488:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1489:
	.ascii	"Pself\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1500:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1501:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1502 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1507 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1508 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1507  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1503:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1508 then goto _Label_1506		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1506
_Label_1504:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1509 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1510 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1510 [i ] into _temp_1511
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1505:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1503
! END FOR
_Label_1506:
! CALL STATEMENT...
!   _temp_1512 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1513 = _function_231_PrintObjectAddr
	set	_function_231_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1514 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1513  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1515
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1517
	.word	-12
	.word	4
	.word	_Label_1518
	.word	-16
	.word	4
	.word	_Label_1519
	.word	-20
	.word	4
	.word	_Label_1520
	.word	-24
	.word	4
	.word	_Label_1521
	.word	-28
	.word	4
	.word	_Label_1522
	.word	-32
	.word	4
	.word	_Label_1523
	.word	-36
	.word	4
	.word	_Label_1524
	.word	-40
	.word	4
	.word	_Label_1525
	.word	-44
	.word	4
	.word	_Label_1526
	.word	-48
	.word	4
	.word	_Label_1527
	.word	-52
	.word	4
	.word	0
_Label_1515:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1516:
	.ascii	"Pself\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1527:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	10,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1528 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0WH",r10
_Label_1529:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1532 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1530 else goto _Label_1531
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1531
	jmp	_Label_1530
_Label_1530:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1533 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1534 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1533  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1529
_Label_1531:
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1535 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1536 = processToReturn + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1536 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1537 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0RE",r10
!   ReturnResult: processToReturn  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1538
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1539
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1540
	.word	-12
	.word	4
	.word	_Label_1541
	.word	-16
	.word	4
	.word	_Label_1542
	.word	-20
	.word	4
	.word	_Label_1543
	.word	-24
	.word	4
	.word	_Label_1544
	.word	-28
	.word	4
	.word	_Label_1545
	.word	-32
	.word	4
	.word	_Label_1546
	.word	-36
	.word	4
	.word	_Label_1547
	.word	-40
	.word	4
	.word	0
_Label_1538:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1539:
	.ascii	"Pself\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1547:
	.byte	'P'
	.ascii	"processToReturn\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1548 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1549 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1549 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1550 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1551 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1552 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1551  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1553 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1554
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1556
	.word	12
	.word	4
	.word	_Label_1557
	.word	-12
	.word	4
	.word	_Label_1558
	.word	-16
	.word	4
	.word	_Label_1559
	.word	-20
	.word	4
	.word	_Label_1560
	.word	-24
	.word	4
	.word	_Label_1561
	.word	-28
	.word	4
	.word	_Label_1562
	.word	-32
	.word	4
	.word	0
_Label_1554:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1555:
	.ascii	"Pself\0"
	.align
_Label_1556:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1563
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1563:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1564
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1564:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	1093,r13		! source line 1093
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1565 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1565  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1567 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1569 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1571 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1576 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1577 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1576  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1572:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1577 then goto _Label_1575		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1575
_Label_1573:
	mov	1112,r13		! source line 1112
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1580 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1580) then goto _Label_1579
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1579
!	jmp	_Label_1578
_Label_1578:
! THEN...
	mov	1116,r13		! source line 1116
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1581 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1116,r13		! source line 1116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1579:
!   Increment the FOR-LOOP index variable and jump back
_Label_1574:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1572
! END FOR
_Label_1575:
! RETURN STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1582
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1583
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1584
	.word	-12
	.word	4
	.word	_Label_1585
	.word	-16
	.word	4
	.word	_Label_1586
	.word	-20
	.word	4
	.word	_Label_1587
	.word	-24
	.word	4
	.word	_Label_1588
	.word	-28
	.word	4
	.word	_Label_1589
	.word	-32
	.word	4
	.word	_Label_1590
	.word	-36
	.word	4
	.word	_Label_1591
	.word	-40
	.word	4
	.word	_Label_1592
	.word	-44
	.word	4
	.word	_Label_1593
	.word	-48
	.word	4
	.word	_Label_1594
	.word	-52
	.word	4
	.word	_Label_1595
	.word	-56
	.word	4
	.word	0
_Label_1582:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1583:
	.ascii	"Pself\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	1123,r13		! source line 1123
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1596 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1597 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1598 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1599 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1600 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1601 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1602
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	0
_Label_1602:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	1137,r13		! source line 1137
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_1610 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0WH",r10
_Label_1611:
!   if numberFreeFrames >= 1 then goto _Label_1613		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1613
!	jmp	_Label_1612
_Label_1612:
	mov	1148,r13		! source line 1148
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1614 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1615 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1614  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1611
_Label_1613:
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1616 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_1617 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   _temp_1618 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1618		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1619
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	-12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-32
	.word	4
	.word	_Label_1627
	.word	-36
	.word	4
	.word	_Label_1628
	.word	-40
	.word	4
	.word	0
_Label_1619:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1627:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1628:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	1167,r13		! source line 1167
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1629 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0WH",r10
_Label_1630:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1632		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1632
!	jmp	_Label_1631
_Label_1631:
	mov	1179,r13		! source line 1179
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1633 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1634 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1633  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1630
_Label_1632:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1639 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1640 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1639  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1635:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1640 then goto _Label_1638		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1638
_Label_1636:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_1641 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message FindZeroAndSet
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frame  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   _temp_1642 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1642		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=addr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1637:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1635
! END FOR
_Label_1638:
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1643 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1646 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1645 = *_temp_1646  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1644 = _temp_1645 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1643 = _temp_1644  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1647 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1648
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1650
	.word	12
	.word	4
	.word	_Label_1651
	.word	16
	.word	4
	.word	_Label_1652
	.word	-12
	.word	4
	.word	_Label_1653
	.word	-16
	.word	4
	.word	_Label_1654
	.word	-20
	.word	4
	.word	_Label_1655
	.word	-24
	.word	4
	.word	_Label_1656
	.word	-28
	.word	4
	.word	_Label_1657
	.word	-32
	.word	4
	.word	_Label_1658
	.word	-36
	.word	4
	.word	_Label_1659
	.word	-40
	.word	4
	.word	_Label_1660
	.word	-44
	.word	4
	.word	_Label_1661
	.word	-48
	.word	4
	.word	_Label_1662
	.word	-52
	.word	4
	.word	_Label_1663
	.word	-56
	.word	4
	.word	_Label_1664
	.word	-60
	.word	4
	.word	_Label_1665
	.word	-64
	.word	4
	.word	_Label_1666
	.word	-68
	.word	4
	.word	0
_Label_1648:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1664:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1665:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1666:
	.byte	'I'
	.ascii	"frame\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	1204,r13		! source line 1204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
!   _temp_1667 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1668 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1668  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1673 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1674 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1673  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1669:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1674 then goto _Label_1672		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1672
_Label_1670:
	mov	1223,r13		! source line 1223
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0AS",r10
	mov	1224,r13		! source line 1224
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   _temp_1675 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1675 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1676 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=bit  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1671:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1669
! END FOR
_Label_1672:
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_1677 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1678 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1679 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1682 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1681 = *_temp_1682  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1680 = _temp_1681 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1679 = _temp_1680  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1683 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1684
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1686
	.word	12
	.word	4
	.word	_Label_1687
	.word	-12
	.word	4
	.word	_Label_1688
	.word	-16
	.word	4
	.word	_Label_1689
	.word	-20
	.word	4
	.word	_Label_1690
	.word	-24
	.word	4
	.word	_Label_1691
	.word	-28
	.word	4
	.word	_Label_1692
	.word	-32
	.word	4
	.word	_Label_1693
	.word	-36
	.word	4
	.word	_Label_1694
	.word	-40
	.word	4
	.word	_Label_1695
	.word	-44
	.word	4
	.word	_Label_1696
	.word	-48
	.word	4
	.word	_Label_1697
	.word	-52
	.word	4
	.word	_Label_1698
	.word	-56
	.word	4
	.word	_Label_1699
	.word	-60
	.word	4
	.word	_Label_1700
	.word	-64
	.word	4
	.word	_Label_1701
	.word	-68
	.word	4
	.word	_Label_1702
	.word	-72
	.word	4
	.word	_Label_1703
	.word	-76
	.word	4
	.word	0
_Label_1684:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1685:
	.ascii	"Pself\0"
	.align
_Label_1686:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1700:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1701:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1702:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1704
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1704:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1705
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1705:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   _temp_1706 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1708 = &_temp_1707
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1708 = _temp_1708 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1710:
!   Data Move: *_temp_1708 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1708 = _temp_1708 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1709 = _temp_1709 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1709) then goto _Label_1710
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1710
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1711 = &_temp_1707
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3148
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3148:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1706 = *_temp_1711  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3149:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3149
! RETURN STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1712
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	-12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-104
	.word	84
	.word	_Label_1718
	.word	-108
	.word	4
	.word	0
_Label_1712:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	1257,r13		! source line 1257
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1719 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1720 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1720  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1725 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1726 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1725  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1721:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1726 then goto _Label_1724		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1724
_Label_1722:
	mov	1264,r13		! source line 1264
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1729 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1729 [i ] into _temp_1730
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1728 = _temp_1730		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1731 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1733 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1733 [i ] into _temp_1734
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1732 = *_temp_1734  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1735 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1736 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1737 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1739) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1738  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1740 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0IF",r10
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1744) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1743  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1743) then goto _Label_1742
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1742
!	jmp	_Label_1741
_Label_1741:
! THEN...
	mov	1275,r13		! source line 1275
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1746) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1745  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1745  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1747
_Label_1742:
! ELSE...
	mov	1277,r13		! source line 1277
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1748 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1747:
! CALL STATEMENT...
!   _temp_1749 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0IF",r10
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1752) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1750 else goto _Label_1751
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1751
	jmp	_Label_1750
_Label_1750:
! THEN...
	mov	1281,r13		! source line 1281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1753 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1754
_Label_1751:
! ELSE...
	mov	1283,r13		! source line 1283
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1755 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1755  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1754:
! CALL STATEMENT...
!   _temp_1756 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0IF",r10
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1759) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1757 else goto _Label_1758
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1758
	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	1287,r13		! source line 1287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1760 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1760  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1761
_Label_1758:
! ELSE...
	mov	1289,r13		! source line 1289
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1762 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1761:
! CALL STATEMENT...
!   _temp_1763 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1766) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1764 else goto _Label_1765
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1765
	jmp	_Label_1764
_Label_1764:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1767 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1767  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1768
_Label_1765:
! ELSE...
	mov	1295,r13		! source line 1295
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1769 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1768:
! CALL STATEMENT...
!   _temp_1770 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0IF",r10
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1773) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1771 else goto _Label_1772
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1772
	jmp	_Label_1771
_Label_1771:
! THEN...
	mov	1299,r13		! source line 1299
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1774 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1774  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1775
_Label_1772:
! ELSE...
	mov	1301,r13		! source line 1301
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1776 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1776  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1775:
! CALL STATEMENT...
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1723:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1721
! END FOR
_Label_1724:
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1777
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1779
	.word	-12
	.word	4
	.word	_Label_1780
	.word	-16
	.word	4
	.word	_Label_1781
	.word	-20
	.word	4
	.word	_Label_1782
	.word	-24
	.word	4
	.word	_Label_1783
	.word	-28
	.word	4
	.word	_Label_1784
	.word	-32
	.word	4
	.word	_Label_1785
	.word	-36
	.word	4
	.word	_Label_1786
	.word	-40
	.word	4
	.word	_Label_1787
	.word	-44
	.word	4
	.word	_Label_1788
	.word	-48
	.word	4
	.word	_Label_1789
	.word	-52
	.word	4
	.word	_Label_1790
	.word	-56
	.word	4
	.word	_Label_1791
	.word	-60
	.word	4
	.word	_Label_1792
	.word	-64
	.word	4
	.word	_Label_1793
	.word	-68
	.word	4
	.word	_Label_1794
	.word	-72
	.word	4
	.word	_Label_1795
	.word	-76
	.word	4
	.word	_Label_1796
	.word	-80
	.word	4
	.word	_Label_1797
	.word	-84
	.word	4
	.word	_Label_1798
	.word	-88
	.word	4
	.word	_Label_1799
	.word	-92
	.word	4
	.word	_Label_1800
	.word	-96
	.word	4
	.word	_Label_1801
	.word	-100
	.word	4
	.word	_Label_1802
	.word	-104
	.word	4
	.word	_Label_1803
	.word	-108
	.word	4
	.word	_Label_1804
	.word	-112
	.word	4
	.word	_Label_1805
	.word	-116
	.word	4
	.word	_Label_1806
	.word	-120
	.word	4
	.word	_Label_1807
	.word	-124
	.word	4
	.word	_Label_1808
	.word	-128
	.word	4
	.word	_Label_1809
	.word	-132
	.word	4
	.word	_Label_1810
	.word	-136
	.word	4
	.word	_Label_1811
	.word	-140
	.word	4
	.word	_Label_1812
	.word	-144
	.word	4
	.word	_Label_1813
	.word	-148
	.word	4
	.word	_Label_1814
	.word	-152
	.word	4
	.word	_Label_1815
	.word	-156
	.word	4
	.word	_Label_1816
	.word	-160
	.word	4
	.word	_Label_1817
	.word	-164
	.word	4
	.word	_Label_1818
	.word	-168
	.word	4
	.word	0
_Label_1777:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1778:
	.ascii	"Pself\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1818:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0RE",r10
!   _temp_1821 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1821 [entry ] into _temp_1822
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1820 = *_temp_1822  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1819 = _temp_1820 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1819  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1823
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1824
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1825
	.word	12
	.word	4
	.word	_Label_1826
	.word	-12
	.word	4
	.word	_Label_1827
	.word	-16
	.word	4
	.word	_Label_1828
	.word	-20
	.word	4
	.word	_Label_1829
	.word	-24
	.word	4
	.word	0
_Label_1823:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1824:
	.ascii	"Pself\0"
	.align
_Label_1825:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
!   _temp_1832 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1832 [entry ] into _temp_1833
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1831 = *_temp_1833  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1830 = _temp_1831 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1830  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1834
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1836
	.word	12
	.word	4
	.word	_Label_1837
	.word	-12
	.word	4
	.word	_Label_1838
	.word	-16
	.word	4
	.word	_Label_1839
	.word	-20
	.word	4
	.word	_Label_1840
	.word	-24
	.word	4
	.word	0
_Label_1834:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1835:
	.ascii	"Pself\0"
	.align
_Label_1836:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_1841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1841 [entry ] into _temp_1842
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1846 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1846 [entry ] into _temp_1847
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1845 = *_temp_1847  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1844 = _temp_1845 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1843 = _temp_1844 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1842 = _temp_1843  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1848
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	12
	.word	4
	.word	_Label_1851
	.word	16
	.word	4
	.word	_Label_1852
	.word	-12
	.word	4
	.word	_Label_1853
	.word	-16
	.word	4
	.word	_Label_1854
	.word	-20
	.word	4
	.word	_Label_1855
	.word	-24
	.word	4
	.word	_Label_1856
	.word	-28
	.word	4
	.word	_Label_1857
	.word	-32
	.word	4
	.word	_Label_1858
	.word	-36
	.word	4
	.word	0
_Label_1848:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1851:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0RE",r10
!   _temp_1862 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1862 [entry ] into _temp_1863
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1861 = *_temp_1863  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1860 = _temp_1861 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1860) then goto _Label_1864
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1864
!   _temp_1859 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1865
_Label_1864:
!   _temp_1859 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1865:
!   ReturnResult: _temp_1859  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1866
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1867
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1868
	.word	12
	.word	4
	.word	_Label_1869
	.word	-16
	.word	4
	.word	_Label_1870
	.word	-20
	.word	4
	.word	_Label_1871
	.word	-24
	.word	4
	.word	_Label_1872
	.word	-28
	.word	4
	.word	_Label_1873
	.word	-9
	.word	1
	.word	0
_Label_1866:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1867:
	.ascii	"Pself\0"
	.align
_Label_1868:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1873:
	.byte	'C'
	.ascii	"_temp_1859\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
!   _temp_1877 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1877 [entry ] into _temp_1878
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1876 = *_temp_1878  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1875 = _temp_1876 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1875) then goto _Label_1879
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1879
!   _temp_1874 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1880
_Label_1879:
!   _temp_1874 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1880:
!   ReturnResult: _temp_1874  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1881
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1883
	.word	12
	.word	4
	.word	_Label_1884
	.word	-16
	.word	4
	.word	_Label_1885
	.word	-20
	.word	4
	.word	_Label_1886
	.word	-24
	.word	4
	.word	_Label_1887
	.word	-28
	.word	4
	.word	_Label_1888
	.word	-9
	.word	1
	.word	0
_Label_1881:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1882:
	.ascii	"Pself\0"
	.align
_Label_1883:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1888:
	.byte	'C'
	.ascii	"_temp_1874\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0RE",r10
!   _temp_1892 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1892 [entry ] into _temp_1893
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1891 = *_temp_1893  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1890 = _temp_1891 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1890) then goto _Label_1894
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1894
!   _temp_1889 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1895
_Label_1894:
!   _temp_1889 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1895:
!   ReturnResult: _temp_1889  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1896
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1898
	.word	12
	.word	4
	.word	_Label_1899
	.word	-16
	.word	4
	.word	_Label_1900
	.word	-20
	.word	4
	.word	_Label_1901
	.word	-24
	.word	4
	.word	_Label_1902
	.word	-28
	.word	4
	.word	_Label_1903
	.word	-9
	.word	1
	.word	0
_Label_1896:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1897:
	.ascii	"Pself\0"
	.align
_Label_1898:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1903:
	.byte	'C'
	.ascii	"_temp_1889\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   _temp_1907 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1907 [entry ] into _temp_1908
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1906 = *_temp_1908  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1905 = _temp_1906 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1905) then goto _Label_1909
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1909
!   _temp_1904 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1910
_Label_1909:
!   _temp_1904 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1910:
!   ReturnResult: _temp_1904  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1911
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1913
	.word	12
	.word	4
	.word	_Label_1914
	.word	-16
	.word	4
	.word	_Label_1915
	.word	-20
	.word	4
	.word	_Label_1916
	.word	-24
	.word	4
	.word	_Label_1917
	.word	-28
	.word	4
	.word	_Label_1918
	.word	-9
	.word	1
	.word	0
_Label_1911:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1912:
	.ascii	"Pself\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1918:
	.byte	'C'
	.ascii	"_temp_1904\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   _temp_1919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1919 [entry ] into _temp_1920
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1923 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1923 [entry ] into _temp_1924
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1922 = *_temp_1924  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1921 = _temp_1922 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1920 = _temp_1921  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1925
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1926
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1927
	.word	12
	.word	4
	.word	_Label_1928
	.word	-12
	.word	4
	.word	_Label_1929
	.word	-16
	.word	4
	.word	_Label_1930
	.word	-20
	.word	4
	.word	_Label_1931
	.word	-24
	.word	4
	.word	_Label_1932
	.word	-28
	.word	4
	.word	_Label_1933
	.word	-32
	.word	4
	.word	0
_Label_1925:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1926:
	.ascii	"Pself\0"
	.align
_Label_1927:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   _temp_1934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1934 [entry ] into _temp_1935
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1938 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1938 [entry ] into _temp_1939
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1937 = *_temp_1939  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1936 = _temp_1937 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1935 = _temp_1936  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1940
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1942
	.word	12
	.word	4
	.word	_Label_1943
	.word	-12
	.word	4
	.word	_Label_1944
	.word	-16
	.word	4
	.word	_Label_1945
	.word	-20
	.word	4
	.word	_Label_1946
	.word	-24
	.word	4
	.word	_Label_1947
	.word	-28
	.word	4
	.word	_Label_1948
	.word	-32
	.word	4
	.word	0
_Label_1940:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1941:
	.ascii	"Pself\0"
	.align
_Label_1942:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   _temp_1949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1949 [entry ] into _temp_1950
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1953 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1953 [entry ] into _temp_1954
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1952 = *_temp_1954  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1951 = _temp_1952 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1950 = _temp_1951  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1955
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1956
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1957
	.word	12
	.word	4
	.word	_Label_1958
	.word	-12
	.word	4
	.word	_Label_1959
	.word	-16
	.word	4
	.word	_Label_1960
	.word	-20
	.word	4
	.word	_Label_1961
	.word	-24
	.word	4
	.word	_Label_1962
	.word	-28
	.word	4
	.word	_Label_1963
	.word	-32
	.word	4
	.word	0
_Label_1955:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1956:
	.ascii	"Pself\0"
	.align
_Label_1957:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3161:
	push	r0
	sub	r1,1,r1
	bne	_Label_3161
	mov	1401,r13		! source line 1401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_1964 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1964 [entry ] into _temp_1965
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1968 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1968 [entry ] into _temp_1969
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1967 = *_temp_1969  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1966 = _temp_1967 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1965 = _temp_1966  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1970
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1972
	.word	12
	.word	4
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	0
_Label_1970:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1971:
	.ascii	"Pself\0"
	.align
_Label_1972:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   _temp_1979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1979 [entry ] into _temp_1980
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1983 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1983 [entry ] into _temp_1984
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1982 = *_temp_1984  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1981 = _temp_1982 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1980 = _temp_1981  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1985
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1987
	.word	12
	.word	4
	.word	_Label_1988
	.word	-12
	.word	4
	.word	_Label_1989
	.word	-16
	.word	4
	.word	_Label_1990
	.word	-20
	.word	4
	.word	_Label_1991
	.word	-24
	.word	4
	.word	_Label_1992
	.word	-28
	.word	4
	.word	_Label_1993
	.word	-32
	.word	4
	.word	0
_Label_1985:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1986:
	.ascii	"Pself\0"
	.align
_Label_1987:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	1419,r13		! source line 1419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   _temp_1994 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1994 [entry ] into _temp_1995
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1998 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1998 [entry ] into _temp_1999
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1997 = *_temp_1999  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1996 = _temp_1997 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1995 = _temp_1996  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_2000
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2002
	.word	12
	.word	4
	.word	_Label_2003
	.word	-12
	.word	4
	.word	_Label_2004
	.word	-16
	.word	4
	.word	_Label_2005
	.word	-20
	.word	4
	.word	_Label_2006
	.word	-24
	.word	4
	.word	_Label_2007
	.word	-28
	.word	4
	.word	_Label_2008
	.word	-32
	.word	4
	.word	0
_Label_2000:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2001:
	.ascii	"Pself\0"
	.align
_Label_2002:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3164:
	push	r0
	sub	r1,1,r1
	bne	_Label_3164
	mov	1428,r13		! source line 1428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   _temp_2009 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2009 [entry ] into _temp_2010
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2013 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2013 [entry ] into _temp_2014
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2012 = *_temp_2014  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2011 = _temp_2012 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2010 = _temp_2011  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_2015
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2016
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2017
	.word	12
	.word	4
	.word	_Label_2018
	.word	-12
	.word	4
	.word	_Label_2019
	.word	-16
	.word	4
	.word	_Label_2020
	.word	-20
	.word	4
	.word	_Label_2021
	.word	-24
	.word	4
	.word	_Label_2022
	.word	-28
	.word	4
	.word	_Label_2023
	.word	-32
	.word	4
	.word	0
_Label_2015:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2016:
	.ascii	"Pself\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	1437,r13		! source line 1437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   _temp_2024 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2024 [entry ] into _temp_2025
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_2028 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2028 [entry ] into _temp_2029
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_2027 = *_temp_2029  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2026 = _temp_2027 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2025 = _temp_2026  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2030
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2032
	.word	12
	.word	4
	.word	_Label_2033
	.word	-12
	.word	4
	.word	_Label_2034
	.word	-16
	.word	4
	.word	_Label_2035
	.word	-20
	.word	4
	.word	_Label_2036
	.word	-24
	.word	4
	.word	_Label_2037
	.word	-28
	.word	4
	.word	_Label_2038
	.word	-32
	.word	4
	.word	0
_Label_2030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2031:
	.ascii	"Pself\0"
	.align
_Label_2032:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2040 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2040 [0 ] into _temp_2041
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_2039 = _temp_2041		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2042 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2042  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2043
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2044
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2045
	.word	-12
	.word	4
	.word	_Label_2046
	.word	-16
	.word	4
	.word	_Label_2047
	.word	-20
	.word	4
	.word	_Label_2048
	.word	-24
	.word	4
	.word	0
_Label_2043:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2044:
	.ascii	"Pself\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2048:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2049
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2049
	jmp	_Label_2050
_Label_2049:
! THEN...
	mov	1473,r13		! source line 1473
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2051
_Label_2050:
! ELSE...
	mov	1474,r13		! source line 1474
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2053		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2053
!	jmp	_Label_2052
_Label_2052:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2053:
! END IF...
_Label_2051:
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0WH",r10
_Label_2054:
!	jmp	_Label_2055
_Label_2055:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2058		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2058
!	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2059 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2059  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1483,r13		! source line 1483
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2058:
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
	mov	1486,r13		! source line 1486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2062  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2062 then goto _Label_2061 else goto _Label_2060
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2060
	jmp	_Label_2061
_Label_2060:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2064 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2064  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1487,r13		! source line 1487
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2061:
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2066) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2065  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2065 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_2067:
!   if offset >= 8192 then goto _Label_2069		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2069
!	jmp	_Label_2068
_Label_2068:
	mov	1492,r13		! source line 1492
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2070 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2070  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2072		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2072
!	jmp	_Label_2071
_Label_2071:
! THEN...
	mov	1501,r13		! source line 1501
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2072:
! END WHILE...
	jmp	_Label_2067
_Label_2069:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2054
_Label_2056:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2073
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2074
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2075
	.word	12
	.word	4
	.word	_Label_2076
	.word	16
	.word	4
	.word	_Label_2077
	.word	20
	.word	4
	.word	_Label_2078
	.word	-9
	.word	1
	.word	_Label_2079
	.word	-16
	.word	4
	.word	_Label_2080
	.word	-20
	.word	4
	.word	_Label_2081
	.word	-24
	.word	4
	.word	_Label_2082
	.word	-28
	.word	4
	.word	_Label_2083
	.word	-10
	.word	1
	.word	_Label_2084
	.word	-32
	.word	4
	.word	_Label_2085
	.word	-36
	.word	4
	.word	_Label_2086
	.word	-40
	.word	4
	.word	_Label_2087
	.word	-44
	.word	4
	.word	_Label_2088
	.word	-48
	.word	4
	.word	0
_Label_2073:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2074:
	.ascii	"Pself\0"
	.align
_Label_2075:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2076:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2078:
	.byte	'C'
	.ascii	"_temp_2070\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2083:
	.byte	'C'
	.ascii	"_temp_2062\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2086:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2087:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2088:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3168:
	push	r0
	sub	r1,1,r1
	bne	_Label_3168
	mov	1511,r13		! source line 1511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2089
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2089
	jmp	_Label_2090
_Label_2089:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2091
_Label_2090:
! ELSE...
	mov	1524,r13		! source line 1524
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2093		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2093
!	jmp	_Label_2092
_Label_2092:
! THEN...
	mov	1525,r13		! source line 1525
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2093:
! END IF...
_Label_2091:
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0WH",r10
_Label_2094:
!	jmp	_Label_2095
_Label_2095:
	mov	1529,r13		! source line 1529
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2100		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2100
	jmp	_Label_2097
_Label_2100:
	mov	1531,r13		! source line 1531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2102) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2101 then goto _Label_2099 else goto _Label_2097
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2097
	jmp	_Label_2099
_Label_2099:
	mov	1532,r13		! source line 1532
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2104) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2103  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2103 then goto _Label_2098 else goto _Label_2097
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2097
	jmp	_Label_2098
_Label_2097:
! THEN...
	mov	1533,r13		! source line 1533
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2098:
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
	mov	1535,r13		! source line 1535
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2106) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2105  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2105 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0WH",r10
_Label_2107:
!   if offset >= 8192 then goto _Label_2109		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2109
!	jmp	_Label_2108
_Label_2108:
	mov	1536,r13		! source line 1536
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2110 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2110  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2112		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2112
!	jmp	_Label_2111
_Label_2111:
! THEN...
	mov	1543,r13		! source line 1543
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2112:
! END WHILE...
	jmp	_Label_2107
_Label_2109:
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2094
_Label_2096:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2113
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2115
	.word	12
	.word	4
	.word	_Label_2116
	.word	16
	.word	4
	.word	_Label_2117
	.word	20
	.word	4
	.word	_Label_2118
	.word	-9
	.word	1
	.word	_Label_2119
	.word	-16
	.word	4
	.word	_Label_2120
	.word	-20
	.word	4
	.word	_Label_2121
	.word	-24
	.word	4
	.word	_Label_2122
	.word	-10
	.word	1
	.word	_Label_2123
	.word	-28
	.word	4
	.word	_Label_2124
	.word	-11
	.word	1
	.word	_Label_2125
	.word	-32
	.word	4
	.word	_Label_2126
	.word	-36
	.word	4
	.word	_Label_2127
	.word	-40
	.word	4
	.word	_Label_2128
	.word	-44
	.word	4
	.word	0
_Label_2113:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2114:
	.ascii	"Pself\0"
	.align
_Label_2115:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2116:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2117:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2118:
	.byte	'C'
	.ascii	"_temp_2110\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2122:
	.byte	'C'
	.ascii	"_temp_2103\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2102\0"
	.align
_Label_2124:
	.byte	'C'
	.ascii	"_temp_2101\0"
	.align
_Label_2125:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2127:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	1553,r13		! source line 1553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
!   _temp_2132 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2133) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2132  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2131  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2131 >= 4 then goto _Label_2130		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2130
!	jmp	_Label_2129
_Label_2129:
! THEN...
	mov	1580,r13		! source line 1580
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2130:
! IF STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2135		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2135
!	jmp	_Label_2134
_Label_2134:
! THEN...
	mov	1585,r13		! source line 1585
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2135:
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0RE",r10
	mov	1590,r13		! source line 1590
	mov	"\0\0SE",r10
!   _temp_2138 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2137 = _temp_2138 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2139 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2140) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2137  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2139  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2136  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2136  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2141
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	16
	.word	4
	.word	_Label_2145
	.word	20
	.word	4
	.word	_Label_2146
	.word	-12
	.word	4
	.word	_Label_2147
	.word	-16
	.word	4
	.word	_Label_2148
	.word	-20
	.word	4
	.word	_Label_2149
	.word	-24
	.word	4
	.word	_Label_2150
	.word	-28
	.word	4
	.word	_Label_2151
	.word	-32
	.word	4
	.word	_Label_2152
	.word	-36
	.word	4
	.word	_Label_2153
	.word	-40
	.word	4
	.word	_Label_2154
	.word	-44
	.word	4
	.word	0
_Label_2141:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2155
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2155:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2156
	.word	_sourceFileName
	.word	312		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2156:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	2061,r13		! source line 2061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2157 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2157  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2062,r13		! source line 2062
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2065,r13		! source line 2065
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2066,r13		! source line 2066
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2069,r13		! source line 2069
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0SE",r10
!   _temp_2159 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0SE",r10
!   _temp_2161 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2162
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2163
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2164
	.word	-12
	.word	4
	.word	_Label_2165
	.word	-16
	.word	4
	.word	_Label_2166
	.word	-20
	.word	4
	.word	_Label_2167
	.word	-24
	.word	4
	.word	_Label_2168
	.word	-28
	.word	4
	.word	0
_Label_2162:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2163:
	.ascii	"Pself\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	2077,r13		! source line 2077
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_2169 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2091,r13		! source line 2091
	mov	"\0\0WH",r10
_Label_2170:
!	jmp	_Label_2171
_Label_2171:
	mov	2091,r13		! source line 2091
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2093,r13		! source line 2093
	mov	"\0\0SE",r10
!   _temp_2173 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2174) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2173  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   _temp_2175 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2098,r13		! source line 2098
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2184 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2178
	cmp	r1,2
	be	_Label_2179
	cmp	r1,3
	be	_Label_2180
	cmp	r1,4
	be	_Label_2181
	cmp	r1,5
	be	_Label_2182
	cmp	r1,6
	be	_Label_2183
	jmp	_Label_2176
! CASE 1...
_Label_2178:
! SEND STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_2185 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2179:
! CALL STATEMENT...
!   _temp_2186 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2103,r13		! source line 2103
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2180:
! CALL STATEMENT...
!   _temp_2187 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2187  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2105,r13		! source line 2105
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2181:
! CALL STATEMENT...
!   _temp_2188 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2188  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2107,r13		! source line 2107
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2182:
! BREAK STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0BR",r10
	jmp	_Label_2177
! CASE 6...
_Label_2183:
! CALL STATEMENT...
!   _temp_2189 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2113,r13		! source line 2113
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2176:
! CALL STATEMENT...
!   _temp_2190 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2190  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2115,r13		! source line 2115
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2177:
! END WHILE...
	jmp	_Label_2170
_Label_2172:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2191
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2192
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2193
	.word	12
	.word	4
	.word	_Label_2194
	.word	16
	.word	4
	.word	_Label_2195
	.word	20
	.word	4
	.word	_Label_2196
	.word	-12
	.word	4
	.word	_Label_2197
	.word	-16
	.word	4
	.word	_Label_2198
	.word	-20
	.word	4
	.word	_Label_2199
	.word	-24
	.word	4
	.word	_Label_2200
	.word	-28
	.word	4
	.word	_Label_2201
	.word	-32
	.word	4
	.word	_Label_2202
	.word	-36
	.word	4
	.word	_Label_2203
	.word	-40
	.word	4
	.word	_Label_2204
	.word	-44
	.word	4
	.word	_Label_2205
	.word	-48
	.word	4
	.word	_Label_2206
	.word	-52
	.word	4
	.word	0
_Label_2191:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2192:
	.ascii	"Pself\0"
	.align
_Label_2193:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2194:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2195:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2124,r13		! source line 2124
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2207
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	12
	.word	4
	.word	_Label_2210
	.word	16
	.word	4
	.word	_Label_2211
	.word	20
	.word	4
	.word	_Label_2212
	.word	24
	.word	4
	.word	0
_Label_2207:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2210:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2211:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2212:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	2150,r13		! source line 2150
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2162,r13		! source line 2162
	mov	"\0\0SE",r10
!   _temp_2213 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2163,r13		! source line 2163
	mov	"\0\0WH",r10
_Label_2214:
!	jmp	_Label_2215
_Label_2215:
	mov	2163,r13		! source line 2163
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0SE",r10
!   _temp_2217 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2218) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2217  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2219 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2169,r13		! source line 2169
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2228 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2222
	cmp	r1,2
	be	_Label_2223
	cmp	r1,3
	be	_Label_2224
	cmp	r1,4
	be	_Label_2225
	cmp	r1,5
	be	_Label_2226
	cmp	r1,6
	be	_Label_2227
	jmp	_Label_2220
! CASE 1...
_Label_2222:
! SEND STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0SE",r10
!   _temp_2229 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2223:
! CALL STATEMENT...
!   _temp_2230 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2230  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2174,r13		! source line 2174
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2224:
! CALL STATEMENT...
!   _temp_2231 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2231  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2176,r13		! source line 2176
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2225:
! CALL STATEMENT...
!   _temp_2232 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2232  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2178,r13		! source line 2178
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2226:
! BREAK STATEMENT...
	mov	2182,r13		! source line 2182
	mov	"\0\0BR",r10
	jmp	_Label_2221
! CASE 6...
_Label_2227:
! CALL STATEMENT...
!   _temp_2233 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2233  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2184,r13		! source line 2184
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2220:
! CALL STATEMENT...
!   _temp_2234 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2186,r13		! source line 2186
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2221:
! END WHILE...
	jmp	_Label_2214
_Label_2216:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2235
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2237
	.word	12
	.word	4
	.word	_Label_2238
	.word	16
	.word	4
	.word	_Label_2239
	.word	20
	.word	4
	.word	_Label_2240
	.word	-12
	.word	4
	.word	_Label_2241
	.word	-16
	.word	4
	.word	_Label_2242
	.word	-20
	.word	4
	.word	_Label_2243
	.word	-24
	.word	4
	.word	_Label_2244
	.word	-28
	.word	4
	.word	_Label_2245
	.word	-32
	.word	4
	.word	_Label_2246
	.word	-36
	.word	4
	.word	_Label_2247
	.word	-40
	.word	4
	.word	_Label_2248
	.word	-44
	.word	4
	.word	_Label_2249
	.word	-48
	.word	4
	.word	_Label_2250
	.word	-52
	.word	4
	.word	0
_Label_2235:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2236:
	.ascii	"Pself\0"
	.align
_Label_2237:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2238:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2239:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2195,r13		! source line 2195
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2251
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2253
	.word	12
	.word	4
	.word	_Label_2254
	.word	16
	.word	4
	.word	_Label_2255
	.word	20
	.word	4
	.word	_Label_2256
	.word	24
	.word	4
	.word	0
_Label_2251:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2252:
	.ascii	"Pself\0"
	.align
_Label_2253:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2254:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2255:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2256:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2257
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2257:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2258
	.word	_sourceFileName
	.word	335		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2258:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	2226,r13		! source line 2226
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2259 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2233,r13		! source line 2233
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2261 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2264 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2241,r13		! source line 2241
	mov	"\0\0AS",r10
!   _temp_2265 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2267 = &_temp_2266
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2267 = _temp_2267 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2269 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3174:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3174
!   _temp_2269 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2271:
!   Data Move: *_temp_2267 = _temp_2269  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3175:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3175
!   _temp_2267 = _temp_2267 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2268 = _temp_2268 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2268) then goto _Label_2271
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2271
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2272 = &_temp_2266
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3176
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3176:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2265 = *_temp_2272  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3177:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3177
! FOR STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2277 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2278 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2277  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2273:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2278 then goto _Label_2276		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2276
_Label_2274:
	mov	2243,r13		! source line 2243
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   _temp_2279 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2279 [i ] into _temp_2280
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2281 = _temp_2280 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2281 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0SE",r10
!   _temp_2282 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2282 [i ] into _temp_2283
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2285 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2285 [i ] into _temp_2286
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2284 = _temp_2286		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2287 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2284  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2275:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2273
! END FOR
_Label_2276:
! ASSIGNMENT STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_2290 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   _temp_2291 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2293 = &_temp_2292
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2293 = _temp_2293 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2295 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3178:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3178
!   _temp_2295 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2297:
!   Data Move: *_temp_2293 = _temp_2295  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3179:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3179
!   _temp_2293 = _temp_2293 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2294 = _temp_2294 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2294) then goto _Label_2297
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2297
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2298 = &_temp_2292
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3180
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3180:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2291 = *_temp_2298  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3181:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3181
! FOR STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2304 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2303  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2304 then goto _Label_2302		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2302
_Label_2300:
	mov	2255,r13		! source line 2255
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   _temp_2305 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2305 [i ] into _temp_2306
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2307 = _temp_2306 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2307 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   _temp_2309 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2309 [i ] into _temp_2310
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2308 = _temp_2310		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2311 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2308  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2301:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2299
! END FOR
_Label_2302:
! ASSIGNMENT STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3182:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3182
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   _temp_2313 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2314 = _temp_2313 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2314 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
	mov	2267,r13		! source line 2267
	mov	"\0\0SE",r10
!   _temp_2315 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0SE",r10
!   _temp_2316 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2317
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	-12
	.word	4
	.word	_Label_2320
	.word	-16
	.word	4
	.word	_Label_2321
	.word	-20
	.word	4
	.word	_Label_2322
	.word	-24
	.word	4
	.word	_Label_2323
	.word	-28
	.word	4
	.word	_Label_2324
	.word	-32
	.word	4
	.word	_Label_2325
	.word	-36
	.word	4
	.word	_Label_2326
	.word	-40
	.word	4
	.word	_Label_2327
	.word	-44
	.word	4
	.word	_Label_2328
	.word	-48
	.word	4
	.word	_Label_2329
	.word	-52
	.word	4
	.word	_Label_2330
	.word	-56
	.word	4
	.word	_Label_2331
	.word	-60
	.word	4
	.word	_Label_2332
	.word	-64
	.word	4
	.word	_Label_2333
	.word	-68
	.word	4
	.word	_Label_2334
	.word	-72
	.word	4
	.word	_Label_2335
	.word	-100
	.word	28
	.word	_Label_2336
	.word	-104
	.word	4
	.word	_Label_2337
	.word	-108
	.word	4
	.word	_Label_2338
	.word	-392
	.word	284
	.word	_Label_2339
	.word	-396
	.word	4
	.word	_Label_2340
	.word	-400
	.word	4
	.word	_Label_2341
	.word	-404
	.word	4
	.word	_Label_2342
	.word	-408
	.word	4
	.word	_Label_2343
	.word	-412
	.word	4
	.word	_Label_2344
	.word	-416
	.word	4
	.word	_Label_2345
	.word	-420
	.word	4
	.word	_Label_2346
	.word	-424
	.word	4
	.word	_Label_2347
	.word	-428
	.word	4
	.word	_Label_2348
	.word	-432
	.word	4
	.word	_Label_2349
	.word	-436
	.word	4
	.word	_Label_2350
	.word	-440
	.word	4
	.word	_Label_2351
	.word	-444
	.word	4
	.word	_Label_2352
	.word	-448
	.word	4
	.word	_Label_2353
	.word	-452
	.word	4
	.word	_Label_2354
	.word	-456
	.word	4
	.word	_Label_2355
	.word	-460
	.word	4
	.word	_Label_2356
	.word	-500
	.word	40
	.word	_Label_2357
	.word	-504
	.word	4
	.word	_Label_2358
	.word	-508
	.word	4
	.word	_Label_2359
	.word	-912
	.word	404
	.word	_Label_2360
	.word	-916
	.word	4
	.word	_Label_2361
	.word	-920
	.word	4
	.word	_Label_2362
	.word	-924
	.word	4
	.word	_Label_2363
	.word	-928
	.word	4
	.word	_Label_2364
	.word	-932
	.word	4
	.word	_Label_2365
	.word	-936
	.word	4
	.word	_Label_2366
	.word	-940
	.word	4
	.word	_Label_2367
	.word	-944
	.word	4
	.word	0
_Label_2317:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2367:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	2275,r13		! source line 2275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2368 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2369 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2278,r13		! source line 2278
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2374  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2375 then goto _Label_2373		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2373
_Label_2371:
	mov	2279,r13		! source line 2279
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2376 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2376  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2280,r13		! source line 2280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2377 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2282,r13		! source line 2282
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2378 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2378 [i ] into _temp_2379
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2372:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2370
! END FOR
_Label_2373:
! CALL STATEMENT...
!   _temp_2380 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2380  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2381 = _function_226_printFCB
	set	_function_226_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2382 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2381  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2287,r13		! source line 2287
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2383 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2383  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2388 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2389 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2388  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2384:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2389 then goto _Label_2387		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2387
_Label_2385:
	mov	2289,r13		! source line 2289
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2390 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2390  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2290,r13		! source line 2290
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2291,r13		! source line 2291
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2391 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2391  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2393 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2393 [i ] into _temp_2394
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2392 = _temp_2394		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2293,r13		! source line 2293
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2395 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2396 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2396 [i ] into _temp_2397
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2386:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2384
! END FOR
_Label_2387:
! CALL STATEMENT...
!   _temp_2398 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2297,r13		! source line 2297
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0SE",r10
!   _temp_2399 = _function_225_printOpen
	set	_function_225_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2400 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2399  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   _temp_2401 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2402
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2403
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2404
	.word	-12
	.word	4
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-28
	.word	4
	.word	_Label_2409
	.word	-32
	.word	4
	.word	_Label_2410
	.word	-36
	.word	4
	.word	_Label_2411
	.word	-40
	.word	4
	.word	_Label_2412
	.word	-44
	.word	4
	.word	_Label_2413
	.word	-48
	.word	4
	.word	_Label_2414
	.word	-52
	.word	4
	.word	_Label_2415
	.word	-56
	.word	4
	.word	_Label_2416
	.word	-60
	.word	4
	.word	_Label_2417
	.word	-64
	.word	4
	.word	_Label_2418
	.word	-68
	.word	4
	.word	_Label_2419
	.word	-72
	.word	4
	.word	_Label_2420
	.word	-76
	.word	4
	.word	_Label_2421
	.word	-80
	.word	4
	.word	_Label_2422
	.word	-84
	.word	4
	.word	_Label_2423
	.word	-88
	.word	4
	.word	_Label_2424
	.word	-92
	.word	4
	.word	_Label_2425
	.word	-96
	.word	4
	.word	_Label_2426
	.word	-100
	.word	4
	.word	_Label_2427
	.word	-104
	.word	4
	.word	_Label_2428
	.word	-108
	.word	4
	.word	_Label_2429
	.word	-112
	.word	4
	.word	_Label_2430
	.word	-116
	.word	4
	.word	0
_Label_2402:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2403:
	.ascii	"Pself\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2430:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	2304,r13		! source line 2304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
	mov	2320,r13		! source line 2320
	mov	"\0\0SE",r10
!   _temp_2431 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2432
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2432
	jmp	_Label_2433
_Label_2432:
! THEN...
	mov	2322,r13		! source line 2322
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2433:
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2434 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0WH",r10
_Label_2435:
	mov	2327,r13		! source line 2327
	mov	"\0\0SE",r10
!   _temp_2438 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2436 else goto _Label_2437
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2437
	jmp	_Label_2436
_Label_2436:
	mov	2327,r13		! source line 2327
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2439 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2440 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2439  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2435
_Label_2437:
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
	mov	2330,r13		! source line 2330
	mov	"\0\0SE",r10
!   _temp_2441 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2442 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2442 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2443 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2443 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2444 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2444 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0SE",r10
!   _temp_2445 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2446
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2448
	.word	12
	.word	4
	.word	_Label_2449
	.word	-12
	.word	4
	.word	_Label_2450
	.word	-16
	.word	4
	.word	_Label_2451
	.word	-20
	.word	4
	.word	_Label_2452
	.word	-24
	.word	4
	.word	_Label_2453
	.word	-28
	.word	4
	.word	_Label_2454
	.word	-32
	.word	4
	.word	_Label_2455
	.word	-36
	.word	4
	.word	_Label_2456
	.word	-40
	.word	4
	.word	_Label_2457
	.word	-44
	.word	4
	.word	_Label_2458
	.word	-48
	.word	4
	.word	_Label_2459
	.word	-52
	.word	4
	.word	_Label_2460
	.word	-56
	.word	4
	.word	0
_Label_2446:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2447:
	.ascii	"Pself\0"
	.align
_Label_2448:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2449:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2459:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2460:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	2345,r13		! source line 2345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2462		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2462
!	jmp	_Label_2461
_Label_2461:
! THEN...
	mov	2376,r13		! source line 2376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2463 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2463  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2376,r13		! source line 2376
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2462:
! ASSIGNMENT STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0WH",r10
_Label_2464:
!   if numFiles <= 0 then goto _Label_2466		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2466
!	jmp	_Label_2465
_Label_2465:
	mov	2386,r13		! source line 2386
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2467 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2467  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2387,r13		! source line 2387
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2468 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2468  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2469 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2469  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2391,r13		! source line 2391
	mov	"\0\0CA",r10
	call	_function_227_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2473 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2473 then goto _Label_2471		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2471
!	jmp	_Label_2472
_Label_2472:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2475
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2474 = _temp_2475		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2474  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2394,r13		! source line 2394
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2470 else goto _Label_2471
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2471
	jmp	_Label_2470
_Label_2470:
! THEN...
	mov	2395,r13		! source line 2395
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0BR",r10
	jmp	_Label_2466
! END IF...
_Label_2471:
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2464
_Label_2466:
! IF STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2477		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2477
!	jmp	_Label_2476
_Label_2476:
! THEN...
	mov	2403,r13		! source line 2403
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2403,r13		! source line 2403
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2477:
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_2478 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2483 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2484 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2483  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2479:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2484 then goto _Label_2482		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2482
_Label_2480:
	mov	2408,r13		! source line 2408
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   _temp_2485 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2485 [i ] into _temp_2486
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2486		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2489 = *_temp_2490  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2489 != start then goto _Label_2488		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2488
!	jmp	_Label_2487
_Label_2487:
! THEN...
	mov	2411,r13		! source line 2411
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2494 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2493 = *_temp_2494  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2492 = _temp_2493 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2491 = _temp_2492  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2495 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2488:
!   Increment the FOR-LOOP index variable and jump back
_Label_2481:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2479
! END FOR
_Label_2482:
! WHILE STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0WH",r10
_Label_2496:
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2499 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2497 else goto _Label_2498
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2498
	jmp	_Label_2497
_Label_2497:
	mov	2418,r13		! source line 2418
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2500 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2501 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2500  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2496
_Label_2498:
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2502 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2503 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2504 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2504 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2428,r13		! source line 2428
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2505 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2506 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2506 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2510 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2510 < 0 then goto _Label_2509		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2509
	jmp	_Label_2507
_Label_2509:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2512 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2512 ) then goto _Label_2508		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2508
!	jmp	_Label_2507
_Label_2507:
! THEN...
	mov	2431,r13		! source line 2431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2513 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2431,r13		! source line 2431
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2508:
! RETURN STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-12
	.word	4
	.word	_Label_2518
	.word	-16
	.word	4
	.word	_Label_2519
	.word	-20
	.word	4
	.word	_Label_2520
	.word	-24
	.word	4
	.word	_Label_2521
	.word	-28
	.word	4
	.word	_Label_2522
	.word	-32
	.word	4
	.word	_Label_2523
	.word	-36
	.word	4
	.word	_Label_2524
	.word	-40
	.word	4
	.word	_Label_2525
	.word	-44
	.word	4
	.word	_Label_2526
	.word	-48
	.word	4
	.word	_Label_2527
	.word	-52
	.word	4
	.word	_Label_2528
	.word	-56
	.word	4
	.word	_Label_2529
	.word	-60
	.word	4
	.word	_Label_2530
	.word	-64
	.word	4
	.word	_Label_2531
	.word	-68
	.word	4
	.word	_Label_2532
	.word	-72
	.word	4
	.word	_Label_2533
	.word	-76
	.word	4
	.word	_Label_2534
	.word	-80
	.word	4
	.word	_Label_2535
	.word	-84
	.word	4
	.word	_Label_2536
	.word	-88
	.word	4
	.word	_Label_2537
	.word	-92
	.word	4
	.word	_Label_2538
	.word	-96
	.word	4
	.word	_Label_2539
	.word	-100
	.word	4
	.word	_Label_2540
	.word	-104
	.word	4
	.word	_Label_2541
	.word	-108
	.word	4
	.word	_Label_2542
	.word	-112
	.word	4
	.word	_Label_2543
	.word	-116
	.word	4
	.word	_Label_2544
	.word	-120
	.word	4
	.word	_Label_2545
	.word	-124
	.word	4
	.word	_Label_2546
	.word	-128
	.word	4
	.word	_Label_2547
	.word	-132
	.word	4
	.word	_Label_2548
	.word	-136
	.word	4
	.word	_Label_2549
	.word	-140
	.word	4
	.word	_Label_2550
	.word	-144
	.word	4
	.word	_Label_2551
	.word	-148
	.word	4
	.word	_Label_2552
	.word	-152
	.word	4
	.word	_Label_2553
	.word	-156
	.word	4
	.word	_Label_2554
	.word	-160
	.word	4
	.word	0
_Label_2514:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2548:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2549:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2550:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2551:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2552:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2553:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2554:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	2446,r13		! source line 2446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   _temp_2557 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2557 then goto _Label_2556		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2556
!	jmp	_Label_2555
_Label_2555:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2556:
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2558 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_2559 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2560  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2561 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2564 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2563 = *_temp_2564  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2562 = _temp_2563 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2561 = _temp_2562  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2567 > 0 then goto _Label_2566		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2566
!	jmp	_Label_2565
_Label_2565:
! THEN...
	mov	2456,r13		! source line 2456
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2569 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2570 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2571 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2570  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2572 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2575 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2574 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2573 = _temp_2574 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2572 = _temp_2573  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2579 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2578 = *_temp_2579  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2578 > 0 then goto _Label_2577		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2577
!	jmp	_Label_2576
_Label_2576:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_2580 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_2581 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2582 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2581  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2577:
! END IF...
_Label_2566:
! SEND STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_2583 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2584
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2585
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2586
	.word	12
	.word	4
	.word	_Label_2587
	.word	-12
	.word	4
	.word	_Label_2588
	.word	-16
	.word	4
	.word	_Label_2589
	.word	-20
	.word	4
	.word	_Label_2590
	.word	-24
	.word	4
	.word	_Label_2591
	.word	-28
	.word	4
	.word	_Label_2592
	.word	-32
	.word	4
	.word	_Label_2593
	.word	-36
	.word	4
	.word	_Label_2594
	.word	-40
	.word	4
	.word	_Label_2595
	.word	-44
	.word	4
	.word	_Label_2596
	.word	-48
	.word	4
	.word	_Label_2597
	.word	-52
	.word	4
	.word	_Label_2598
	.word	-56
	.word	4
	.word	_Label_2599
	.word	-60
	.word	4
	.word	_Label_2600
	.word	-64
	.word	4
	.word	_Label_2601
	.word	-68
	.word	4
	.word	_Label_2602
	.word	-72
	.word	4
	.word	_Label_2603
	.word	-76
	.word	4
	.word	_Label_2604
	.word	-80
	.word	4
	.word	_Label_2605
	.word	-84
	.word	4
	.word	_Label_2606
	.word	-88
	.word	4
	.word	_Label_2607
	.word	-92
	.word	4
	.word	_Label_2608
	.word	-96
	.word	4
	.word	_Label_2609
	.word	-100
	.word	4
	.word	_Label_2610
	.word	-104
	.word	4
	.word	0
_Label_2584:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2585:
	.ascii	"Pself\0"
	.align
_Label_2586:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2610:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	2469,r13		! source line 2469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2614 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2613 = *_temp_2614  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2613) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = _temp_2613 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2615 ) then goto _Label_2612		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2612
!	jmp	_Label_2611
_Label_2611:
! THEN...
	mov	2475,r13		! source line 2475
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2619) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = _temp_2619 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2618 = *_temp_2621  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2618 >= 0 then goto _Label_2617		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2617
!	jmp	_Label_2616
_Label_2616:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2622 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2622  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2476,r13		! source line 2476
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2617:
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2623 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = _temp_2623 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2625 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2628) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = _temp_2628 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2627 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2632 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2632) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = _temp_2632 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2631 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2626 = _temp_2627 + _temp_2631		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2637 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2636 = *_temp_2637  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2636) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = _temp_2636 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2635 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2639 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2626  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2635  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2612:
! RETURN STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2640
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2642
	.word	12
	.word	4
	.word	_Label_2643
	.word	-12
	.word	4
	.word	_Label_2644
	.word	-16
	.word	4
	.word	_Label_2645
	.word	-20
	.word	4
	.word	_Label_2646
	.word	-24
	.word	4
	.word	_Label_2647
	.word	-28
	.word	4
	.word	_Label_2648
	.word	-32
	.word	4
	.word	_Label_2649
	.word	-36
	.word	4
	.word	_Label_2650
	.word	-40
	.word	4
	.word	_Label_2651
	.word	-44
	.word	4
	.word	_Label_2652
	.word	-48
	.word	4
	.word	_Label_2653
	.word	-52
	.word	4
	.word	_Label_2654
	.word	-56
	.word	4
	.word	_Label_2655
	.word	-60
	.word	4
	.word	_Label_2656
	.word	-64
	.word	4
	.word	_Label_2657
	.word	-68
	.word	4
	.word	_Label_2658
	.word	-72
	.word	4
	.word	_Label_2659
	.word	-76
	.word	4
	.word	_Label_2660
	.word	-80
	.word	4
	.word	_Label_2661
	.word	-84
	.word	4
	.word	_Label_2662
	.word	-88
	.word	4
	.word	_Label_2663
	.word	-92
	.word	4
	.word	_Label_2664
	.word	-96
	.word	4
	.word	_Label_2665
	.word	-100
	.word	4
	.word	_Label_2666
	.word	-104
	.word	4
	.word	_Label_2667
	.word	-108
	.word	4
	.word	0
_Label_2640:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2641:
	.ascii	"Pself\0"
	.align
_Label_2642:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	2488,r13		! source line 2488
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2668 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2674		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2674
!   _temp_2673 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2675
_Label_2674:
!   _temp_2673 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2675:
!   if _temp_2673 then goto _Label_2672 else goto _Label_2669
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2669
	jmp	_Label_2672
_Label_2672:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2678 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2677 = *_temp_2678  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2677 == 0 then goto _Label_2679		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2679
!   _temp_2676 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2680
_Label_2679:
!   _temp_2676 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2680:
!   if _temp_2676 then goto _Label_2671 else goto _Label_2669
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2669
	jmp	_Label_2671
_Label_2671:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2683 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2682 = *_temp_2683  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2682) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = _temp_2682 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2681 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2681 >= 0 then goto _Label_2670		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2670
!	jmp	_Label_2669
_Label_2669:
! THEN...
	mov	2505,r13		! source line 2505
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2685 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2505,r13		! source line 2505
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2670:
! ASSIGNMENT STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2686 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2686  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0WH",r10
_Label_2687:
!   if numBytes <= 0 then goto _Label_2689		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2689
!	jmp	_Label_2688
_Label_2688:
	mov	2508,r13		! source line 2508
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2693 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2692 = *_temp_2693  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2692 == sector then goto _Label_2691		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2691
!	jmp	_Label_2690
_Label_2690:
! THEN...
	mov	2523,r13		! source line 2523
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2694) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2697 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2696 = *_temp_2697  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2695 = sector + _temp_2696		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2699 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2698 = *_temp_2699  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2700 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2695  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2698  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2701 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2701 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2702 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2702 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2691:
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2704 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2703 = *_temp_2704  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2703 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   _temp_2705 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2705  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2536,r13		! source line 2536
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2687
_Label_2689:
! SEND STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_2706 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2707
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2708
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2709
	.word	12
	.word	4
	.word	_Label_2710
	.word	16
	.word	4
	.word	_Label_2711
	.word	20
	.word	4
	.word	_Label_2712
	.word	24
	.word	4
	.word	_Label_2713
	.word	-16
	.word	4
	.word	_Label_2714
	.word	-20
	.word	4
	.word	_Label_2715
	.word	-24
	.word	4
	.word	_Label_2716
	.word	-28
	.word	4
	.word	_Label_2717
	.word	-32
	.word	4
	.word	_Label_2718
	.word	-36
	.word	4
	.word	_Label_2719
	.word	-40
	.word	4
	.word	_Label_2720
	.word	-44
	.word	4
	.word	_Label_2721
	.word	-48
	.word	4
	.word	_Label_2722
	.word	-52
	.word	4
	.word	_Label_2723
	.word	-56
	.word	4
	.word	_Label_2724
	.word	-60
	.word	4
	.word	_Label_2725
	.word	-64
	.word	4
	.word	_Label_2726
	.word	-68
	.word	4
	.word	_Label_2727
	.word	-72
	.word	4
	.word	_Label_2728
	.word	-76
	.word	4
	.word	_Label_2729
	.word	-80
	.word	4
	.word	_Label_2730
	.word	-84
	.word	4
	.word	_Label_2731
	.word	-88
	.word	4
	.word	_Label_2732
	.word	-92
	.word	4
	.word	_Label_2733
	.word	-96
	.word	4
	.word	_Label_2734
	.word	-100
	.word	4
	.word	_Label_2735
	.word	-104
	.word	4
	.word	_Label_2736
	.word	-9
	.word	1
	.word	_Label_2737
	.word	-10
	.word	1
	.word	_Label_2738
	.word	-108
	.word	4
	.word	_Label_2739
	.word	-112
	.word	4
	.word	_Label_2740
	.word	-116
	.word	4
	.word	_Label_2741
	.word	-120
	.word	4
	.word	_Label_2742
	.word	-124
	.word	4
	.word	_Label_2743
	.word	-128
	.word	4
	.word	0
_Label_2707:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2708:
	.ascii	"Pself\0"
	.align
_Label_2709:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2710:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2711:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2712:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2736:
	.byte	'C'
	.ascii	"_temp_2676\0"
	.align
_Label_2737:
	.byte	'C'
	.ascii	"_temp_2673\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2739:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2740:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2741:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2742:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2743:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	2552,r13		! source line 2552
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_2744 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2750		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2750
!   _temp_2749 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2751
_Label_2750:
!   _temp_2749 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2751:
!   if _temp_2749 then goto _Label_2748 else goto _Label_2745
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2745
	jmp	_Label_2748
_Label_2748:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2754 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2753 = *_temp_2754  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2753 == 0 then goto _Label_2755		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2755
!   _temp_2752 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2756
_Label_2755:
!   _temp_2752 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2756:
!   if _temp_2752 then goto _Label_2747 else goto _Label_2745
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2745
	jmp	_Label_2747
_Label_2747:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2758) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = _temp_2758 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2757 = *_temp_2760  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2757 >= 0 then goto _Label_2746		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2746
!	jmp	_Label_2745
_Label_2745:
! THEN...
	mov	2570,r13		! source line 2570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2761 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2570,r13		! source line 2570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2746:
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2762 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2762  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0WH",r10
_Label_2763:
!   if numBytes <= 0 then goto _Label_2765		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2765
!	jmp	_Label_2764
_Label_2764:
	mov	2573,r13		! source line 2573
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2768 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2768 == sector then goto _Label_2767		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2767
!	jmp	_Label_2766
_Label_2766:
! THEN...
	mov	2589,r13		! source line 2589
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2770) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2767:
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2771 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   _temp_2773 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2773  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2776 = *_temp_2777  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2776 != sector then goto _Label_2775		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2775
!	jmp	_Label_2774
_Label_2774:
	jmp	_Label_2778
_Label_2775:
! ELSE...
	mov	2595,r13		! source line 2595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2781
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2781
	jmp	_Label_2780
_Label_2781:
!   if bytesToMove != 8192 then goto _Label_2780		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2780
!	jmp	_Label_2779
_Label_2779:
	jmp	_Label_2782
_Label_2780:
! ELSE...
	mov	2599,r13		! source line 2599
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2785 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2784 = *_temp_2785  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2783 = sector + _temp_2784		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2787 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2786 = *_temp_2787  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2788 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2783  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2786  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2782:
! END IF...
_Label_2778:
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2789 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2790 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2608,r13		! source line 2608
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2610,r13		! source line 2610
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2763
_Label_2765:
! SEND STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0SE",r10
!   _temp_2791 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2792
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2793
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2794
	.word	12
	.word	4
	.word	_Label_2795
	.word	16
	.word	4
	.word	_Label_2796
	.word	20
	.word	4
	.word	_Label_2797
	.word	24
	.word	4
	.word	_Label_2798
	.word	-16
	.word	4
	.word	_Label_2799
	.word	-20
	.word	4
	.word	_Label_2800
	.word	-24
	.word	4
	.word	_Label_2801
	.word	-28
	.word	4
	.word	_Label_2802
	.word	-32
	.word	4
	.word	_Label_2803
	.word	-36
	.word	4
	.word	_Label_2804
	.word	-40
	.word	4
	.word	_Label_2805
	.word	-44
	.word	4
	.word	_Label_2806
	.word	-48
	.word	4
	.word	_Label_2807
	.word	-52
	.word	4
	.word	_Label_2808
	.word	-56
	.word	4
	.word	_Label_2809
	.word	-60
	.word	4
	.word	_Label_2810
	.word	-64
	.word	4
	.word	_Label_2811
	.word	-68
	.word	4
	.word	_Label_2812
	.word	-72
	.word	4
	.word	_Label_2813
	.word	-76
	.word	4
	.word	_Label_2814
	.word	-80
	.word	4
	.word	_Label_2815
	.word	-84
	.word	4
	.word	_Label_2816
	.word	-88
	.word	4
	.word	_Label_2817
	.word	-92
	.word	4
	.word	_Label_2818
	.word	-96
	.word	4
	.word	_Label_2819
	.word	-100
	.word	4
	.word	_Label_2820
	.word	-104
	.word	4
	.word	_Label_2821
	.word	-108
	.word	4
	.word	_Label_2822
	.word	-112
	.word	4
	.word	_Label_2823
	.word	-9
	.word	1
	.word	_Label_2824
	.word	-10
	.word	1
	.word	_Label_2825
	.word	-116
	.word	4
	.word	_Label_2826
	.word	-120
	.word	4
	.word	_Label_2827
	.word	-124
	.word	4
	.word	_Label_2828
	.word	-128
	.word	4
	.word	_Label_2829
	.word	-132
	.word	4
	.word	_Label_2830
	.word	-136
	.word	4
	.word	0
_Label_2792:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2793:
	.ascii	"Pself\0"
	.align
_Label_2794:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2795:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2823:
	.byte	'C'
	.ascii	"_temp_2752\0"
	.align
_Label_2824:
	.byte	'C'
	.ascii	"_temp_2749\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2826:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2827:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2830:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2831
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2831:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2832
	.word	_sourceFileName
	.word	360		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2832:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3190:
	push	r0
	sub	r1,1,r1
	bne	_Label_3190
	mov	2656,r13		! source line 2656
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   _temp_2833 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2834
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2836
	.word	-12
	.word	4
	.word	0
_Label_2834:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2835:
	.ascii	"Pself\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3191:
	push	r0
	sub	r1,1,r1
	bne	_Label_3191
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2837 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2837  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2838 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2839 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2839  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2840 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2841 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2675,r13		! source line 2675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2676,r13		! source line 2676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2842 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2842  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2677,r13		! source line 2677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2678,r13		! source line 2678
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2679,r13		! source line 2679
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2843
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2845
	.word	-12
	.word	4
	.word	_Label_2846
	.word	-16
	.word	4
	.word	_Label_2847
	.word	-20
	.word	4
	.word	_Label_2848
	.word	-24
	.word	4
	.word	_Label_2849
	.word	-28
	.word	4
	.word	_Label_2850
	.word	-32
	.word	4
	.word	0
_Label_2843:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2844:
	.ascii	"Pself\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2851
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2851:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2852
	.word	_sourceFileName
	.word	377		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2852:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3192:
	push	r0
	sub	r1,1,r1
	bne	_Label_3192
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2853 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2854 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2854  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2856		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2856
!	jmp	_Label_2855
_Label_2855:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2857
_Label_2856:
! ELSE...
	mov	2697,r13		! source line 2697
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2858 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2858  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2697,r13		! source line 2697
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2857:
! RETURN STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2859
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2861
	.word	-12
	.word	4
	.word	_Label_2862
	.word	-16
	.word	4
	.word	_Label_2863
	.word	-20
	.word	4
	.word	0
_Label_2859:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2860:
	.ascii	"Pself\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3193:
	push	r0
	sub	r1,1,r1
	bne	_Label_3193
	mov	2703,r13		! source line 2703
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0SE",r10
!   _temp_2864 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2865 = _temp_2864 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2715,r13		! source line 2715
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2716,r13		! source line 2716
	mov	"\0\0SE",r10
!   _temp_2866 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2867 = _temp_2866 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0RE",r10
	mov	2717,r13		! source line 2717
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2870 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2869  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2868  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2868  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2871
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2873
	.word	12
	.word	4
	.word	_Label_2874
	.word	16
	.word	4
	.word	_Label_2875
	.word	-16
	.word	4
	.word	_Label_2876
	.word	-20
	.word	4
	.word	_Label_2877
	.word	-9
	.word	1
	.word	_Label_2878
	.word	-24
	.word	4
	.word	_Label_2879
	.word	-28
	.word	4
	.word	_Label_2880
	.word	-32
	.word	4
	.word	_Label_2881
	.word	-36
	.word	4
	.word	_Label_2882
	.word	-40
	.word	4
	.word	0
_Label_2871:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2872:
	.ascii	"Pself\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2874:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2877:
	.byte	'C'
	.ascii	"_temp_2868\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2882:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3194:
	push	r0
	sub	r1,1,r1
	bne	_Label_3194
	mov	2722,r13		! source line 2722
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0IF",r10
	mov	2727,r13		! source line 2727
	mov	"\0\0SE",r10
!   _temp_2886 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2887) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2886  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2885  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2885 then goto _Label_2884 else goto _Label_2883
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2883
	jmp	_Label_2884
_Label_2883:
! THEN...
	mov	2728,r13		! source line 2728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2888 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2888  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2728,r13		! source line 2728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2884:
! RETURN STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2889
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2891
	.word	-16
	.word	4
	.word	_Label_2892
	.word	-20
	.word	4
	.word	_Label_2893
	.word	-24
	.word	4
	.word	_Label_2894
	.word	-9
	.word	1
	.word	_Label_2895
	.word	-28
	.word	4
	.word	0
_Label_2889:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2890:
	.ascii	"Pself\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2894:
	.byte	'C'
	.ascii	"_temp_2885\0"
	.align
_Label_2895:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3195:
	push	r0
	sub	r1,1,r1
	bne	_Label_3195
	mov	2735,r13		! source line 2735
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2898 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2898) then goto _Label_2897
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2897
!	jmp	_Label_2896
_Label_2896:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2762,r13		! source line 2762
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2897:
! IF STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0IF",r10
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2904) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2903  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2903 == 1112300152 then goto _Label_2902		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2902
!	jmp	_Label_2901
_Label_2901:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2905 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2905  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2902:
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2906) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2907) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
	mov	2774,r13		! source line 2774
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2908) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
	mov	2775,r13		! source line 2775
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2910) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2911) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2780,r13		! source line 2780
	mov	"\0\0IF",r10
!   _temp_2914 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2914) then goto _Label_2913
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2913
!	jmp	_Label_2912
_Label_2912:
! THEN...
	mov	2781,r13		! source line 2781
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2915 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2915  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2781,r13		! source line 2781
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2913:
! ASSIGNMENT STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2917
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2917
!	jmp	_Label_2916
_Label_2916:
! THEN...
	mov	2789,r13		! source line 2789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2918 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2917:
! IF STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0IF",r10
!   _temp_2921 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2921) then goto _Label_2920
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2920
!	jmp	_Label_2919
_Label_2919:
! THEN...
	mov	2795,r13		! source line 2795
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2922 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2922  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2920:
! IF STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0IF",r10
!   _temp_2925 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2925 then goto _Label_2924		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2924
!	jmp	_Label_2923
_Label_2923:
! THEN...
	mov	2799,r13		! source line 2799
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2926 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2924:
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0IF",r10
!   _temp_2929 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2929) then goto _Label_2928
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2928
!	jmp	_Label_2927
_Label_2927:
! THEN...
	mov	2806,r13		! source line 2806
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2930 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2930  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2928:
! IF STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0IF",r10
!   _temp_2933 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2933 then goto _Label_2932		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2932
!	jmp	_Label_2931
_Label_2931:
! THEN...
	mov	2810,r13		! source line 2810
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2934 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2934  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2932:
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   _temp_2937 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2936 = _temp_2937 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2935 = _temp_2936 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2935 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2939		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2939
!	jmp	_Label_2938
_Label_2938:
! THEN...
	mov	2832,r13		! source line 2832
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2940 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2940  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2832,r13		! source line 2832
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2941 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2941  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2942 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2942  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2939:
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   _temp_2943 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0IF",r10
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2947) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2946  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2946 == 707406378 then goto _Label_2945		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2945
!	jmp	_Label_2944
_Label_2944:
! THEN...
	mov	2844,r13		! source line 2844
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2948 = _StringConst_220
	set	_StringConst_220,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2948  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2844,r13		! source line 2844
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0SE",r10
!   _temp_2949 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2945:
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2954 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2955 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2954  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2950:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2955 then goto _Label_2953		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2953
_Label_2951:
	mov	2851,r13		! source line 2851
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0IF",r10
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2959) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2958  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2958 then goto _Label_2957 else goto _Label_2956
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2956
	jmp	_Label_2957
_Label_2956:
! THEN...
	mov	2856,r13		! source line 2856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2960 = _StringConst_221
	set	_StringConst_221,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2960  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_2961 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2957:
! SEND STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2952:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2950
! END FOR
_Label_2953:
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2965) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2964  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2964 == 707406378 then goto _Label_2963		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2963
!	jmp	_Label_2962
_Label_2962:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2966 = _StringConst_222
	set	_StringConst_222,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2866,r13		! source line 2866
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0SE",r10
!   _temp_2967 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2963:
! FOR STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2972 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2973 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2972  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2968:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2973 then goto _Label_2971		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2971
_Label_2969:
	mov	2872,r13		! source line 2872
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0IF",r10
	mov	2876,r13		! source line 2876
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2977) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2976  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2976 then goto _Label_2975 else goto _Label_2974
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2974
	jmp	_Label_2975
_Label_2974:
! THEN...
	mov	2877,r13		! source line 2877
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2978 = _StringConst_223
	set	_StringConst_223,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2978  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2877,r13		! source line 2877
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0SE",r10
!   _temp_2979 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2975:
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2970:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2968
! END FOR
_Label_2971:
! IF STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0IF",r10
	mov	2885,r13		! source line 2885
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2983) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2982  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2982 == 707406378 then goto _Label_2981		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2981
!	jmp	_Label_2980
_Label_2980:
! THEN...
	mov	2886,r13		! source line 2886
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2984 = _StringConst_224
	set	_StringConst_224,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2984  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   _temp_2985 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2981:
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2986
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2987
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2988
	.word	12
	.word	4
	.word	_Label_2989
	.word	-16
	.word	4
	.word	_Label_2990
	.word	-20
	.word	4
	.word	_Label_2991
	.word	-24
	.word	4
	.word	_Label_2992
	.word	-28
	.word	4
	.word	_Label_2993
	.word	-32
	.word	4
	.word	_Label_2994
	.word	-36
	.word	4
	.word	_Label_2995
	.word	-40
	.word	4
	.word	_Label_2996
	.word	-9
	.word	1
	.word	_Label_2997
	.word	-44
	.word	4
	.word	_Label_2998
	.word	-48
	.word	4
	.word	_Label_2999
	.word	-52
	.word	4
	.word	_Label_3000
	.word	-56
	.word	4
	.word	_Label_3001
	.word	-60
	.word	4
	.word	_Label_3002
	.word	-64
	.word	4
	.word	_Label_3003
	.word	-68
	.word	4
	.word	_Label_3004
	.word	-72
	.word	4
	.word	_Label_3005
	.word	-76
	.word	4
	.word	_Label_3006
	.word	-10
	.word	1
	.word	_Label_3007
	.word	-80
	.word	4
	.word	_Label_3008
	.word	-84
	.word	4
	.word	_Label_3009
	.word	-88
	.word	4
	.word	_Label_3010
	.word	-92
	.word	4
	.word	_Label_3011
	.word	-96
	.word	4
	.word	_Label_3012
	.word	-100
	.word	4
	.word	_Label_3013
	.word	-104
	.word	4
	.word	_Label_3014
	.word	-108
	.word	4
	.word	_Label_3015
	.word	-112
	.word	4
	.word	_Label_3016
	.word	-116
	.word	4
	.word	_Label_3017
	.word	-120
	.word	4
	.word	_Label_3018
	.word	-124
	.word	4
	.word	_Label_3019
	.word	-128
	.word	4
	.word	_Label_3020
	.word	-132
	.word	4
	.word	_Label_3021
	.word	-136
	.word	4
	.word	_Label_3022
	.word	-140
	.word	4
	.word	_Label_3023
	.word	-144
	.word	4
	.word	_Label_3024
	.word	-148
	.word	4
	.word	_Label_3025
	.word	-152
	.word	4
	.word	_Label_3026
	.word	-156
	.word	4
	.word	_Label_3027
	.word	-160
	.word	4
	.word	_Label_3028
	.word	-164
	.word	4
	.word	_Label_3029
	.word	-168
	.word	4
	.word	_Label_3030
	.word	-172
	.word	4
	.word	_Label_3031
	.word	-176
	.word	4
	.word	_Label_3032
	.word	-180
	.word	4
	.word	_Label_3033
	.word	-184
	.word	4
	.word	_Label_3034
	.word	-188
	.word	4
	.word	_Label_3035
	.word	-192
	.word	4
	.word	_Label_3036
	.word	-196
	.word	4
	.word	_Label_3037
	.word	-200
	.word	4
	.word	_Label_3038
	.word	-204
	.word	4
	.word	_Label_3039
	.word	-208
	.word	4
	.word	_Label_3040
	.word	-212
	.word	4
	.word	_Label_3041
	.word	-216
	.word	4
	.word	_Label_3042
	.word	-220
	.word	4
	.word	_Label_3043
	.word	-224
	.word	4
	.word	_Label_3044
	.word	-228
	.word	4
	.word	_Label_3045
	.word	-232
	.word	4
	.word	_Label_3046
	.word	-236
	.word	4
	.word	_Label_3047
	.word	-240
	.word	4
	.word	_Label_3048
	.word	-244
	.word	4
	.word	_Label_3049
	.word	-248
	.word	4
	.word	_Label_3050
	.word	-252
	.word	4
	.word	_Label_3051
	.word	-256
	.word	4
	.word	_Label_3052
	.word	-260
	.word	4
	.word	_Label_3053
	.word	-264
	.word	4
	.word	_Label_3054
	.word	-268
	.word	4
	.word	0
_Label_2986:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2987:
	.ascii	"Pself\0"
	.align
_Label_2988:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_2996:
	.byte	'C'
	.ascii	"_temp_2976\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_3006:
	.byte	'C'
	.ascii	"_temp_2958\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3046:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3047:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3048:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3049:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3050:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3051:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3054:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
