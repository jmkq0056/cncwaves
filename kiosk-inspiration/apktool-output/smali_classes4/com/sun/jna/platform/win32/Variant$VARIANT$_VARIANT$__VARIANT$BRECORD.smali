.class public Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT$BRECORD;
.super Lcom/sun/jna/Structure;
.source "Variant.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "pvRecord",
        "pRecInfo"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BRECORD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT$BRECORD$ByReference;
    }
.end annotation


# instance fields
.field public pRecInfo:Lcom/sun/jna/Pointer;

.field public pvRecord:Lcom/sun/jna/platform/win32/WinDef$PVOID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
