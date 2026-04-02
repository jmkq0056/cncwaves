.class public Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "CompressedFileSize",
        "CompressionFormat",
        "CompressionUnitShift",
        "ChunkShift",
        "ClusterShift",
        "Reserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_COMPRESSION_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO$ByReference;
    }
.end annotation


# instance fields
.field public ChunkShift:B

.field public ClusterShift:B

.field public CompressedFileSize:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public CompressionFormat:S

.field public CompressionUnitShift:B

.field public Reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 470
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    const/4 v0, 0x3

    .line 462
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->Reserved:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 474
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    const/4 p1, 0x3

    .line 462
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->Reserved:[B

    .line 475
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;SBBB)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->CompressedFileSize:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 484
    iput-short p2, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->CompressionFormat:S

    .line 485
    iput-byte p3, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->CompressionUnitShift:B

    .line 486
    iput-byte p4, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->ChunkShift:B

    .line 487
    iput-byte p5, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->ClusterShift:B

    const/4 p1, 0x3

    .line 488
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->Reserved:[B

    .line 489
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 466
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILE_COMPRESSION_INFO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
