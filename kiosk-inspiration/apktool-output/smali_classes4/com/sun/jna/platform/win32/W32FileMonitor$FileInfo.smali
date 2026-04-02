.class Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;
.super Ljava/lang/Object;
.source "W32FileMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/W32FileMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileInfo"
.end annotation


# instance fields
.field public final file:Ljava/io/File;

.field public final handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public final info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

.field public final infoLength:Lcom/sun/jna/ptr/IntByReference;

.field public final notifyMask:I

.field public final overlapped:Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;

.field public final recursive:Z

.field final synthetic this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/io/File;Lcom/sun/jna/platform/win32/WinNT$HANDLE;IZ)V
    .locals 1

    .line 56
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;-><init>(I)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    .line 54
    new-instance p1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->infoLength:Lcom/sun/jna/ptr/IntByReference;

    .line 55
    new-instance p1, Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;-><init>()V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->overlapped:Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;

    .line 57
    iput-object p2, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    .line 58
    iput-object p3, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 59
    iput p4, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->notifyMask:I

    .line 60
    iput-boolean p5, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->recursive:Z

    return-void
.end method
