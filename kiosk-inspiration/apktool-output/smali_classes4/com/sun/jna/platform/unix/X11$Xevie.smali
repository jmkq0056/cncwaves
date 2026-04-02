.class public interface abstract Lcom/sun/jna/platform/unix/X11$Xevie;
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
    name = "Xevie"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/unix/X11$Xevie;

.field public static final XEVIE_MODIFIED:I = 0x1

.field public static final XEVIE_UNMODIFIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 347
    const-string v0, "Xevie"

    const-class v1, Lcom/sun/jna/platform/unix/X11$Xevie;

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/unix/X11$Xevie;

    sput-object v0, Lcom/sun/jna/platform/unix/X11$Xevie;->INSTANCE:Lcom/sun/jna/platform/unix/X11$Xevie;

    return-void
.end method


# virtual methods
.method public abstract XevieEnd(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method

.method public abstract XevieQueryVersion(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract XevieSelectInput(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;)I
.end method

.method public abstract XevieSendEvent(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$XEvent;I)I
.end method

.method public abstract XevieStart(Lcom/sun/jna/platform/unix/X11$Display;)I
.end method
