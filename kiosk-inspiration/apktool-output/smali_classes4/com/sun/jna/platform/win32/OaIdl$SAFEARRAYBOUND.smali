.class public Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cElements",
        "lLbound"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAFEARRAYBOUND"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND$ByReference;
    }
.end annotation


# instance fields
.field public cElements:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public lLbound:Lcom/sun/jna/platform/win32/WinDef$LONG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1045
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 1053
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1054
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->cElements:Lcom/sun/jna/platform/win32/WinDef$ULONG;

    .line 1055
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$LONG;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->lLbound:Lcom/sun/jna/platform/win32/WinDef$LONG;

    .line 1056
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1049
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1050
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->read()V

    return-void
.end method
