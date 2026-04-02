.class public Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;
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
    name = "RASIPADDR"
.end annotation


# instance fields
.field public addr:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 720
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x4

    .line 728
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;->addr:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x4

    .line 728
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;->addr:[B

    .line 725
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;->read()V

    return-void
.end method
