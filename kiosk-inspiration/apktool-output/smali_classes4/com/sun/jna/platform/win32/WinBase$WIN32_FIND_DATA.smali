.class public Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwFileAttributes",
        "ftCreationTime",
        "ftLastAccessTime",
        "ftLastWriteTime",
        "nFileSizeHigh",
        "nFileSizeLow",
        "dwReserved0",
        "dwReserved1",
        "cFileName",
        "cAlternateFileName"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WIN32_FIND_DATA"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA$ByReference;
    }
.end annotation


# instance fields
.field public cAlternateFileName:[C

.field public cFileName:[C

.field public dwFileAttributes:I

.field public dwReserved0:I

.field public dwReserved1:I

.field public ftCreationTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public ftLastAccessTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public ftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

.field public nFileSizeHigh:I

.field public nFileSizeLow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 753
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/16 v0, 0x104

    .line 738
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cFileName:[C

    const/16 v0, 0xe

    .line 746
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cAlternateFileName:[C

    return-void
.end method

.method public constructor <init>(ILcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinBase$FILETIME;IIII[C[C)V
    .locals 0

    .line 770
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 771
    iput p1, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->dwFileAttributes:I

    .line 772
    iput-object p2, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->ftCreationTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 773
    iput-object p3, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->ftLastAccessTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 774
    iput-object p4, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->ftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 775
    iput p5, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->nFileSizeHigh:I

    .line 776
    iput p6, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->nFileSizeLow:I

    .line 777
    iput p7, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->dwReserved0:I

    .line 778
    iput-object p9, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cFileName:[C

    .line 779
    iput-object p10, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cAlternateFileName:[C

    .line 780
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 757
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    const/16 p1, 0x104

    .line 738
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cFileName:[C

    const/16 p1, 0xe

    .line 746
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cAlternateFileName:[C

    .line 758
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->read()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 749
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlternateFileName()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cAlternateFileName:[C

    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$WIN32_FIND_DATA;->cFileName:[C

    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
