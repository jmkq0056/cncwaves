.class public Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "addr"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASIPV6ADDR"
.end annotation


# instance fields
.field public addr:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 511
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;->addr:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x10

    .line 511
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;->addr:[B

    .line 505
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;->read()V

    return-void
.end method
