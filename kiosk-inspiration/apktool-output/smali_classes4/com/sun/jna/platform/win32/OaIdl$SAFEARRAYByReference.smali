.class public Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pSAFEARRAY"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAFEARRAYByReference"
.end annotation


# instance fields
.field public pSAFEARRAY:Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1020
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1024
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1025
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;)V
    .locals 0

    .line 1028
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1029
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;->pSAFEARRAY:Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;

    return-void
.end method
