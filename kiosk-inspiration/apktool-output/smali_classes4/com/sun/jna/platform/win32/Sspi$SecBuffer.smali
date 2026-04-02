.class public Lcom/sun/jna/platform/win32/Sspi$SecBuffer;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbBuffer",
        "BufferType",
        "pvBuffer"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SecBuffer$ByReference;
    }
.end annotation


# instance fields
.field public BufferType:I

.field public cbBuffer:I

.field public pvBuffer:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->BufferType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 596
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->BufferType:I

    .line 597
    iput p2, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->cbBuffer:I

    .line 598
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->pvBuffer:Lcom/sun/jna/Pointer;

    .line 599
    iput p1, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->BufferType:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 7

    .line 609
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->BufferType:I

    .line 610
    array-length v0, p2

    iput v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->cbBuffer:I

    .line 611
    new-instance v1, Lcom/sun/jna/Memory;

    array-length v0, p2

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->pvBuffer:Lcom/sun/jna/Pointer;

    const/4 v5, 0x0

    .line 612
    array-length v6, p2

    const-wide/16 v2, 0x0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 613
    iput p1, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->BufferType:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->pvBuffer:Lcom/sun/jna/Pointer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    iget v3, p0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->cbBuffer:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    return-object v0
.end method
