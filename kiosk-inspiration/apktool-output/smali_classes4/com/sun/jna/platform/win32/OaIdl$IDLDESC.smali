.class public Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwReserved",
        "wIDLFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDLDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$IDLDESC$ByReference;
    }
.end annotation


# instance fields
.field public dwReserved:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

.field public wIDLFlags:Lcom/sun/jna/platform/win32/WinDef$USHORT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1730
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1734
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1735
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;Lcom/sun/jna/platform/win32/WinDef$USHORT;)V
    .locals 0

    .line 1739
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1740
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;->dwReserved:Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    .line 1741
    iput-object p2, p0, Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;->wIDLFlags:Lcom/sun/jna/platform/win32/WinDef$USHORT;

    return-void
.end method
