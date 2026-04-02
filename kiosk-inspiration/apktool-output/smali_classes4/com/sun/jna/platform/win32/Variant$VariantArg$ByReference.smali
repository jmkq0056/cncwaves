.class public Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;
.super Lcom/sun/jna/platform/win32/Variant$VariantArg;
.source "Variant.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant$VariantArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 772
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VariantArg;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 0

    .line 775
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VariantArg;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-void
.end method
