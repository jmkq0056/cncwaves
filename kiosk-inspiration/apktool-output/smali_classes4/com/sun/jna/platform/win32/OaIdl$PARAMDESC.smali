.class public Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pparamdescex",
        "wParamFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PARAMDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC$ByReference;
    }
.end annotation


# instance fields
.field public pparamdescex:Lcom/sun/jna/Pointer;

.field public wParamFlags:Lcom/sun/jna/platform/win32/WinDef$USHORT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1799
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1803
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1804
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;->read()V

    return-void
.end method
