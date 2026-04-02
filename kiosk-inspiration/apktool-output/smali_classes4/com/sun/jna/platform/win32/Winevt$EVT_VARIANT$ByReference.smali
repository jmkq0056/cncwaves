.class public Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$ByReference;
.super Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;
.source "Winevt.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
