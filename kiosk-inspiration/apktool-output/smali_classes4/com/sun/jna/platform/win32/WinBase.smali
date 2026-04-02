.class public interface abstract Lcom/sun/jna/platform/win32/WinBase;
.super Ljava/lang/Object;
.source "WinBase.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinDef;
.implements Lcom/sun/jna/platform/win32/BaseTSD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$EnumResNameProc;,
        Lcom/sun/jna/platform/win32/WinBase$EnumResTypeProc;,
        Lcom/sun/jna/platform/win32/WinBase$DCB;,
        Lcom/sun/jna/platform/win32/WinBase$COMMTIMEOUTS;,
        Lcom/sun/jna/platform/win32/WinBase$FE_IMPORT_FUNC;,
        Lcom/sun/jna/platform/win32/WinBase$FE_EXPORT_FUNC;,
        Lcom/sun/jna/platform/win32/WinBase$COMPUTER_NAME_FORMAT;,
        Lcom/sun/jna/platform/win32/WinBase$FOREIGN_THREAD_START_ROUTINE;,
        Lcom/sun/jna/platform/win32/WinBase$THREAD_START_ROUTINE;,
        Lcom/sun/jna/platform/win32/WinBase$PROCESS_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;,
        Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;,
        Lcom/sun/jna/platform/win32/WinBase$MEMORYSTATUSEX;,
        Lcom/sun/jna/platform/win32/WinBase$SYSTEM_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;,
        Lcom/sun/jna/platform/win32/WinBase$TIME_ZONE_INFORMATION;,
        Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;,
        Lcom/sun/jna/platform/win32/WinBase$FILETIME;,
        Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_DISPOSITION_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;,
        Lcom/sun/jna/platform/win32/WinBase$FILE_BASIC_INFO;
    }
.end annotation


# static fields
.field public static final CBR_110:I = 0x6e

.field public static final CBR_1200:I = 0x4b0

.field public static final CBR_128000:I = 0x1f400

.field public static final CBR_14400:I = 0x3840

.field public static final CBR_19200:I = 0x4b00

.field public static final CBR_2400:I = 0x960

.field public static final CBR_256000:I = 0x3e800

.field public static final CBR_300:I = 0x12c

.field public static final CBR_38400:I = 0x9600

.field public static final CBR_4800:I = 0x12c0

.field public static final CBR_56000:I = 0xdac0

.field public static final CBR_600:I = 0x258

.field public static final CBR_9600:I = 0x2580

.field public static final CREATE_BREAKAWAY_FROM_JOB:I = 0x1000000

.field public static final CREATE_DEFAULT_ERROR_MODE:I = 0x4000000

.field public static final CREATE_FORCEDOS:I = 0x2000

.field public static final CREATE_FOR_DIR:I = 0x2

.field public static final CREATE_FOR_IMPORT:I = 0x1

.field public static final CREATE_NEW_CONSOLE:I = 0x10

.field public static final CREATE_NEW_PROCESS_GROUP:I = 0x200

.field public static final CREATE_NO_WINDOW:I = 0x8000000

.field public static final CREATE_PRESERVE_CODE_AUTHZ_LEVEL:I = 0x2000000

.field public static final CREATE_PROTECTED_PROCESS:I = 0x40000

.field public static final CREATE_SEPARATE_WOW_VDM:I = 0x800

.field public static final CREATE_SHARED_WOW_VDM:I = 0x1000

.field public static final CREATE_SUSPENDED:I = 0x4

.field public static final CREATE_UNICODE_ENVIRONMENT:I = 0x400

.field public static final DEBUG_ONLY_THIS_PROCESS:I = 0x2

.field public static final DEBUG_PROCESS:I = 0x1

.field public static final DETACHED_PROCESS:I = 0x8

.field public static final DRIVE_CDROM:I = 0x5

.field public static final DRIVE_FIXED:I = 0x3

.field public static final DRIVE_NO_ROOT_DIR:I = 0x1

.field public static final DRIVE_RAMDISK:I = 0x6

.field public static final DRIVE_REMOTE:I = 0x4

.field public static final DRIVE_REMOVABLE:I = 0x2

.field public static final DRIVE_UNKNOWN:I = 0x0

.field public static final DTR_CONTROL_DISABLE:I = 0x0

.field public static final DTR_CONTROL_ENABLE:I = 0x1

.field public static final DTR_CONTROL_HANDSHAKE:I = 0x2

.field public static final ES_AWAYMODE_REQUIRED:I = 0x40

.field public static final ES_CONTINUOUS:I = -0x80000000

.field public static final ES_DISPLAY_REQUIRED:I = 0x2

