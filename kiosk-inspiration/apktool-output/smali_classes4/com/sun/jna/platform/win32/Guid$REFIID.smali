.class public Lcom/sun/jna/platform/win32/Guid$REFIID;
.super Lcom/sun/jna/PointerType;
.source "Guid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Guid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REFIID"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 515
    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$IID;)V
    .locals 0

    .line 519
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$IID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 538
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 542
    :cond_2
    check-cast p1, Lcom/sun/jna/platform/win32/Guid$REFIID;

    .line 543
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getValue()Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getValue()Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/Guid$IID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Lcom/sun/jna/platform/win32/Guid$IID;
    .locals 2

    .line 527
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$REFIID;->getValue()Lcom/sun/jna/platform/win32/Guid$IID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Guid$IID;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/Guid$IID;)V
    .locals 0

    .line 523
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Guid$IID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/Guid$REFIID;->setPointer(Lcom/sun/jna/Pointer;)V

    return-void
.end method
