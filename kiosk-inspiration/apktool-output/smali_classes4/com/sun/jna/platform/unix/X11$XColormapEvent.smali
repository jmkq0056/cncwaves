.class public Lcom/sun/jna/platform/unix/X11$XColormapEvent;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "type",
        "serial",
        "send_event",
        "display",
        "window",
        "colormap",
        "c_new",
        "state"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XColormapEvent"
.end annotation


# instance fields
.field public c_new:I

.field public colormap:Lcom/sun/jna/platform/unix/X11$Colormap;

.field public display:Lcom/sun/jna/platform/unix/X11$Display;

.field public send_event:I

.field public serial:Lcom/sun/jna/NativeLong;

.field public state:I

.field public type:I

.field public window:Lcom/sun/jna/platform/unix/X11$Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1851
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
