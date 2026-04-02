.class public interface abstract Lcom/sun/jna/platform/unix/X11$XTest;
.super Ljava/lang/Object;
.source "X11.java"

# interfaces
.implements Lcom/sun/jna/Library;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "XTest"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/unix/X11$XTest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 364
    const-string v0, "Xtst"

    const-class v1, Lcom/sun/jna/platform/unix/X11$XTest;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11$XTest;

    sput-object v0, Lcom/sun/jna/platform/unix/X11$XTest;->INSTANCE:Lcom/sun/jna/platform/unix/X11$XTest;

    return-void
.end method


# virtual methods
.method public abstract XTestCompareCurrentCursorWithWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)Z
.end method

.method public abstract XTestCompareCursorWithWindow(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Cursor;)Z
.end method

.method public abstract XTestDiscard(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XTestFakeButtonEvent(Lcom/sun/jna/platform/unix/X11$Display;IZLcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeDeviceButtonEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XDeviceByReference;IZLcom/sun/jna/ptr/IntByReference;ILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeDeviceKeyEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XDeviceByReference;IZLcom/sun/jna/ptr/IntByReference;ILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeDeviceMotionEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XDeviceByReference;ZILcom/sun/jna/ptr/IntByReference;ILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeKeyEvent(Lcom/sun/jna/platform/unix/X11$Display;IZLcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeMotionEvent(Lcom/sun/jna/platform/unix/X11$Display;IIILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeProximityEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XDeviceByReference;ZLcom/sun/jna/ptr/IntByReference;ILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestFakeRelativeMotionEvent(Lcom/sun/jna/platform/unix/X11$Display;IILcom/sun/jna/NativeLong;)I
.end method

.method public abstract XTestGrabControl(Lcom/sun/jna/platform/unix/X11$Display;Z)I
.end method

.method public abstract XTestQueryExtension(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract XTestSetVisualIDOfVisual(Lcom/sun/jna/platform/unix/X11$Visual;Lcom/sun/jna/platform/unix/X11$VisualID;)V
.end method
