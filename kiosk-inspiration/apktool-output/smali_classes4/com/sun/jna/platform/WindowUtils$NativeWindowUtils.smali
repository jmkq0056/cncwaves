.class public abstract Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeWindowUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAllWindows(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/DesktopWindow;",
            ">;"
        }
    .end annotation

    .line 662
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlphaCompatibleGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 1

    .line 491
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method protected getIconSize(Lcom/sun/jna/platform/win32/WinDef$HICON;)Ljava/awt/Dimension;
    .locals 1

    .line 641
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getProcessFilePath(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/lang/String;
    .locals 1

    .line 695
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getWindow(Ljava/awt/Component;)Ljava/awt/Window;
    .locals 1

    .line 385
    instance-of v0, p1, Ljava/awt/Window;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Window;

    return-object p1

    .line 386
    :cond_0
    invoke-static {p1}, Ljavax/swing/SwingUtilities;->getWindowAncestor(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object p1

    return-object p1
.end method

.method protected getWindowIcon(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 625
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getWindowLocationAndSize(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/awt/Rectangle;
    .locals 1

    .line 710
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getWindowTitle(Lcom/sun/jna/platform/win32/WinDef$HWND;)Ljava/lang/String;
    .locals 1

    .line 678
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This platform is not supported, yet."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isWindowAlphaSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setDoubleBuffered(Ljava/awt/Component;Z)V
    .locals 2

    .line 506
    instance-of v0, p1, Ljavax/swing/JComponent;

    if-eqz v0, :cond_0

    .line 507
    move-object v0, p1

    check-cast v0, Ljavax/swing/JComponent;

    invoke-virtual {v0, p2}, Ljavax/swing/JComponent;->setDoubleBuffered(Z)V

    .line 509
    :cond_0
    instance-of v0, p1, Ljavax/swing/JRootPane;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 510
    check-cast p1, Ljavax/swing/JRootPane;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/swing/JRootPane;->setDoubleBuffered(Z)V

    return-void

    .line 512
    :cond_1
    instance-of v0, p1, Ljava/awt/Container;

    if-eqz v0, :cond_2

    .line 513
    check-cast p1, Ljava/awt/Container;

    invoke-virtual {p1}, Ljava/awt/Container;->getComponents()[Ljava/awt/Component;

    move-result-object p1

    const/4 v0, 0x0

    .line 514
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 515
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->setDoubleBuffered(Ljava/awt/Component;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setForceHeavyweightPopups(Ljava/awt/Window;Z)V
    .locals 4

    .line 595
    instance-of v0, p1, Lcom/sun/jna/platform/WindowUtils$HeavyweightForcer;

    if-nez v0, :cond_3

    .line 596
    invoke-virtual {p1}, Ljava/awt/Window;->getOwnedWindows()[Ljava/awt/Window;

    move-result-object v0

    const/4 v1, 0x0

    .line 597
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 598
    aget-object v2, v0, v1

    instance-of v3, v2, Lcom/sun/jna/platform/WindowUtils$HeavyweightForcer;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_1

    .line 601
    :cond_0
    invoke-virtual {v2}, Ljava/awt/Window;->dispose()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    :cond_2
    const-string v0, "jna.force_hw_popups"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 605
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 606
    new-instance p2, Lcom/sun/jna/platform/WindowUtils$HeavyweightForcer;

    invoke-direct {p2, p1}, Lcom/sun/jna/platform/WindowUtils$HeavyweightForcer;-><init>(Ljava/awt/Window;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected setLayersTransparent(Ljava/awt/Window;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 522
    new-instance v2, Ljava/awt/Color;

    invoke-direct {v2, v1, v1, v1, v1}, Ljava/awt/Color;-><init>(IIII)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 523
    :goto_0
    instance-of v3, p1, Ljavax/swing/RootPaneContainer;

    if-eqz v3, :cond_5

    .line 524
    move-object v3, p1

    check-cast v3, Ljavax/swing/RootPaneContainer;

    .line 525
    invoke-interface {v3}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v3

    .line 526
    invoke-virtual {v3}, Ljavax/swing/JRootPane;->getLayeredPane()Ljavax/swing/JLayeredPane;

    move-result-object v4

    .line 527
    invoke-virtual {v3}, Ljavax/swing/JRootPane;->getContentPane()Ljava/awt/Container;

    move-result-object v5

    .line 528
    instance-of v6, v5, Ljavax/swing/JComponent;

    if-eqz v6, :cond_1

    check-cast v5, Ljavax/swing/JComponent;

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 530
    :goto_1
    const-string v6, "transparent-old-bg"

    const-string v7, "transparent-old-opaque"

    if-eqz p2, :cond_3

    .line 531
    invoke-virtual {v4}, Ljavax/swing/JLayeredPane;->isOpaque()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v4, v7, p2}, Ljavax/swing/JLayeredPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 532
    invoke-virtual {v4, v1}, Ljavax/swing/JLayeredPane;->setOpaque(Z)V

    .line 533
    invoke-virtual {v3}, Ljavax/swing/JRootPane;->isOpaque()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3, v7, p2}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    invoke-virtual {v3, v1}, Ljavax/swing/JRootPane;->setOpaque(Z)V

    if-eqz v5, :cond_2

    .line 536
    invoke-virtual {v5}, Ljavax/swing/JComponent;->isOpaque()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v5, v7, p2}, Ljavax/swing/JComponent;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    invoke-virtual {v5, v1}, Ljavax/swing/JComponent;->setOpaque(Z)V

    .line 540
    :cond_2
    invoke-virtual {v3}, Ljavax/swing/JRootPane;->getParent()Ljava/awt/Container;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/Container;->getBackground()Ljava/awt/Color;

    move-result-object p2

    .line 539
    invoke-virtual {v3, v6, p2}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 543
    :cond_3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7}, Ljavax/swing/JLayeredPane;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v4, p2}, Ljavax/swing/JLayeredPane;->setOpaque(Z)V

    .line 544
    invoke-virtual {v4, v7, v0}, Ljavax/swing/JLayeredPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Ljavax/swing/JRootPane;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v3, p2}, Ljavax/swing/JRootPane;->setOpaque(Z)V

    .line 546
    invoke-virtual {v3, v7, v0}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_4

    .line 548
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v5, p2}, Ljavax/swing/JComponent;->setOpaque(Z)V

    .line 549
    invoke-virtual {v5, v7, v0}, Ljavax/swing/JComponent;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    :cond_4
    invoke-virtual {v3, v6}, Ljavax/swing/JRootPane;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/awt/Color;

    .line 552
    invoke-virtual {v3, v6, v0}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    :cond_5
    :goto_2
    invoke-virtual {p1, v2}, Ljava/awt/Window;->setBackground(Ljava/awt/Color;)V

    return-void
.end method

.method protected setMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V
    .locals 0

    .line 562
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Window masking is not available"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWindowAlpha(Ljava/awt/Window;F)V
    .locals 0

    return-void
.end method

.method public setWindowMask(Ljava/awt/Component;Ljava/awt/Shape;)V
    .locals 0

    .line 578
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->toRaster(Ljava/awt/Shape;)Ljava/awt/image/Raster;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->setWindowMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V

    return-void
.end method

.method protected setWindowMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V
    .locals 2

    .line 571
    invoke-virtual {p1}, Ljava/awt/Component;->isLightweight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->setMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V

    return-void

    .line 572
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component must be heavyweight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setWindowMask(Ljava/awt/Component;Ljavax/swing/Icon;)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->toRaster(Ljava/awt/Component;Ljavax/swing/Icon;)Ljava/awt/image/Raster;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->setWindowMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V

    return-void
.end method

.method public setWindowTransparent(Ljava/awt/Window;Z)V
    .locals 0

    return-void
.end method

.method protected toRaster(Ljava/awt/Component;Ljavax/swing/Icon;)Ljava/awt/image/Raster;
    .locals 6

    if-eqz p2, :cond_0

    .line 448
    new-instance v0, Ljava/awt/Rectangle;

    invoke-interface {p2}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v1

    .line 449
    invoke-interface {p2}, Ljavax/swing/Icon;->getIconHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 450
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget v2, v0, Ljava/awt/Rectangle;->width:I

    iget v4, v0, Ljava/awt/Rectangle;->height:I

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 453
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 454
    sget-object v4, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v2, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 455
    iget v4, v0, Ljava/awt/Rectangle;->width:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v2, v3, v3, v4, v0}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 456
    sget-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v2, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 457
    invoke-interface {p2, p1, v2, v3, v3}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 458
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getAlphaRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected toRaster(Ljava/awt/Shape;)Ljava/awt/image/Raster;
    .locals 5

    .line 427
    sget-object v0, Lcom/sun/jna/platform/WindowUtils;->MASK_NONE:Ljava/awt/Shape;

    if-eq p1, v0, :cond_0

    .line 428
    invoke-interface {p1}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 429
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    if-lez v1, :cond_0

    iget v1, v0, Ljava/awt/Rectangle;->height:I

    if-lez v1, :cond_0

    .line 430
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget v2, v0, Ljava/awt/Rectangle;->x:I

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    iget v4, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, v4

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 434
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 435
    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 436
    iget v3, v0, Ljava/awt/Rectangle;->x:I

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v3, v4}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 437
    sget-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    invoke-virtual {v2, v0}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 438
    invoke-virtual {v2, p1}, Ljava/awt/Graphics2D;->fill(Ljava/awt/Shape;)V

    .line 439
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected toShape(Ljava/awt/image/Raster;)Ljava/awt/Shape;
    .locals 3

    .line 464
    new-instance v0, Ljava/awt/geom/Area;

    new-instance v1, Ljava/awt/Rectangle;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-direct {v0, v1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    .line 465
    new-instance v1, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$3;-><init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/awt/geom/Area;)V

    invoke-static {p1, v1}, Lcom/sun/jna/platform/RasterRangesUtils;->outputOccupiedRanges(Ljava/awt/image/Raster;Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z

    return-object v0
.end method

.method protected whenDisplayable(Ljava/awt/Component;Ljava/lang/Runnable;)V
    .locals 1

    .line 393
    invoke-virtual {p1}, Ljava/awt/Component;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sun/jna/platform/WindowUtils$Holder;->requiresVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/Component;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 396
    :cond_1
    sget-boolean v0, Lcom/sun/jna/platform/WindowUtils$Holder;->requiresVisible:Z

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->getWindow(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object p1

    new-instance v0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$1;-><init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Ljava/awt/Window;->addWindowListener(Ljava/awt/event/WindowListener;)V

    return-void

    .line 412
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$2;-><init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Ljava/awt/Component;->addHierarchyListener(Ljava/awt/event/HierarchyListener;)V

    return-void
.end method
