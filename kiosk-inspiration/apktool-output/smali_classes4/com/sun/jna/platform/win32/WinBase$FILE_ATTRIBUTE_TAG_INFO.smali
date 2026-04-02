.class public Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "FileAttributes",
        "ReparseTag"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_ATTRIBUTE_TAG_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO$ByReference;
    }
.end annotation


# instance fields
.field public FileAttributes:I

.field public ReparseTag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 524
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 534
    iput p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;->FileAttributes:I

    .line 535
    iput p2, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;->ReparseTag:I

    .line 536
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 529
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;->read()V

    return-void
.end method

.method public static sizeOf()I
    .locals 2

    .line 520
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILE_ATTRIBUTE_TAG_INFO;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
