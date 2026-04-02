.class public Lcom/sun/jna/platform/unix/X11$XExposeEvent;
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
        "x",
        "y",
        "width",
        "height",
        "count"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XExposeEvent"
.end annotation


# instance fields
.field public count:I

.field public display:Lcom/sun/jna/platform/unix/X11$Display;

.field public height:I

.field public send_event:I

.field public serial:Lcom/sun/jna/NativeLong;

.field public type:I

.field public width:I

.field public window:Lcom/sun/jna/platform/unix/X11$Window;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1611
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
