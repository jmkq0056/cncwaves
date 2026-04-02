.class public Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;
.super Lcom/sun/jna/Structure;
.source "Variant.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "vt",
        "wReserved1",
        "wReserved2",
        "wReserved3",
        "__variant"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant$VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_VARIANT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;
    }
.end annotation


# instance fields
.field public __variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

.field public vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

.field public wReserved1:S

.field public wReserved2:S

.field public wReserved3:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 757
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 761
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 762
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->read()V

    return-void
.end method
