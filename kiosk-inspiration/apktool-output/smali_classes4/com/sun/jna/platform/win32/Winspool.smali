.class public interface abstract Lcom/sun/jna/platform/win32/Winspool;
.super Ljava/lang/Object;
.source "Winspool.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;,
        Lcom/sun/jna/platform/win32/Winspool$LPPRINTER_DEFAULTS;,
        Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;,
        Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;,
        Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;
    }
.end annotation


# static fields
.field public static final CCHDEVICENAME:I = 0x20

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

.field public static final PRINTER_ATTRIBUTE_DEFAULT:I = 0x4

.field public static final PRINTER_ATTRIBUTE_DIRECT:I = 0x2

.field public static final PRINTER_ATTRIBUTE_DO_COMPLETE_FIRST:I = 0x200

.field public static final PRINTER_ATTRIBUTE_ENABLE_BIDI:I = 0x800

.field public static final PRINTER_ATTRIBUTE_ENABLE_DEVQ:I = 0x80

.field public static final PRINTER_ATTRIBUTE_FAX:I = 0x4000

.field public static final PRINTER_ATTRIBUTE_FRIENDLY_NAME:I = 0x100000

.field public static final PRINTER_ATTRIBUTE_HIDDEN:I = 0x20

.field public static final PRINTER_ATTRIBUTE_KEEPPRINTEDJOBS:I = 0x100

.field public static final PRINTER_ATTRIBUTE_LOCAL:I = 0x40

.field public static final PRINTER_ATTRIBUTE_MACHINE:I = 0x80000

.field public static final PRINTER_ATTRIBUTE_NETWORK:I = 0x10

.field public static final PRINTER_ATTRIBUTE_PUBLISHED:I = 0x2000

.field public static final PRINTER_ATTRIBUTE_PUSHED_MACHINE:I = 0x40000

.field public static final PRINTER_ATTRIBUTE_PUSHED_USER:I = 0x20000

.field public static final PRINTER_ATTRIBUTE_QUEUED:I = 0x1

.field public static final PRINTER_ATTRIBUTE_RAW_ONLY:I = 0x1000

.field public static final PRINTER_ATTRIBUTE_SHARED:I = 0x8

.field public static final PRINTER_ATTRIBUTE_TS:I = 0x8000

.field public static final PRINTER_ATTRIBUTE_TS_GENERIC_DRIVER:I = 0x200000

.field public static final PRINTER_ATTRIBUTE_WORK_OFFLINE:I = 0x400

.field public static final PRINTER_CHANGE_ADD_FORM:I = 0x10000

.field public static final PRINTER_CHANGE_ADD_JOB:I = 0x100

.field public static final PRINTER_CHANGE_ADD_PORT:I = 0x100000

.field public static final PRINTER_CHANGE_ADD_PRINTER:I = 0x1

.field public static final PRINTER_CHANGE_ADD_PRINTER_DRIVER:I = 0x10000000

.field public static final PRINTER_CHANGE_ADD_PRINT_PROCESSOR:I = 0x1000000

.field public static final PRINTER_CHANGE_ALL:I = 0x7777ffff

.field public static final PRINTER_CHANGE_ALL_WIN7:I = 0x7f77ffff

.field public static final PRINTER_CHANGE_CONFIGURE_PORT:I = 0x200000

.field public static final PRINTER_CHANGE_DELETE_FORM:I = 0x40000

.field public static final PRINTER_CHANGE_DELETE_JOB:I = 0x400

.field public static final PRINTER_CHANGE_DELETE_PORT:I = 0x400000

.field public static final PRINTER_CHANGE_DELETE_PRINTER:I = 0x4

.field public static final PRINTER_CHANGE_DELETE_PRINTER_DRIVER:I = 0x40000000

.field public static final PRINTER_CHANGE_DELETE_PRINT_PROCESSOR:I = 0x4000000

.field public static final PRINTER_CHANGE_FAILED_CONNECTION_PRINTER:I = 0x8

.field public static final PRINTER_CHANGE_FORM:I = 0x70000

.field public static final PRINTER_CHANGE_JOB:I = 0xff00

.field public static final PRINTER_CHANGE_PORT:I = 0x700000

.field public static final PRINTER_CHANGE_PRINTER:I = 0xff

.field public static final PRINTER_CHANGE_PRINTER_DRIVER:I = 0x70000000

.field public static final PRINTER_CHANGE_PRINT_PROCESSOR:I = 0x7000000

.field public static final PRINTER_CHANGE_SERVER:I = 0x8000000

.field public static final PRINTER_CHANGE_SET_FORM:I = 0x20000

