.class public Lcom/sun/jna/platform/unix/X11$XGCValues;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "function",
        "plane_mask",
        "foreground",
        "background",
        "line_width",
        "line_style",
        "cap_style",
        "join_style",
        "fill_style",
        "fill_rule",
        "arc_mode",
        "tile",
        "stipple",
        "ts_x_origin",
        "ts_y_origin",
        "font",
        "subwindow_mode",
        "graphics_exposures",
        "clip_x_origin",
        "clip_y_origin",
        "clip_mask",
        "dash_offset",
        "dashes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XGCValues"
.end annotation


# instance fields
.field public arc_mode:I

.field public background:Lcom/sun/jna/NativeLong;

.field public cap_style:I

.field public clip_mask:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public clip_x_origin:I

.field public clip_y_origin:I

.field public dash_offset:I

.field public dashes:B

.field public fill_rule:I

.field public fill_style:I

.field public font:Lcom/sun/jna/platform/unix/X11$Font;

.field public foreground:Lcom/sun/jna/NativeLong;

.field public function:I

.field public graphics_exposures:Z

.field public join_style:I

.field public line_style:I

.field public line_width:I

.field public plane_mask:Lcom/sun/jna/NativeLong;

.field public stipple:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public subwindow_mode:I

.field public tile:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public ts_x_origin:I

.field public ts_y_origin:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 829
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
