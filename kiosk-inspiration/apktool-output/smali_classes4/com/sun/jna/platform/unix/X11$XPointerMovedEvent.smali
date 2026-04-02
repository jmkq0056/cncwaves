.class public Lcom/sun/jna/platform/unix/X11$XPointerMovedEvent;
.super Lcom/sun/jna/platform/unix/X11$XMotionEvent;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPointerMovedEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1556
    invoke-direct {p0}, Lcom/sun/jna/platform/unix/X11$XMotionEvent;-><init>()V

    return-void
.end method
