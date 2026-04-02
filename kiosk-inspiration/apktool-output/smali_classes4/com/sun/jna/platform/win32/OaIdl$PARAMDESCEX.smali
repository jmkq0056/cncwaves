.class public Lcom/sun/jna/platform/win32/OaIdl$PARAMDESCEX;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cBytes",
        "varDefaultValue"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PARAMDESCEX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$PARAMDESCEX$ByReference;
    }
.end annotation


# instance fields
.field public cBytes:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public varDefaultValue:Lcom/sun/jna/platform/win32/Variant$VariantArg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1818
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1822
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1823
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$PARAMDESCEX;->read()V

    return-void
.end method
