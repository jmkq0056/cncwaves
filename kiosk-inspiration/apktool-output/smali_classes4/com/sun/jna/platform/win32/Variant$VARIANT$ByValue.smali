.class public Lcom/sun/jna/platform/win32/Variant$VARIANT$ByValue;
.super Lcom/sun/jna/platform/win32/Variant$VARIANT;
.source "Variant.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant$VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByValue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 149
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$ByValue;->setValue(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;Ljava/lang/Object;)V

    return-void
.end method
