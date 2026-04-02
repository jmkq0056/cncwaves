.class public Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "AllocationSize",
        "EndOfFile",
        "NumberOfLinks",
        "DeletePending",
        "Directory"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_STANDARD_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO$ByReference;
    }
.end annotation


# instance fields
.field public AllocationSize:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public DeletePending:Z

.field public Directory:Z

.field public EndOfFile:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

.field public NumberOfLinks:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 361
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;IZZ)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->AllocationSize:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 370
    iput-object p2, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->EndOfFile:Lcom/sun/jna/platform/win32/WinNT$LARGE_INTEGER;

    .line 371
    iput p3, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->NumberOfLinks:I

    .line 372
    iput-boolean p4, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->DeletePending:Z

    .line 373
    iput-boolean p5, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->Directory:Z

    .line 374
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;->write()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 352
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILE_STANDARD_INFO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