.field public static final PRINTER_CHANGE_SET_JOB:I = 0x200

.field public static final PRINTER_CHANGE_SET_PRINTER:I = 0x2

.field public static final PRINTER_CHANGE_SET_PRINTER_DRIVER:I = 0x20000000

.field public static final PRINTER_CHANGE_TIMEOUT:I = -0x80000000

.field public static final PRINTER_CHANGE_WRITE_JOB:I = 0x800

.field public static final PRINTER_ENUM_CONNECTIONS:I = 0x4

.field public static final PRINTER_ENUM_CONTAINER:I = 0x8000

.field public static final PRINTER_ENUM_DEFAULT:I = 0x1

.field public static final PRINTER_ENUM_EXPAND:I = 0x4000

.field public static final PRINTER_ENUM_FAVORITE:I = 0x4

.field public static final PRINTER_ENUM_HIDE:I = 0x1000000

.field public static final PRINTER_ENUM_ICON1:I = 0x10000

.field public static final PRINTER_ENUM_ICON2:I = 0x20000

.field public static final PRINTER_ENUM_ICON3:I = 0x40000

.field public static final PRINTER_ENUM_ICON4:I = 0x80000

.field public static final PRINTER_ENUM_ICON5:I = 0x100000

.field public static final PRINTER_ENUM_ICON6:I = 0x200000

.field public static final PRINTER_ENUM_ICON7:I = 0x400000

.field public static final PRINTER_ENUM_ICON8:I = 0x800000

.field public static final PRINTER_ENUM_ICONMASK:I = 0xff0000

.field public static final PRINTER_ENUM_LOCAL:I = 0x2

.field public static final PRINTER_ENUM_NAME:I = 0x8

.field public static final PRINTER_ENUM_NETWORK:I = 0x40

.field public static final PRINTER_ENUM_REMOTE:I = 0x10

.field public static final PRINTER_ENUM_SHARED:I = 0x20

.field public static final PRINTER_STATUS_BUSY:I = 0x200

.field public static final PRINTER_STATUS_DOOR_OPEN:I = 0x400000

.field public static final PRINTER_STATUS_ERROR:I = 0x2

.field public static final PRINTER_STATUS_INITIALIZING:I = 0x8000

.field public static final PRINTER_STATUS_IO_ACTIVE:I = 0x100

.field public static final PRINTER_STATUS_MANUAL_FEED:I = 0x20

.field public static final PRINTER_STATUS_NOT_AVAILABLE:I = 0x1000

.field public static final PRINTER_STATUS_NO_TONER:I = 0x40000

.field public static final PRINTER_STATUS_OFFLINE:I = 0x80

.field public static final PRINTER_STATUS_OUTPUT_BIN_FULL:I = 0x800

.field public static final PRINTER_STATUS_OUT_OF_MEMORY:I = 0x200000

.field public static final PRINTER_STATUS_PAGE_PUNT:I = 0x80000

.field public static final PRINTER_STATUS_PAPER_JAM:I = 0x8

.field public static final PRINTER_STATUS_PAPER_OUT:I = 0x10

.field public static final PRINTER_STATUS_PAPER_PROBLEM:I = 0x40

.field public static final PRINTER_STATUS_PAUSED:I = 0x1

.field public static final PRINTER_STATUS_PENDING_DELETION:I = 0x4

.field public static final PRINTER_STATUS_POWER_SAVE:I = 0x1000000

.field public static final PRINTER_STATUS_PRINTING:I = 0x400

.field public static final PRINTER_STATUS_PROCESSING:I = 0x4000

.field public static final PRINTER_STATUS_SERVER_UNKNOWN:I = 0x800000

.field public static final PRINTER_STATUS_TONER_LOW:I = 0x20000

.field public static final PRINTER_STATUS_USER_INTERVENTION:I = 0x100000

.field public static final PRINTER_STATUS_WAITING:I = 0x2000

.field public static final PRINTER_STATUS_WARMING_UP:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-class v0, Lcom/sun/jna/platform/win32/Winspool;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Winspool.drv"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Winspool;

    sput-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    return-void
.end method


# virtual methods
.method public abstract ClosePrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract EnumJobs(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract FindClosePrinterChangeNotification(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract FindFirstPrinterChangeNotification(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/platform/win32/WinDef$LPVOID;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract FindNextPrinterChangeNotification(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$LPVOID;Lcom/sun/jna/platform/win32/WinDef$LPVOID;)Z
.end method

.method public abstract GetPrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract OpenPrinter(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/Winspool$LPPRINTER_DEFAULTS;)Z
.end method
