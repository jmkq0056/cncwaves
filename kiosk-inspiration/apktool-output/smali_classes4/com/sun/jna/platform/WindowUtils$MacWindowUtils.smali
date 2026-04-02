.class Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;
.super Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacWindowUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;
    }
.end annotation


# static fields
.field private static final WDRAG:Ljava/lang/String; = "apple.awt.draggableWindowBackground"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1324
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/platform/WindowUtils$1;)V
    .locals 0

    .line 1324
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;-><init>()V

    return-void
.end method

.method private fixWindowDragging(Ljava/awt/Window;Ljava/lang/String;)V
    .locals 3

    .line 1378
    instance-of v0, p1, Ljavax/swing/RootPaneContainer;

    if-eqz v0, :cond_0

    .line 1379
    move-object v0, p1

    check-cast v0, Ljavax/swing/RootPaneContainer;

    invoke-interface {v0}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    .line 1380
    const-string v1, "apple.awt.draggableWindowBackground"

    invoke-virtual {v0, v1}, Ljavax/swing/JRootPane;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 1382
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1383
    invoke-virtual {p1}, Ljava/awt/Window;->isDisplayable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1384
    invoke-static {}, Lcom/sun/jna/platform/WindowUtils;->access$800()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "{0}(): To avoid content dragging, {1}() must be called before the window is realized, or apple.awt.draggableWindowBackground must be set to Boolean.FALSE before the window is realized.  If you really want content dragging, set apple.awt.draggableWindowBackground on the window\'\'s root pane to Boolean.TRUE before calling {2}() to hide this message."

    filled-new-array {p2, p2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private installMaskingPane(Ljava/awt/Window;)Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;
    .locals 2

    .line 1332
    instance-of v0, p1, Ljavax/swing/RootPaneContainer;

    if-eqz v0, :cond_1

    .line 1334
    check-cast p1, Ljavax/swing/RootPaneContainer;

    .line 1335
    invoke-interface {p1}, Ljavax/swing/RootPaneContainer;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    .line 1336
    instance-of v1, v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    if-eqz v1, :cond_0

    .line 1337
    check-cast v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    return-object v0

    .line 1340
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;-><init>(Ljava/awt/Component;)V

    .line 1342
    invoke-interface {p1, v1}, Ljavax/swing/RootPaneContainer;->setContentPane(Ljava/awt/Container;)V

    return-object v1

    .line 1346
    :cond_1
    invoke-virtual {p1}, Ljava/awt/Window;->getComponentCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/awt/Window;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1347
    :goto_0
    instance-of v1, v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    if-eqz v1, :cond_3

    .line 1348
    check-cast v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    return-object v0

    .line 1351
    :cond_3
    new-instance v1, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;-><init>(Ljava/awt/Component;)V

    .line 1352
    invoke-virtual {p1, v1}, Ljava/awt/Window;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-object v1
.end method

.method private setBackgroundTransparent(Ljava/awt/Window;ZLjava/lang/String;)V
    .locals 7

    .line 1485
    instance-of v0, p1, Ljavax/swing/RootPaneContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/swing/RootPaneContainer;

    .line 1486
    invoke-interface {v0}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1487
    :goto_0
    const-string v2, "transparent-old-bg"

    if-eqz p2, :cond_2

    if-eqz v0, :cond_1

    .line 1489
    invoke-virtual {p1}, Ljava/awt/Window;->getBackground()Ljava/awt/Color;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1491
    :cond_1
    new-instance p2, Ljava/awt/Color;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v0, v0}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {p1, p2}, Ljava/awt/Window;->setBackground(Ljava/awt/Color;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 1495
    invoke-virtual {v0, v2}, Ljavax/swing/JRootPane;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/awt/Color;

    if-eqz p2, :cond_3

    .line 1500
    new-instance v3, Ljava/awt/Color;

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v4

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v5

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result v6

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p2

    invoke-direct {v3, v4, v5, v6, p2}, Ljava/awt/Color;-><init>(IIII)V

    move-object p2, v3

    .line 1502
    :cond_3
    invoke-virtual {p1, p2}, Ljava/awt/Window;->setBackground(Ljava/awt/Color;)V

    .line 1503
    invoke-virtual {v0, v2, v1}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1506
    :cond_4
    invoke-virtual {p1, v1}, Ljava/awt/Window;->setBackground(Ljava/awt/Color;)V

    .line 1509
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->fixWindowDragging(Ljava/awt/Window;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isWindowAlphaSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setWindowAlpha(Ljava/awt/Window;F)V
    .locals 3

    .line 1401
    instance-of v0, p1, Ljavax/swing/RootPaneContainer;

    if-eqz v0, :cond_0

    .line 1402
    move-object v0, p1

    check-cast v0, Ljavax/swing/RootPaneContainer;

    invoke-interface {v0}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    .line 1403
    const-string v1, "Window.alpha"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JRootPane;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1404
    const-string v0, "setWindowAlpha"

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->fixWindowDragging(Ljava/awt/Window;Ljava/lang/String;)V

    .line 1406
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$1;-><init>(Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;Ljava/awt/Window;F)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->whenDisplayable(Ljava/awt/Component;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWindowMask(Ljava/awt/Component;Ljava/awt/Shape;)V
    .locals 1

    .line 1436
    instance-of v0, p1, Ljava/awt/Window;

    if-eqz v0, :cond_1

    .line 1437
    check-cast p1, Ljava/awt/Window;

    .line 1438
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->installMaskingPane(Ljava/awt/Window;)Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;

    move-result-object v0

    .line 1439
    invoke-virtual {v0, p2}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils$OSXMaskingContentPane;->setMask(Ljava/awt/Shape;)V

    .line 1440
    sget-object v0, Lcom/sun/jna/platform/WindowUtils;->MASK_NONE:Ljava/awt/Shape;

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "setWindowMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->setBackgroundTransparent(Ljava/awt/Window;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected setWindowMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1426
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->toShape(Ljava/awt/image/Raster;)Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->setWindowMask(Ljava/awt/Component;Ljava/awt/Shape;)V

    return-void

    .line 1429
    :cond_0
    new-instance p2, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/Component;->getWidth()I

    move-result v0

    .line 1430
    invoke-virtual {p1}, Ljava/awt/Component;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 1429
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->setWindowMask(Ljava/awt/Component;Ljava/awt/Shape;)V

    return-void
.end method

.method public setWindowTransparent(Ljava/awt/Window;Z)V
    .locals 1

    .line 1368
    invoke-virtual {p1}, Ljava/awt/Window;->getBackground()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {p1}, Ljava/awt/Window;->getBackground()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq p2, v0, :cond_1

    .line 1371
    const-string v0, "setWindowTransparent"

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/jna/platform/WindowUtils$MacWindowUtils;->setBackgroundTransparent(Ljava/awt/Window;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
