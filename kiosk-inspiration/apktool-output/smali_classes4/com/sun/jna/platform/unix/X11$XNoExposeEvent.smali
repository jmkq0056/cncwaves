.class public Lcom/sun/jna/platform/unix/X11$XNoExposeEvent;
.super Lcom/sun/jna/Structure;
.source "X11.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "type",
        "serial",
        "send_event",
        "display",
        "drawable",
        "major_code",
        "minor_code"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XNoExposeEvent"
.end annotation


# instance fields
.field public display:Lcom/sun/jna/platform/unix/X11$Display;

.field public drawable:Lcom/sun/jna/platform/unix/X11$Drawable;

.field public major_code:I

.field public minor_code:I

.field public send_event:I

.field public serial:Lcom/sun/jna/NativeLong;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1637
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method
