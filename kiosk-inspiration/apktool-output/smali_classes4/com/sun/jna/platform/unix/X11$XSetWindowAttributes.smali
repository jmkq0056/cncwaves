.class public Lcom/sun/jna/platform/unix/X11$XSetWindowAttributes;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "background_pixmap",
        "background_pixel",
        "border_pixmap",
        "border_pixel",
        "bit_gravity",
        "win_gravity",
        "backing_store",
        "backing_planes",
        "backing_pixel",
        "save_under",
        "event_mask",
        "do_not_propagate_mask",
        "override_redirect",
        "colormap",
        "cursor"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSetWindowAttributes"
.end annotation


# instance fields
.field public background_pixel:Lcom/sun/jna/NativeLong;

.field public background_pixmap:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public backing_pixel:Lcom/sun/jna/NativeLong;

.field public backing_planes:Lcom/sun/jna/NativeLong;

.field public backing_store:I

.field public bit_gravity:I

.field public border_pixel:Lcom/sun/jna/NativeLong;

.field public border_pixmap:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public colormap:Lcom/sun/jna/platform/unix/X11$Colormap;

.field public cursor:Lcom/sun/jna/platform/unix/X11$Cursor;

.field public do_not_propagate_mask:Lcom/sun/jna/NativeLong;

.field public event_mask:Lcom/sun/jna/NativeLong;

.field public override_redirect:Z

.field public save_under:Z

.field public win_gravity:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
