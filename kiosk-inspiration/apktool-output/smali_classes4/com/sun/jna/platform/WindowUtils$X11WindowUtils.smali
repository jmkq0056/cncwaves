.class Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;
.super Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X11WindowUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;,
        Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;
    }
.end annotation


# static fields
.field private static final OPACITY:Ljava/lang/String; = "_NET_WM_WINDOW_OPACITY"

.field private static final OPAQUE:J = 0xffffffffL


# instance fields
.field private alphaVisualIDs:[J

.field private didCheck:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1512
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;-><init>()V

    const/4 v0, 0x0

    .line 1564
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/jna/platform/WindowUtils$1;)V
    .locals 0

    .line 1512
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/awt/Window;Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/Point;)Lcom/sun/jna/platform/unix/X11$Window;
    .locals 0

    .line 1512
    invoke-static {p0, p1, p2, p3}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getContentWindow(Ljava/awt/Window;Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/Point;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/image/Raster;)Lcom/sun/jna/platform/unix/X11$Pixmap;
    .locals 0

    .line 1512
    invoke-static {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->createBitmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/image/Raster;)Lcom/sun/jna/platform/unix/X11$Pixmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;
    .locals 0

    .line 1512
    invoke-static {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getDrawable(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/image/Raster;)Lcom/sun/jna/platform/unix/X11$Pixmap;
    .locals 13

    .line 1516
    sget-object v1, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    .line 1517
    invoke-virtual {p2}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 1518
    iget v2, v0, Ljava/awt/Rectangle;->x:I

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    add-int v4, v2, v3

    .line 1519
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int v5, v2, v0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 1520
    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/unix/X11;->XCreatePixmap(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;III)Lcom/sun/jna/platform/unix/X11$Pixmap;

    move-result-object v3

    .line 1521
    new-instance p0, Lcom/sun/jna/NativeLong;

    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sun/jna/NativeLong;-><init>(J)V

    const/4 p1, 0x0

    invoke-interface {v1, v2, v3, p0, p1}, Lcom/sun/jna/platform/unix/X11;->XCreateGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XGCValues;)Lcom/sun/jna/platform/unix/X11$GC;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 1525
    :cond_0
    new-instance p1, Lcom/sun/jna/NativeLong;

    invoke-direct {p1, v9, v10}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-interface {v1, v2, p0, p1}, Lcom/sun/jna/platform/unix/X11;->XSetForeground(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/NativeLong;)I

    move v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    move-object v4, p0

    .line 1526
    invoke-interface/range {v1 .. v8}, Lcom/sun/jna/platform/unix/X11;->XFillRectangle(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;IIII)I

    .line 1527
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    :try_start_0
    new-instance p1, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$1;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$1;-><init>(Ljava/util/List;)V

    invoke-static {p2, p1}, Lcom/sun/jna/platform/RasterRangesUtils;->outputOccupiedRanges(Ljava/awt/image/Raster;Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z

    .line 1536
    new-instance p1, Lcom/sun/jna/platform/unix/X11$XRectangle;

    invoke-direct {p1}, Lcom/sun/jna/platform/unix/X11$XRectangle;-><init>()V

    .line 1537
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sun/jna/platform/unix/X11$XRectangle;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/unix/X11$XRectangle;

    move-object v5, p1

    check-cast v5, [Lcom/sun/jna/platform/unix/X11$XRectangle;

    const/4 p1, 0x0

    move p2, p1

    .line 1538
    :goto_0
    array-length v0, v5

    if-ge p2, v0, :cond_1

    .line 1539
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Rectangle;

    .line 1540
    aget-object v6, v5, p2

    iget v7, v0, Ljava/awt/Rectangle;->x:I

    int-to-short v7, v7

    iput-short v7, v6, Lcom/sun/jna/platform/unix/X11$XRectangle;->x:S

    .line 1541
    aget-object v6, v5, p2

    iget v7, v0, Ljava/awt/Rectangle;->y:I

    int-to-short v7, v7

    iput-short v7, v6, Lcom/sun/jna/platform/unix/X11$XRectangle;->y:S

    .line 1542
    aget-object v6, v5, p2

    iget v7, v0, Ljava/awt/Rectangle;->width:I

    int-to-short v7, v7

    iput-short v7, v6, Lcom/sun/jna/platform/unix/X11$XRectangle;->width:S

    .line 1543
    aget-object v6, v5, p2

    iget v7, v0, Ljava/awt/Rectangle;->height:I

    int-to-short v7, v7

    iput-short v7, v6, Lcom/sun/jna/platform/unix/X11$XRectangle;->height:S

    .line 1545
    aget-object v6, v5, p2

    invoke-virtual {v6}, Lcom/sun/jna/platform/unix/X11$XRectangle;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v6

    .line 1546
    iget v7, v0, Ljava/awt/Rectangle;->x:I

    int-to-short v7, v7

    invoke-virtual {v6, v9, v10, v7}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 1547
    iget v7, v0, Ljava/awt/Rectangle;->y:I

    int-to-short v7, v7

    const-wide/16 v11, 0x2

    invoke-virtual {v6, v11, v12, v7}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 1548
    iget v7, v0, Ljava/awt/Rectangle;->width:I

    int-to-short v7, v7

    const-wide/16 v11, 0x4

    invoke-virtual {v6, v11, v12, v7}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 1549
    iget v0, v0, Ljava/awt/Rectangle;->height:I

    int-to-short v0, v0

    const-wide/16 v7, 0x6

    invoke-virtual {v6, v7, v8, v0}, Lcom/sun/jna/Pointer;->setShort(JS)V

    .line 1550
    aget-object v0, v5, p2

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/unix/X11$XRectangle;->setAutoSynch(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    new-instance p0, Lcom/sun/jna/NativeLong;

    const-wide/16 p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-interface {v1, v2, v4, p0}, Lcom/sun/jna/platform/unix/X11;->XSetForeground(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/NativeLong;)I

    .line 1555
    array-length v6, v5

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/unix/X11;->XFillRectangles(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;[Lcom/sun/jna/platform/unix/X11$XRectangle;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    invoke-interface {v1, v2, v4}, Lcom/sun/jna/platform/unix/X11;->XFreeGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;)I

    return-object v3

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {v1, v2, v4}, Lcom/sun/jna/platform/unix/X11;->XFreeGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;)I

    .line 1559
    throw p0
.end method

.method private declared-synchronized getAlphaVisualIDs()[J
    .locals 10

    monitor-enter p0

    .line 1616
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->didCheck:Z

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 1619
    :try_start_1
    iput-boolean v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->didCheck:Z

    .line 1620
    sget-object v1, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    const/4 v2, 0x0

    .line 1621
    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1626
    :cond_1
    :try_start_2
    invoke-interface {v1, v3}, Lcom/sun/jna/platform/unix/X11;->XDefaultScreen(Lcom/sun/jna/platform/unix/X11$Display;)I

    move-result v4

    .line 1627
    new-instance v5, Lcom/sun/jna/platform/unix/X11$XVisualInfo;

    invoke-direct {v5}, Lcom/sun/jna/platform/unix/X11$XVisualInfo;-><init>()V

    .line 1628
    iput v4, v5, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->screen:I

    const/16 v4, 0x20

    .line 1629
    iput v4, v5, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->depth:I

    const/4 v4, 0x4

    .line 1630
    iput v4, v5, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->c_class:I

    .line 1631
    new-instance v4, Lcom/sun/jna/NativeLong;

    const-wide/16 v6, 0xe

    invoke-direct {v4, v6, v7}, Lcom/sun/jna/NativeLong;-><init>(J)V

    .line 1634
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1635
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sun/jna/platform/unix/X11;->XGetVisualInfo(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XVisualInfo;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/unix/X11$XVisualInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v5

    check-cast v5, [Lcom/sun/jna/platform/unix/X11$XVisualInfo;

    check-cast v5, [Lcom/sun/jna/platform/unix/X11$XVisualInfo;

    const/4 v6, 0x0

    move v7, v6

    .line 1640
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 1641
    sget-object v8, Lcom/sun/jna/platform/unix/X11$Xrender;->INSTANCE:Lcom/sun/jna/platform/unix/X11$Xrender;

    aget-object v9, v5, v7

    iget-object v9, v9, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->visual:Lcom/sun/jna/platform/unix/X11$Visual;

    .line 1642
    invoke-interface {v8, v3, v9}, Lcom/sun/jna/platform/unix/X11$Xrender;->XRenderFindVisualFormat(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Visual;)Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;

    move-result-object v8

    .line 1644
    iget v9, v8, Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;->type:I

    if-ne v9, v0, :cond_2

    iget-object v8, v8, Lcom/sun/jna/platform/unix/X11$Xrender$XRenderPictFormat;->direct:Lcom/sun/jna/platform/unix/X11$Xrender$XRenderDirectFormat;

    iget-short v8, v8, Lcom/sun/jna/platform/unix/X11$Xrender$XRenderDirectFormat;->alphaMask:S

    if-eqz v8, :cond_2

    .line 1646
    aget-object v8, v5, v7

    iget-object v8, v8, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->visualid:Lcom/sun/jna/platform/unix/X11$VisualID;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1649
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J

    .line 1650
    :goto_1
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J

    array-length v5, v0

    if-ge v6, v5, :cond_4

    .line 1651
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    aput-wide v7, v0, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    .line 1658
    :try_start_3
    invoke-virtual {v2}, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XFree(Lcom/sun/jna/Pointer;)I

    .line 1660
    :cond_5
    invoke-interface {v1, v3}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1653
    monitor-exit p0

    return-object v0

    :cond_6
    if-eqz v2, :cond_7

    .line 1658
    :try_start_4
    invoke-virtual {v2}, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/unix/X11;->XFree(Lcom/sun/jna/Pointer;)I

    .line 1660
    :cond_7
    invoke-interface {v1, v3}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 1662
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->alphaVisualIDs:[J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    .line 1658
    :try_start_5
    invoke-virtual {v2}, Lcom/sun/jna/platform/unix/X11$XVisualInfo;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/unix/X11;->XFree(Lcom/sun/jna/Pointer;)I

    .line 1660
    :cond_8
    invoke-interface {v1, v3}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    .line 1661
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method private static getContentWindow(Ljava/awt/Window;Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/Point;)Lcom/sun/jna/platform/unix/X11$Window;
    .locals 7

    .line 1667
    instance-of v0, p0, Ljava/awt/Frame;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/Frame;

    invoke-virtual {v0}, Ljava/awt/Frame;->isUndecorated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p0, Ljava/awt/Dialog;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/awt/Dialog;

    .line 1668
    invoke-virtual {p0}, Ljava/awt/Dialog;->isUndecorated()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1669
    :cond_1
    sget-object v0, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    .line 1670
    new-instance v3, Lcom/sun/jna/platform/unix/X11$WindowByReference;

    invoke-direct {v3}, Lcom/sun/jna/platform/unix/X11$WindowByReference;-><init>()V

    .line 1671
    new-instance v4, Lcom/sun/jna/platform/unix/X11$WindowByReference;

    invoke-direct {v4}, Lcom/sun/jna/platform/unix/X11$WindowByReference;-><init>()V

    .line 1672
    new-instance v5, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 1673
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    move-object v1, p1

    move-object v2, p2

    .line 1674
    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/unix/X11;->XQueryTree(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/platform/unix/X11$WindowByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I

    .line 1675
    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 1676
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/sun/jna/Pointer;->getIntArray(JI)[I

    move-result-object p1

    .line 1677
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    aget p1, p1, p2

    .line 1679
    new-instance p2, Lcom/sun/jna/platform/unix/X11$Window;

    int-to-long v2, p1

    invoke-direct {p2, v2, v3}, Lcom/sun/jna/platform/unix/X11$Window;-><init>(J)V

    .line 1680
    new-instance p1, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;

    invoke-direct {p1}, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;-><init>()V

    .line 1681
    invoke-interface {v0, v1, p2, p1}, Lcom/sun/jna/platform/unix/X11;->XGetWindowAttributes(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$XWindowAttributes;)I

    .line 1682
    iget v1, p1, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;->x:I

    neg-int v1, v1

    iput v1, p3, Ljava/awt/Point;->x:I

    .line 1683
    iget p1, p1, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;->y:I

    neg-int p1, p1

    iput p1, p3, Ljava/awt/Point;->y:I

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    if-eqz p0, :cond_3

    .line 1688
    invoke-interface {v0, p0}, Lcom/sun/jna/platform/unix/X11;->XFree(Lcom/sun/jna/Pointer;)I

    :cond_3
    return-object p2

    :cond_4
    move-object v2, p2

    return-object v2
.end method

.method private static getDrawable(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;
    .locals 3

    .line 1695
    invoke-static {p0}, Lcom/sun/jna/Native;->getComponentID(Ljava/awt/Component;)J

    move-result-wide v0

    long-to-int p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1698
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Window;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/unix/X11$Window;-><init>(J)V

    return-object v0
.end method

.method private static getVisualID(Ljava/awt/GraphicsConfiguration;)J
    .locals 4

    .line 1575
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVisual"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    .line 1576
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1577
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1578
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 1582
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private setWindowShape(Ljava/awt/Window;Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;)V
    .locals 1

    .line 1845
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$4;-><init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;)V

    .line 1871
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->whenDisplayable(Ljava/awt/Component;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAlphaCompatibleGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;
    .locals 11

    .line 1590
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->isWindowAlphaSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1592
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    .line 1593
    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1594
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1595
    aget-object v3, v0, v2

    .line 1596
    invoke-virtual {v3}, Ljava/awt/GraphicsDevice;->getConfigurations()[Ljava/awt/GraphicsConfiguration;

    move-result-object v3

    move v4, v1

    .line 1597
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 1598
    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getVisualID(Ljava/awt/GraphicsConfiguration;)J

    move-result-wide v5

    .line 1599
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getAlphaVisualIDs()[J

    move-result-object v7

    move v8, v1

    .line 1600
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 1601
    aget-wide v9, v7, v8

    cmp-long v9, v5, v9

    if-nez v9, :cond_0

    .line 1602
    aget-object v0, v3, v4

    return-object v0

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1608
    :cond_3
    invoke-super {p0}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;->getAlphaCompatibleGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isWindowAlphaSupported()Z
    .locals 1

    .line 1568
    invoke-direct {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getAlphaVisualIDs()[J

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setMask(Ljava/awt/Component;Ljava/awt/image/Raster;)V
    .locals 1

    .line 1876
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getWindow(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object p1

    new-instance v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$5;

    invoke-direct {v0, p0, p2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$5;-><init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/image/Raster;)V

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setWindowShape(Ljava/awt/Window;Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$PixmapSource;)V

    return-void
.end method

.method public setWindowAlpha(Ljava/awt/Window;F)V
    .locals 1

    .line 1706
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->isWindowAlphaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$2;-><init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;F)V

    .line 1739
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->whenDisplayable(Ljava/awt/Component;Ljava/lang/Runnable;)V

    return-void

    .line 1707
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This X11 display does not provide a 32-bit visual"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWindowTransparent(Ljava/awt/Window;Z)V
    .locals 2

    .line 1803
    instance-of v0, p1, Ljavax/swing/RootPaneContainer;

    if-eqz v0, :cond_4

    .line 1806
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->isWindowAlphaSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1809
    invoke-virtual {p1}, Ljava/awt/Window;->getGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    .line 1810
    invoke-virtual {p0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->getAlphaCompatibleGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1813
    invoke-virtual {p1}, Ljava/awt/Window;->getBackground()Ljava/awt/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1814
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
    if-ne p2, v0, :cond_1

    return-void

    .line 1817
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;-><init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->whenDisplayable(Ljava/awt/Component;Ljava/lang/Runnable;)V

    return-void

    .line 1811
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window GraphicsConfiguration \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/awt/Window;->getGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' does not support transparency"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1807
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This X11 display does not provide a 32-bit visual"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1804
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Window must be a RootPaneContainer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
