.class public Lcom/sun/jna/platform/unix/X11$XWMHints;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "flags",
        "input",
        "initial_state",
        "icon_pixmap",
        "icon_window",
        "icon_x",
        "icon_y",
        "icon_mask",
        "window_group"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XWMHints"
.end annotation


# instance fields
.field public flags:Lcom/sun/jna/NativeLong;

.field public icon_mask:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public icon_pixmap:Lcom/sun/jna/platform/unix/X11$Pixmap;

.field public icon_window:Lcom/sun/jna/platform/unix/X11$Window;

.field public icon_x:I

.field public icon_y:I

.field public initial_state:I

.field public input:Z

.field public window_group:Lcom/sun/jna/platform/unix/X11$XID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 413
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
