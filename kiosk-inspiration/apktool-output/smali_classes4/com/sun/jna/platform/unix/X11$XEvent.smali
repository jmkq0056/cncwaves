.class public Lcom/sun/jna/platform/unix/X11$XEvent;
.super Lcom/sun/jna/Union;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XEvent"
.end annotation


# instance fields
.field public pad:[Lcom/sun/jna/NativeLong;

.field public type:I

.field public xany:Lcom/sun/jna/platform/unix/X11$XAnyEvent;

.field public xbutton:Lcom/sun/jna/platform/unix/X11$XButtonEvent;

.field public xcirculate:Lcom/sun/jna/platform/unix/X11$XCirculateEvent;

.field public xcirculaterequest:Lcom/sun/jna/platform/unix/X11$XCirculateRequestEvent;

.field public xclient:Lcom/sun/jna/platform/unix/X11$XClientMessageEvent;

.field public xcolormap:Lcom/sun/jna/platform/unix/X11$XColormapEvent;

.field public xconfigure:Lcom/sun/jna/platform/unix/X11$XConfigureEvent;

.field public xconfigurerequest:Lcom/sun/jna/platform/unix/X11$XConfigureRequestEvent;

.field public xcreatewindow:Lcom/sun/jna/platform/unix/X11$XCreateWindowEvent;

.field public xcrossing:Lcom/sun/jna/platform/unix/X11$XCrossingEvent;

.field public xdestroywindow:Lcom/sun/jna/platform/unix/X11$XDestroyWindowEvent;

.field public xerror:Lcom/sun/jna/platform/unix/X11$XErrorEvent;

.field public xexpose:Lcom/sun/jna/platform/unix/X11$XExposeEvent;

.field public xfocus:Lcom/sun/jna/platform/unix/X11$XFocusChangeEvent;

.field public xgraphicsexpose:Lcom/sun/jna/platform/unix/X11$XGraphicsExposeEvent;

.field public xgravity:Lcom/sun/jna/platform/unix/X11$XGravityEvent;

.field public xkey:Lcom/sun/jna/platform/unix/X11$XKeyEvent;

.field public xkeymap:Lcom/sun/jna/platform/unix/X11$XKeymapEvent;

.field public xmap:Lcom/sun/jna/platform/unix/X11$XMapEvent;

.field public xmapping:Lcom/sun/jna/platform/unix/X11$XMappingEvent;

.field public xmaprequest:Lcom/sun/jna/platform/unix/X11$XMapRequestEvent;

.field public xmotion:Lcom/sun/jna/platform/unix/X11$XMotionEvent;

.field public xnoexpose:Lcom/sun/jna/platform/unix/X11$XNoExposeEvent;

.field public xproperty:Lcom/sun/jna/platform/unix/X11$XPropertyEvent;

.field public xreparent:Lcom/sun/jna/platform/unix/X11$XReparentEvent;

.field public xresizerequest:Lcom/sun/jna/platform/unix/X11$XResizeRequestEvent;

.field public xselection:Lcom/sun/jna/platform/unix/X11$XSelectionEvent;

.field public xselectionclear:Lcom/sun/jna/platform/unix/X11$XSelectionClearEvent;

.field public xselectionrequest:Lcom/sun/jna/platform/unix/X11$XSelectionRequestEvent;

.field public xunmap:Lcom/sun/jna/platform/unix/X11$XUnmapEvent;

.field public xvisibility:Lcom/sun/jna/platform/unix/X11$XVisibilityEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1436
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    const/16 v0, 0x18

    .line 1469
    new-array v0, v0, [Lcom/sun/jna/NativeLong;

    iput-object v0, p0, Lcom/sun/jna/platform/unix/X11$XEvent;->pad:[Lcom/sun/jna/NativeLong;

    return-void
.end method
