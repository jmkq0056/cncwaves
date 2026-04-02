.class public interface abstract Lcom/sun/jna/platform/win32/Pdh;
.super Ljava/lang/Object;
.source "Pdh.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Pdh$PDH_TIME_INFO;,
        Lcom/sun/jna/platform/win32/Pdh$PDH_RAW_COUNTER;,
        Lcom/sun/jna/platform/win32/Pdh$PDH_COUNTER_PATH_ELEMENTS;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

.field public static final PDH_CSTATUS_NO_MACHINE:I = -0x7ffff830

.field public static final PDH_CSTATUS_NO_OBJECT:I = -0x3ffff448

.field public static final PDH_CVERSION_WIN40:I = 0x400

.field public static final PDH_CVERSION_WIN50:I = 0x500

.field public static final PDH_FMT_1000:I = 0x2000

.field public static final PDH_FMT_ANSI:I = 0x20

.field public static final PDH_FMT_DOUBLE:I = 0x200

.field public static final PDH_FMT_LARGE:I = 0x400

.field public static final PDH_FMT_LONG:I = 0x100

.field public static final PDH_FMT_NOCAP100:I = 0x8000

.field public static final PDH_FMT_NODATA:I = 0x4000

.field public static final PDH_FMT_NOSCALE:I = 0x1000

.field public static final PDH_FMT_RAW:I = 0x10

.field public static final PDH_FMT_UNICODE:I = 0x40

.field public static final PDH_INSUFFICIENT_BUFFER:I = -0x3ffff43e

.field public static final PDH_INVALID_ARGUMENT:I = -0x3ffff443

.field public static final PDH_MAX_COUNTER_NAME:I = 0x400

.field public static final PDH_MAX_COUNTER_PATH:I = 0x800

.field public static final PDH_MAX_DATASOURCE_PATH:I = 0x400

.field public static final PDH_MAX_INSTANCE_NAME:I = 0x400

.field public static final PDH_MEMORY_ALLOCATION_FAILURE:I = -0x3ffff445

.field public static final PDH_MORE_DATA:I = -0x7ffff82e

.field public static final PDH_PATH_WBEM_INPUT:I = 0x2

.field public static final PDH_PATH_WBEM_RESULT:I = 0x1

.field public static final PDH_VERSION:I = 0x503

.field public static final PERF_DETAIL_COSTLY:I = 0x10000

.field public static final PERF_DETAIL_STANDARD:I = 0xffff


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/sun/jna/platform/win32/Pdh;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Pdh"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Pdh;

    sput-object v0, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    return-void
.end method


# virtual methods
.method public abstract PdhAddCounter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract PdhAddEnglishCounter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Ljava/lang/String;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract PdhCloseQuery(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract PdhCollectQueryData(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract PdhCollectQueryDataEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract PdhCollectQueryDataWithTime(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$LONGLONGByReference;)I
.end method

.method public abstract PdhConnectMachine(Ljava/lang/String;)I
.end method

.method public abstract PdhEnumObjectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;II)I
.end method

.method public abstract PdhGetDllVersion(Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I
.end method

.method public abstract PdhGetRawCounterValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/Pdh$PDH_RAW_COUNTER;)I
.end method

.method public abstract PdhLookupPerfIndexByName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I
.end method

.method public abstract PdhLookupPerfNameByIndex(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I
.end method

.method public abstract PdhMakeCounterPath(Lcom/sun/jna/platform/win32/Pdh$PDH_COUNTER_PATH_ELEMENTS;[CLcom/sun/jna/platform/win32/WinDef$DWORDByReference;I)I
.end method

.method public abstract PdhOpenQuery(Ljava/lang/String;Lcom/sun/jna/platform/win32/BaseTSD$DWORD_PTR;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract PdhRemoveCounter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract PdhSetQueryTimeRange(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Pdh$PDH_TIME_INFO;)I
.end method

.method public abstract PdhValidatePath(Ljava/lang/String;)I
.end method
