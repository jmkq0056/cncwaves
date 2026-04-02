.class public Lcom/sun/jna/platform/unix/X11$XVisualInfo;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "visual",
        "visualid",
        "screen",
        "depth",
        "c_class",
        "red_mask",
        "green_mask",
        "blue_mask",
        "colormap_size",
        "bits_per_rgb"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XVisualInfo"
.end annotation


# instance fields
.field public bits_per_rgb:I

.field public blue_mask:Lcom/sun/jna/NativeLong;

.field public c_class:I

.field public colormap_size:I

.field public depth:I

.field public green_mask:Lcom/sun/jna/NativeLong;

.field public red_mask:Lcom/sun/jna/NativeLong;

.field public screen:I

.field public visual:Lcom/sun/jna/platform/unix/X11$Visual;

.field public visualid:Lcom/sun/jna/platform/unix/X11$VisualID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
