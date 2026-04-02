.class public interface abstract Lcom/sun/jna/platform/win32/Wtsapi32;
.super Ljava/lang/Object;
.source "Wtsapi32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Wtsapi32$WTS_PROCESS_INFO_EX;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Wtsapi32;

.field public static final NOTIFY_FOR_ALL_SESSIONS:I = 0x1

.field public static final NOTIFY_FOR_THIS_SESSION:I = 0x0

.field public static final WTS_ANY_SESSION:I = -0x2

.field public static final WTS_CONSOLE_CONNECT:I = 0x1

.field public static final WTS_CONSOLE_DISCONNECT:I = 0x2

.field public static final WTS_CURRENT_SERVER_HANDLE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public static final WTS_CURRENT_SESSION:I = -0x1

.field public static final WTS_PROCESS_INFO_LEVEL_0:I = 0x0

.field public static final WTS_PROCESS_INFO_LEVEL_1:I = 0x1

.field public static final WTS_REMOTE_CONNECT:I = 0x3

.field public static final WTS_REMOTE_DISCONNECT:I = 0x4

.field public static final WTS_SESSION_LOCK:I = 0x7

.field public static final WTS_SESSION_LOGOFF:I = 0x6

.field public static final WTS_SESSION_LOGON:I = 0x5

.field public static final WTS_SESSION_REMOTE_CONTROL:I = 0x9

.field public static final WTS_SESSION_UNLOCK:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-class v0, Lcom/sun/jna/platform/win32/Wtsapi32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Wtsapi32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Wtsapi32;

    sput-object v0, Lcom/sun/jna/platform/win32/Wtsapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Wtsapi32;

    .line 101
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/Wtsapi32;->WTS_CURRENT_SERVER_HANDLE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-void
.end method


# virtual methods
.method public abstract WTSEnumerateProcessesEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract WTSFreeMemoryEx(ILcom/sun/jna/Pointer;I)Z
.end method

.method public abstract WTSRegisterSessionNotification(Lcom/sun/jna/platform/win32/WinDef$HWND;I)Z
.end method

.method public abstract WTSUnRegisterSessionNotification(Lcom/sun/jna/platform/win32/WinDef$HWND;)Z
.end method
