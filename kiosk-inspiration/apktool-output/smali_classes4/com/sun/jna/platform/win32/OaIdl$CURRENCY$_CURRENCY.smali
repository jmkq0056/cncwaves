.class public Lcom/sun/jna/platform/win32/OaIdl$CURRENCY$_CURRENCY;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Lo",
        "Hi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_CURRENCY"
.end annotation


# instance fields
.field public Hi:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public Lo:Lcom/sun/jna/platform/win32/WinDef$ULONG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1084
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1088
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1089
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY$_CURRENCY;->read()V

    return-void
.end method
