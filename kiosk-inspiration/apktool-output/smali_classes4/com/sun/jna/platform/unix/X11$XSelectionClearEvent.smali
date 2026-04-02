.class public Lcom/sun/jna/platform/unix/X11$XSelectionClearEvent;
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
        "selection",
        "time"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSelectionClearEvent"
.end annotation


# instance fields
.field public display:Lcom/sun/jna/platform/unix/X11$Display;

.field public selection:Lcom/sun/jna/platform/unix/X11$Atom;

.field public send_event:I

.field public serial:Lcom/sun/jna/NativeLong;

.field public time:Lcom/sun/jna/NativeLong;

.field public type:I

.field public window:Lcom/sun/jna/platform/unix/X11$Window;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1813
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
