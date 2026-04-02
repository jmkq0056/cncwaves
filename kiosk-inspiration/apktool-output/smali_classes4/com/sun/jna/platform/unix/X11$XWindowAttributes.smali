.class public Lcom/sun/jna/platform/unix/X11$XWindowAttributes;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "x",
        "y",
        "width",
        "height",
        "border_width",
        "depth",
        "visual",
        "root",
        "c_class",
        "bit_gravity",
        "win_gravity",
        "backing_store",
        "backing_planes",
        "backing_pixel",
        "save_under",
        "colormap",
        "map_installed",
        "map_state",
        "all_event_masks",
        "your_event_mask",
        "do_not_propagate_mask",
        "override_redirect",
        "screen"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XWindowAttributes"
.end annotation


# instance fields
.field public all_event_masks:Lcom/sun/jna/NativeLong;

.field public backing_pixel:Lcom/sun/jna/NativeLong;

.field public backing_planes:Lcom/sun/jna/NativeLong;

.field public backing_store:I

.field public bit_gravity:I

.field public border_width:I

.field public c_class:I

.field public colormap:Lcom/sun/jna/platform/unix/X11$Colormap;

.field public depth:I

.field public do_not_propagate_mask:Lcom/sun/jna/NativeLong;

.field public height:I

.field public map_installed:Z

.field public map_state:I

.field public override_redirect:Z

.field public root:Lcom/sun/jna/platform/unix/X11$Window;

.field public save_under:Z

.field public screen:Lcom/sun/jna/platform/unix/X11$Screen;

.field public visual:Lcom/sun/jna/platform/unix/X11$Visual;

.field public width:I

.field public win_gravity:I

.field public x:I

.field public y:I

.field public your_event_mask:Lcom/sun/jna/NativeLong;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
