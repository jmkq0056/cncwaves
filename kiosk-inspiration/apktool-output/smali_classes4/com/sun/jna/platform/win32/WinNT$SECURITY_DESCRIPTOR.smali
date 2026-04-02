.class public Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "data"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SECURITY_DESCRIPTOR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR$ByReference;
    }
.end annotation


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2448
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2458
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2459
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->useMemory(Lcom/sun/jna/Pointer;)V

    .line 2460
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->data:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2464
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2465
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->read()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 2452
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2453
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->data:[B

    .line 2454
    new-instance v0, Lcom/sun/jna/Memory;

    array-length p1, p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR;->useMemory(Lcom/sun/jna/Pointer;)V

    return-void
.end method