.field public static final ES_SYSTEM_REQUIRED:I = 0x1

.field public static final ES_USER_PRESENT:I = 0x4

.field public static final EVENPARITY:I = 0x2

.field public static final EXTENDED_STARTUPINFO_PRESENT:I = 0x80000

.field public static final FILE_DIR_DISALOWED:I = 0x9

.field public static final FILE_ENCRYPTABLE:I = 0x0

.field public static final FILE_IS_ENCRYPTED:I = 0x1

.field public static final FILE_READ_ONLY:I = 0x8

.field public static final FILE_ROOT_DIR:I = 0x3

.field public static final FILE_SYSTEM_ATTR:I = 0x2

.field public static final FILE_SYSTEM_DIR:I = 0x4

.field public static final FILE_SYSTEM_NOT_SUPPORT:I = 0x6

.field public static final FILE_UNKNOWN:I = 0x5

.field public static final FILE_USER_DISALLOWED:I = 0x7

.field public static final FORMAT_MESSAGE_ALLOCATE_BUFFER:I = 0x100

.field public static final FORMAT_MESSAGE_ARGUMENT_ARRAY:I = 0x2000

.field public static final FORMAT_MESSAGE_FROM_HMODULE:I = 0x800

.field public static final FORMAT_MESSAGE_FROM_STRING:I = 0x400

.field public static final FORMAT_MESSAGE_FROM_SYSTEM:I = 0x1000

.field public static final FORMAT_MESSAGE_IGNORE_INSERTS:I = 0x200

.field public static final FileAlignmentInfo:I = 0x11

.field public static final FileAllocationInfo:I = 0x5

.field public static final FileAttributeTagInfo:I = 0x9

.field public static final FileBasicInfo:I = 0x0

.field public static final FileCompressionInfo:I = 0x8

.field public static final FileDispositionInfo:I = 0x4

.field public static final FileEndOfFileInfo:I = 0x6

.field public static final FileFullDirectoryInfo:I = 0xe

.field public static final FileFullDirectoryRestartInfo:I = 0xf

.field public static final FileIdBothDirectoryInfo:I = 0xa

.field public static final FileIdBothDirectoryRestartInfo:I = 0xb

.field public static final FileIdExtdDirectoryInfo:I = 0x13

.field public static final FileIdExtdDirectoryRestartInfo:I = 0x14

.field public static final FileIdInfo:I = 0x12

.field public static final FileIoPriorityHintInfo:I = 0xc

.field public static final FileNameInfo:I = 0x2

.field public static final FileRemoteProtocolInfo:I = 0xd

.field public static final FileRenameInfo:I = 0x3

.field public static final FileStandardInfo:I = 0x1

.field public static final FileStorageInfo:I = 0x10

.field public static final FileStreamInfo:I = 0x7

.field public static final FindExInfoBasic:I = 0x1

.field public static final FindExInfoMaxInfoLevel:I = 0x2

.field public static final FindExInfoStandard:I = 0x0

.field public static final FindExSearchLimitToDevices:I = 0x2

.field public static final FindExSearchLimitToDirectories:I = 0x1

.field public static final FindExSearchNameMatch:I = 0x0

.field public static final HANDLE_FLAG_INHERIT:I = 0x1

.field public static final HANDLE_FLAG_PROTECT_FROM_CLOSE:I = 0x2

.field public static final INFINITE:I = -0x1

.field public static final INHERIT_PARENT_AFFINITY:I = 0x10000

.field public static final INVALID_FILE_ATTRIBUTES:I = -0x1

.field public static final INVALID_FILE_SIZE:I = -0x1

.field public static final INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public static final INVALID_SET_FILE_POINTER:I = -0x1

.field public static final LHND:I = 0x42

.field public static final LMEM_DISCARDABLE:I = 0xf00

.field public static final LMEM_DISCARDED:I = 0x4000

.field public static final LMEM_FIXED:I = 0x0

.field public static final LMEM_INVALID_HANDLE:I = 0x8000

.field public static final LMEM_LOCKCOUNT:I = 0xff

.field public static final LMEM_MODIFY:I = 0x80

.field public static final LMEM_MOVEABLE:I = 0x2

.field public static final LMEM_NOCOMPACT:I = 0x10

.field public static final LMEM_NODISCARD:I = 0x20

.field public static final LMEM_VALID_FLAGS:I = 0xf72

.field public static final LMEM_ZEROINIT:I = 0x40

.field public static final LOGON32_LOGON_BATCH:I = 0x4

.field public static final LOGON32_LOGON_INTERACTIVE:I = 0x2

.field public static final LOGON32_LOGON_NETWORK:I = 0x3

