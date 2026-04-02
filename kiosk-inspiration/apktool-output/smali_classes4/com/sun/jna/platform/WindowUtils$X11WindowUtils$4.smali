.class Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;
.super Ljava/lang/Object;
.source "WindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setWindowShape(Ljava/awt/Window;Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

.field final synthetic val$src:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;

.field final synthetic val$w:Ljava/awt/Window;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iput-object p2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->val$w:Ljava/awt/Window;

    iput-object p3, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->val$src:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1848
    sget-object v1, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    const/4 v2, 0x0

    .line 1849
    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 1855
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->val$w:Ljava/awt/Window;

    invoke-static {v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->access$900(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object v5

    .line 1856
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->val$src:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;

    invoke-interface {v0, v4, v5}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;->getPixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;)Lcom/sun/jna/platform/unix/X11$Pixmap;

    move-result-object v2

    .line 1857
    sget-object v3, Lcom/sun/jna/platform/unix/X11$Xext;->INSTANCE:Lcom/sun/jna/platform/unix/X11$Xext;

    if-nez v2, :cond_1

    .line 1858
    sget-object v0, Lcom/sun/jna/platform/unix/X11$Pixmap;->None:Lcom/sun/jna/platform/unix/X11$Pixmap;

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_0
    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/sun/jna/platform/unix/X11$Xext;->XShapeCombineMask(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;IIILcom/sun/jna/platform/unix/X11$Pixmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1864
    invoke-interface {v1, v4, v2}, Lcom/sun/jna/platform/unix/X11;->XFreePixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Pixmap;)I

    .line 1866
    :cond_2
    invoke-interface {v1, v4}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 1868
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;->val$w:Ljava/awt/Window;

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getWindow(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object v1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setForceHeavyweightPopups(Ljava/awt/Window;Z)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 1864
    invoke-interface {v1, v4, v2}, Lcom/sun/jna/platform/unix/X11;->XFreePixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Pixmap;)I

    .line 1866
    :cond_4
    invoke-interface {v1, v4}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 1867
    throw v0
.end method
