.class public Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;
.super Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;
.source "SspiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/SspiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagedSecBufferDesc"
.end annotation


# instance fields
.field private final secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;-><init>()V

    .line 73
    iput p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->cBuffers:I

    .line 74
    new-instance v0, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    check-cast p1, [Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    const/4 v0, 0x0

    .line 75
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->pBuffers:Lcom/sun/jna/Pointer;

    .line 76
    array-length p1, p1

    iput p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->cBuffers:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;-><init>()V

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    new-instance v1, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    invoke-direct {v1, p1, p2}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>(II)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iput-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    .line 68
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->pBuffers:Lcom/sun/jna/Pointer;

    .line 69
    array-length p1, v0

    iput p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->cBuffers:I

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;-><init>()V

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    new-instance v1, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    invoke-direct {v1, p1, p2}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iput-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    .line 57
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->pBuffers:Lcom/sun/jna/Pointer;

    .line 58
    array-length p1, v0

    iput p1, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->cBuffers:I

    return-void
.end method


# virtual methods
.method public getBuffer(I)Lcom/sun/jna/platform/win32/Sspi$SecBuffer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public read()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 96
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->read()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->secBuffers:[Lcom/sun/jna/platform/win32/Sspi$SecBuffer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 86
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/Sspi$SecBuffer;->write()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "ulVersion"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->writeField(Ljava/lang/String;)V

    .line 89
    const-string v0, "pBuffers"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->writeField(Ljava/lang/String;)V

    .line 90
    const-string v0, "cBuffers"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/SspiUtil$ManagedSecBufferDesc;->writeField(Ljava/lang/String;)V

    return-void
.end method
