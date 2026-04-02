.class public Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "BaseTSD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/BaseTSD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ULONG_PTRByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 91
    new-instance v0, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;-><init>(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V
    .locals 1

    .line 94
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->setValue(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;
    .locals 5

    .line 106
    new-instance v0, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide v1

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;)V
    .locals 6

    .line 98
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->intValue()I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    return-void
.end method
