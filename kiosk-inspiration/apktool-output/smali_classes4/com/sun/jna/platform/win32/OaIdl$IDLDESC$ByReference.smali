.class public Lcom/sun/jna/platform/win32/OaIdl$IDLDESC$ByReference;
.super Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;
.source "OaIdl.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1717
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;)V
    .locals 1

    .line 1721
    iget-object v0, p1, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;->dwReserved:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;->wIDLFlags:Lcom/sun/jna/platform/win32/WinDef$USHORT;

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;-><init>(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/WinDef$USHORT;)V

    return-void
.end method
