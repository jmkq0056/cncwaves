.class public interface abstract Lcom/sun/jna/platform/win32/Kernel32;
.super Ljava/lang/Object;
.source "Kernel32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;
.implements Lcom/sun/jna/platform/win32/WinNT;
.implements Lcom/sun/jna/platform/win32/Wincon;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

.field public static final LOAD_LIBRARY_AS_DATAFILE:I = 0x2

.field public static final MAX_PIPE_NAME_LENGTH:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-class v0, Lcom/sun/jna/platform/win32/Kernel32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "kernel32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Kernel32;

    sput-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    return-void
.end method


# virtual methods
.method public abstract CallNamedPipe(Ljava/lang/String;[BI[BILcom/sun/jna/ptr/IntByReference;I)Z
.end method

.method public abstract CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract ConnectNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z
.end method

.method public abstract CopyFile(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract CreateDirectory(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;)Z
.end method

.method public abstract CreateEvent(Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ZZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateFile(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IILcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateFileMapping(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IIILjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateIoCompletionPort(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateMutex(Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateNamedPipe(Ljava/lang/String;IIIIIILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreatePipe(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;I)Z
.end method

.method public abstract CreateProcess(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ZLcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;)Z
.end method

.method public abstract CreateProcessW(Ljava/lang/String;[CLcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ZLcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;)Z
.end method

.method public abstract CreateRemoteThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract CreateRemoteThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;ILcom/sun/jna/platform/win32/WinBase$FOREIGN_THREAD_START_ROUTINE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract CreateToolhelp32Snapshot(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract DefineDosDevice(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract DeleteFile(Ljava/lang/String;)Z
.end method

.method public abstract DeleteVolumeMountPoint(Ljava/lang/String;)Z
.end method

.method public abstract DeviceIoControl(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract DisconnectNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract DuplicateHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;IZI)Z
.end method

.method public abstract EnumResourceNames(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$EnumResNameProc;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract EnumResourceTypes(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinBase$EnumResTypeProc;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract ExitProcess(I)V
.end method

.method public abstract ExpandEnvironmentStrings(Ljava/lang/String;Lcom/sun/jna/Pointer;I)I
.end method

.method public abstract FileTimeToLocalFileTime(Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Z
.end method

.method public abstract FileTimeToSystemTime(Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)Z
.end method

.method public abstract FindClose(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FindFirstFile(Ljava/lang/String;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindFirstFileEx(Ljava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindFirstVolume([CI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindFirstVolumeMountPoint(Ljava/lang/String;[CI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindNextFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract FindNextVolume(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[CI)Z
.end method

.method public abstract FindNextVolumeMountPoint(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[CI)Z
.end method

.method public abstract FindResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinDef$HRSRC;
.end method

.method public abstract FindVolumeClose(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FindVolumeMountPointClose(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FlushFileBuffers(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FormatMessage(ILcom/sun/jna/Pointer;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/Pointer;)I
.end method

.method public abstract FreeEnvironmentStrings(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z
.end method

.method public abstract GetCommState(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$DCB;)Z
.end method

.method public abstract GetCommTimeouts(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$COMMTIMEOUTS;)Z
.end method

.method public abstract GetComputerName([CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetComputerNameEx(I[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetCurrentProcess()Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract GetCurrentProcessId()I
.end method

.method public abstract GetCurrentThread()Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract GetCurrentThreadId()I
.end method

.method public abstract GetDiskFreeSpace(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z
.end method

.method public abstract GetDiskFreeSpaceEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;)Z
.end method

.method public abstract GetDriveType(Ljava/lang/String;)I
.end method

.method public abstract GetEnvironmentStrings()Lcom/sun/jna/Pointer;
.end method

.method public abstract GetEnvironmentVariable(Ljava/lang/String;[CI)I
.end method

.method public abstract GetExitCodeProcess(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetExitCodeThread(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetFileAttributes(Ljava/lang/String;)I
.end method

.method public abstract GetFileInformationByHandleEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract GetFileTime(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Z
.end method

.method public abstract GetFileType(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract GetLastError()I
.end method

.method public abstract GetLocalTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)V
.end method

.method public abstract GetLogicalDriveStrings(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetLogicalProcessorInformation(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z
.end method

.method public abstract GetLogicalProcessorInformationEx(ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z
.end method

.method public abstract GetModuleHandle(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$HMODULE;
.end method

.method public abstract GetNamedPipeClientComputerName(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[CI)Z
.end method

.method public abstract GetNamedPipeClientProcessId(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Z
.end method

.method public abstract GetNamedPipeClientSessionId(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Z
.end method

.method public abstract GetNamedPipeHandleState(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[CI)Z
.end method

.method public abstract GetNamedPipeInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GetNamedPipeServerProcessId(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Z
.end method

.method public abstract GetNamedPipeServerSessionId(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;)Z
.end method

.method public abstract GetNativeSystemInfo(Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO;)V
.end method

.method public abstract GetPrivateProfileInt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract GetPrivateProfileSection(Ljava/lang/String;[CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetPrivateProfileSectionNames([CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetPrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetProcAddress(Lcom/sun/jna/platform/win32/WinDef$HMODULE;I)Lcom/sun/jna/Pointer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/LastErrorException;
        }
    .end annotation
.end method

.method public abstract GetProcessId(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract GetProcessIoCounters(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$IO_COUNTERS;)Z
.end method

.method public abstract GetProcessTimes(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Z
.end method

.method public abstract GetProcessVersion(I)I
.end method

.method public abstract GetQueuedCompletionStatus(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;Lcom/sun/jna/ptr/PointerByReference;I)Z
.end method

.method public abstract GetShortPathName(Ljava/lang/String;[CI)I
.end method

.method public abstract GetSystemDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;
.end method

.method public abstract GetSystemInfo(Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO;)V
.end method

.method public abstract GetSystemTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)V
.end method

.method public abstract GetSystemTimes(Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Z
.end method

.method public abstract GetTempPath(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetTickCount()I
.end method

.method public abstract GetTickCount64()J
.end method

.method public abstract GetUserDefaultLCID()Lcom/sun/jna/platform/win32/WinDef$LCID;
.end method

.method public abstract GetVersion()Lcom/sun/jna/platform/win32/WinDef$DWORD;
.end method

.method public abstract GetVersionEx(Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;)Z
.end method

.method public abstract GetVersionEx(Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;)Z
.end method

.method public abstract GetVolumeInformation(Ljava/lang/String;[CILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[CI)Z
.end method

.method public abstract GetVolumeNameForVolumeMountPoint(Ljava/lang/String;[CI)Z
.end method

.method public abstract GetVolumePathName(Ljava/lang/String;[CI)Z
.end method

.method public abstract GetVolumePathNamesForVolumeName(Ljava/lang/String;[CILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract GlobalFree(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;
.end method

.method public abstract GlobalMemoryStatusEx(Lcom/sun/jna/platform/win32/WinBase$MEMORYSTATUSEX;)Z
.end method

.method public abstract IsWow64Process(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract LoadLibraryEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$HMODULE;
.end method

.method public abstract LoadResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinDef$HRSRC;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract LocalAlloc(II)Lcom/sun/jna/Pointer;
.end method

.method public abstract LocalFree(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;
.end method

.method public abstract LockResource(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/Pointer;
.end method

.method public abstract MapViewOfFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIII)Lcom/sun/jna/Pointer;
.end method

.method public abstract Module32FirstW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;)Z
.end method

.method public abstract Module32NextW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;)Z
.end method

.method public abstract MoveFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract MoveFileEx(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract OpenEvent(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenMutex(IZLjava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenProcess(IZI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract OpenThread(IZI)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract PeekNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract PostQueuedCompletionStatus(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z
.end method

.method public abstract Process32First(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$PROCESSENTRY32;)Z
.end method

.method public abstract Process32Next(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$PROCESSENTRY32;)Z
.end method

.method public abstract ProcessIdToSessionId(ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract PulseEvent(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract QueryDosDevice(Ljava/lang/String;[CI)I
.end method

.method public abstract QueryFullProcessImageName(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract ReadDirectoryChangesW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;IZILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;Lcom/sun/jna/platform/win32/WinNT$OVERLAPPED_COMPLETION_ROUTINE;)Z
.end method

.method public abstract ReadFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z
.end method

.method public abstract ReadProcessMemory(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract ReleaseMutex(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract ResetEvent(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract SetCommState(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$DCB;)Z
.end method

.method public abstract SetCommTimeouts(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$COMMTIMEOUTS;)Z
.end method

.method public abstract SetEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract SetErrorMode(I)I
.end method

.method public abstract SetEvent(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract SetFileAttributes(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract SetFileInformationByHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z
.end method

.method public abstract SetFileTime(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I
.end method

.method public abstract SetHandleInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;II)Z
.end method

.method public abstract SetLastError(I)V
.end method

.method public abstract SetLocalTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)Z
.end method

.method public abstract SetNamedPipeHandleState(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract SetSystemTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)Z
.end method

.method public abstract SetThreadExecutionState(I)I
.end method

.method public abstract SetVolumeLabel(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract SetVolumeMountPoint(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract SizeofResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract SystemTimeToFileTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Z
.end method

.method public abstract SystemTimeToTzSpecificLocalTime(Lcom/sun/jna/platform/win32/WinBase$TIME_ZONE_INFORMATION;Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;)Z
.end method

.method public abstract TerminateProcess(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Z
.end method

.method public abstract TransactNamedPipe(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BI[BILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z
.end method

.method public abstract UnmapViewOfFile(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract VerSetConditionMask(JIB)J
.end method

.method public abstract VerifyVersionInfoW(Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;IJ)Z
.end method

.method public abstract VirtualAllocEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;II)Lcom/sun/jna/Pointer;
.end method

.method public abstract VirtualFreeEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;I)Z
.end method

.method public abstract VirtualQueryEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinNT$MEMORY_BASIC_INFORMATION;Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;)Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;
.end method

.method public abstract WaitForMultipleObjects(I[Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZI)I
.end method

.method public abstract WaitForSingleObject(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)I
.end method

.method public abstract WaitNamedPipe(Ljava/lang/String;I)Z
.end method

.method public abstract WriteFile(Lcom/sun/jna/platform/win32/WinNT$HANDLE;[BILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z
.end method

.method public abstract WritePrivateProfileSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WritePrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract WriteProcessMemory(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method
