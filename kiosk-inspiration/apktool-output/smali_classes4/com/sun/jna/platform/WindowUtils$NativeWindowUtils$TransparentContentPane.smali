.class public abstract Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;
.super Ljavax/swing/JPanel;
.source "WindowUtils.java"

# interfaces
.implements Ljava/awt/event/AWTEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "TransparentContentPane"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

.field private transparent:Z


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/awt/Container;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

    .line 320
    new-instance p1, Ljava/awt/BorderLayout;

    invoke-direct {p1}, Ljava/awt/BorderLayout;-><init>()V

    invoke-direct {p0, p1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 321
    const-string p1, "Center"

    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->setTransparent(Z)V

    .line 323
    instance-of p1, p2, Ljavax/swing/JPanel;

    if-eqz p1, :cond_0

    .line 324
    check-cast p2, Ljavax/swing/JComponent;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljavax/swing/JComponent;->setOpaque(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addNotify()V
    .locals 3

    .line 329
    invoke-super {p0}, Ljavax/swing/JPanel;->addNotify()V

    .line 330
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/awt/Toolkit;->addAWTEventListener(Ljava/awt/event/AWTEventListener;J)V

    return-void
.end method

.method public eventDispatched(Ljava/awt/AWTEvent;)V
    .locals 2

    .line 345
    invoke-virtual {p1}, Ljava/awt/AWTEvent;->getID()I

    move-result v0

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/awt/event/ContainerEvent;

    .line 346
    invoke-virtual {p1}, Ljava/awt/event/ContainerEvent;->getChild()Ljava/awt/Component;

    move-result-object v0

    invoke-static {v0, p0}, Ljavax/swing/SwingUtilities;->isDescendingFrom(Ljava/awt/Component;Ljava/awt/Component;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p1}, Ljava/awt/event/ContainerEvent;->getChild()Ljava/awt/Component;

    move-result-object p1

    .line 348
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->setDoubleBuffered(Ljava/awt/Component;Z)V

    :cond_0
    return-void
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 5

    .line 353
    iget-boolean v0, p0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->transparent:Z

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {p1}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object p1

    .line 355
    iget v0, p1, Ljava/awt/Rectangle;->width:I

    .line 356
    iget v1, p1, Ljava/awt/Rectangle;->height:I

    .line 357
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 358
    new-instance v2, Ljava/awt/image/BufferedImage;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 361
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    .line 362
    sget-object v4, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v3, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v4, 0x0

    .line 363
    invoke-virtual {v3, v4, v4, v0, v1}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 364
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    .line 366
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 367
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    neg-int v1, v1

    iget v3, p1, Ljava/awt/Rectangle;->y:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v3}, Ljava/awt/Graphics2D;->translate(II)V

    .line 368
    invoke-super {p0, v0}, Ljavax/swing/JPanel;->paint(Ljava/awt/Graphics;)V

    .line 369
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 371
    invoke-virtual {p0, v2, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->paintDirect(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)V

    :cond_0
    return-void

    .line 375
    :cond_1
    invoke-super {p0, p1}, Ljavax/swing/JPanel;->paint(Ljava/awt/Graphics;)V

    return-void
.end method

.method protected abstract paintDirect(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)V
.end method

.method public removeNotify()V
    .locals 1

    .line 334
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/awt/Toolkit;->removeAWTEventListener(Ljava/awt/event/AWTEventListener;)V

    .line 335
    invoke-super {p0}, Ljavax/swing/JPanel;->removeNotify()V

    return-void
.end method

.method public setTransparent(Z)V
    .locals 1

    .line 338
    iput-boolean p1, p0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->transparent:Z

    xor-int/lit8 v0, p1, 0x1

    .line 339
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->setOpaque(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 340
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->setDoubleBuffered(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;->repaint()V

    return-void
.end method
