.class Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;
.super Ljava/lang/Object;
.source "WindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setWindowAlpha(Ljava/awt/Window;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

.field final synthetic val$alpha:F

.field final synthetic val$w:Ljava/awt/Window;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;F)V
    .locals 0

    .line 1709
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iput-object p2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;->val$w:Ljava/awt/Window;

    iput p3, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;->val$alpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1712
    sget-object v1, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    const/4 v0, 0x0

    .line 1713
    invoke-interface {v1, v0}, Lcom/sun/jna/platform/unix/X11;->XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 1717
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;->val$w:Ljava/awt/Window;

    invoke-static {v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->access$900(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object v3

    .line 1718
    iget v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;->val$alpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    const/4 v5, 0x0

    const-string v6, "_NET_WM_WINDOW_OPACITY"

    if-nez v4, :cond_1

    .line 1720
    :try_start_1
    invoke-interface {v1, v2, v6, v5}, Lcom/sun/jna/platform/unix/X11;->XInternAtom(Lcom/sun/jna/platform/unix/X11$Display;Ljava/lang/String;Z)Lcom/sun/jna/platform/unix/X11$Atom;

    move-result-object v0

    .line 1719
    invoke-interface {v1, v2, v3, v0}, Lcom/sun/jna/platform/unix/X11;->XDeleteProperty(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Atom;)I

    goto :goto_0

    :cond_1
    const/high16 v4, 0x4f800000

    mul-float/2addr v0, v4

    float-to-long v7, v0

    long-to-int v0, v7

    .line 1725
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 1727
    invoke-interface {v1, v2, v6, v5}, Lcom/sun/jna/platform/unix/X11;->XInternAtom(Lcom/sun/jna/platform/unix/X11$Display;Ljava/lang/String;Z)Lcom/sun/jna/platform/unix/X11$Atom;

    move-result-object v0

    sget-object v5, Lcom/sun/jna/platform/unix/X11;->XA_CARDINAL:Lcom/sun/jna/platform/unix/X11$Atom;

    .line 1731
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    move-object v4, v0

    .line 1726
    invoke-interface/range {v1 .. v9}, Lcom/sun/jna/platform/unix/X11;->XChangeProperty(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$Atom;Lcom/sun/jna/platform/unix/X11$Atom;IILcom/sun/jna/Pointer;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1735
    :goto_0
    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 1736
    throw v0
.end method