.field public static final LOGON32_LOGON_NETWORK_CLEARTEXT:I = 0x8

.field public static final LOGON32_LOGON_NEW_CREDENTIALS:I = 0x9

.field public static final LOGON32_LOGON_SERVICE:I = 0x5

.field public static final LOGON32_LOGON_UNLOCK:I = 0x7

.field public static final LOGON32_PROVIDER_DEFAULT:I = 0x0

.field public static final LOGON32_PROVIDER_WINNT35:I = 0x1

.field public static final LOGON32_PROVIDER_WINNT40:I = 0x2

.field public static final LOGON32_PROVIDER_WINNT50:I = 0x3

.field public static final LPTR:I = 0x40

.field public static final MARKPARITY:I = 0x3

.field public static final MAX_COMPUTERNAME_LENGTH:I

.field public static final MOVEFILE_COPY_ALLOWED:I = 0x2

.field public static final MOVEFILE_CREATE_HARDLINK:I = 0x10

.field public static final MOVEFILE_DELAY_UNTIL_REBOOT:I = 0x4

.field public static final MOVEFILE_FAIL_IF_NOT_TRACKABLE:I = 0x20

.field public static final MOVEFILE_REPLACE_EXISTING:I = 0x1

.field public static final MOVEFILE_WRITE_THROUGH:I = 0x8

.field public static final MUTEX_ALL_ACCESS:I = 0x1f0001

.field public static final MUTEX_MODIFY_STATE:I = 0x1

.field public static final NMPWAIT_NOWAIT:I = 0x1

.field public static final NMPWAIT_USE_DEFAULT_WAIT:I = 0x0

.field public static final NMPWAIT_WAIT_FOREVER:I = -0x1

.field public static final NOPARITY:I = 0x0

.field public static final ODDPARITY:I = 0x1

.field public static final ONE5STOPBITS:I = 0x1

.field public static final ONESTOPBIT:I = 0x0

.field public static final OVERWRITE_HIDDEN:I = 0x4

.field public static final PIPE_ACCEPT_REMOTE_CLIENTS:I = 0x0

.field public static final PIPE_ACCESS_DUPLEX:I = 0x3

.field public static final PIPE_ACCESS_INBOUND:I = 0x1

.field public static final PIPE_ACCESS_OUTBOUND:I = 0x2

.field public static final PIPE_CLIENT_END:I = 0x0

.field public static final PIPE_NOWAIT:I = 0x1

.field public static final PIPE_READMODE_BYTE:I = 0x0

.field public static final PIPE_READMODE_MESSAGE:I = 0x2

.field public static final PIPE_REJECT_REMOTE_CLIENTS:I = 0x8

.field public static final PIPE_SERVER_END:I = 0x1

.field public static final PIPE_TYPE_BYTE:I = 0x0

.field public static final PIPE_TYPE_MESSAGE:I = 0x4

.field public static final PIPE_UNLIMITED_INSTANCES:I = 0xff

.field public static final PIPE_WAIT:I = 0x0

.field public static final RTS_CONTROL_DISABLE:I = 0x0

.field public static final RTS_CONTROL_ENABLE:I = 0x1

.field public static final RTS_CONTROL_HANDSHAKE:I = 0x2

.field public static final RTS_CONTROL_TOGGLE:I = 0x3

.field public static final SPACEPARITY:I = 0x4

.field public static final STARTF_FORCEOFFFEEDBACK:I = 0x80

.field public static final STARTF_FORCEONFEEDBACK:I = 0x40

.field public static final STARTF_RUNFULLSCREEN:I = 0x20

.field public static final STARTF_USECOUNTCHARS:I = 0x8

.field public static final STARTF_USEFILLATTRIBUTE:I = 0x10

.field public static final STARTF_USEPOSITION:I = 0x4

.field public static final STARTF_USESHOWWINDOW:I = 0x1

.field public static final STARTF_USESIZE:I = 0x2

.field public static final STARTF_USESTDHANDLES:I = 0x100

.field public static final STILL_ACTIVE:I = 0x103

.field public static final TWOSTOPBITS:I = 0x2

.field public static final WAIT_ABANDONED:I = 0x80

.field public static final WAIT_ABANDONED_0:I = 0x80

.field public static final WAIT_FAILED:I = -0x1

.field public static final WAIT_OBJECT_0:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    const-wide v1, 0xffffffffL

    .line 52
    :goto_0
    invoke-static {v1, v2}, Lcom/sun/jna/Pointer;->createConstant(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 64
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f

    :goto_1
    sput v0, Lcom/sun/jna/platform/win32/WinBase;->MAX_COMPUTERNAME_LENGTH:I

    return-void
.end method
