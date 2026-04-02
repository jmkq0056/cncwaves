.class public Lcom/sun/jna/platform/win32/Variant$VariantArg;
.super Lcom/sun/jna/Structure;
.source "Variant.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "variantArg"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariantArg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;
    }
.end annotation


# instance fields
.field public variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 783
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 780
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VariantArg;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 791
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 780
    new-array p1, p1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Variant$VariantArg;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-void
.end method

.method public constructor <init>([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 1

    .line 794
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 780
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 795
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Variant$VariantArg;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-void
.end method


# virtual methods
.method public setArraySize(I)V
    .locals 0

    .line 799
    new-array p1, p1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Variant$VariantArg;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 800
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VariantArg;->read()V

    return-void
.end method
