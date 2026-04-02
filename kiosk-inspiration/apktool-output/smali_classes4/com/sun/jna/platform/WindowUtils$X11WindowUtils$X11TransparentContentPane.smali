.class Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;
.super Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X11TransparentContentPane"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private buffer:Lcom/sun/jna/Memory;

.field private final pixel:[I

.field private pixels:[I

.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Container;)V
    .locals 0

    .line 1745
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    .line 1746
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils$TransparentContentPane;-><init>(Lcom/sun/jna/platform/WindowUtils$NativeWindowUtils;Ljava/awt/Container;)V

    const/4 p1, 0x4

    .line 1751
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixel:[I

    return-void
.end method


# virtual methods
.method protected paintDirect(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1757
    invoke-static {v0}, Ljavax/swing/SwingUtilities;->getWindowAncestor(Ljava/awt/Component;)Ljava/awt/Window;

    move-result-object v2

    .line 1758
    sget-object v3, Lcom/sun/jna/platform/unix/X11;->INSTANCE:Lcom/sun/jna/platform/unix/X11;

    const/4 v4, 0x0

    .line 1759
    invoke-interface {v3, v4}, Lcom/sun/jna/platform/unix/X11;->XOpenDisplay(Ljava/lang/String;)Lcom/sun/jna/platform/unix/X11$Display;

    move-result-object v5

    .line 1760
    invoke-static {v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->access$900(Ljava/awt/Component;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object v6

    .line 1761
    new-instance v14, Ljava/awt/Point;

    invoke-direct {v14}, Ljava/awt/Point;-><init>()V

    .line 1762
    invoke-static {v2, v5, v6, v14}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->access$1000(Ljava/awt/Window;Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Ljava/awt/Point;)Lcom/sun/jna/platform/unix/X11$Window;

    move-result-object v2

    .line 1763
    new-instance v6, Lcom/sun/jna/NativeLong;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-interface {v3, v5, v2, v6, v4}, Lcom/sun/jna/platform/unix/X11;->XCreateGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/NativeLong;Lcom/sun/jna/platform/unix/X11$XGCValues;)Lcom/sun/jna/platform/unix/X11$GC;

    move-result-object v15

    .line 1765
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v4

    .line 1766
    iget v10, v1, Ljava/awt/Rectangle;->width:I

    .line 1767
    iget v13, v1, Ljava/awt/Rectangle;->height:I

    .line 1768
    iget-object v6, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->buffer:Lcom/sun/jna/Memory;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v6

    mul-int v8, v10, v13

    mul-int/lit8 v8, v8, 0x4

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1769
    :cond_0
    new-instance v6, Lcom/sun/jna/Memory;

    mul-int v7, v10, v13

    mul-int/lit8 v8, v7, 0x4

    int-to-long v8, v8

    invoke-direct {v6, v8, v9}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v6, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->buffer:Lcom/sun/jna/Memory;

    .line 1770
    new-array v6, v7, [I

    iput-object v6, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixels:[I

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v13, :cond_3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_2

    .line 1774
    iget-object v9, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixel:[I

    invoke-virtual {v4, v8, v7, v9}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    .line 1775
    iget-object v9, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixel:[I

    const/4 v11, 0x3

    aget v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x2

    .line 1776
    aget v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v16, 0x1

    const/16 p1, 0x0

    .line 1777
    aget v6, v9, v16

    and-int/lit16 v6, v6, 0xff

    .line 1778
    aget v9, v9, p1

    and-int/lit16 v9, v9, 0xff

    move-object/from16 v16, v4

    .line 1781
    iget-object v4, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixels:[I

    mul-int v17, v7, v10

    add-int v17, v17, v8

    shl-int/lit8 v11, v11, 0x18

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v9, v11

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v9

    or-int/2addr v6, v12

    aput v6, v4, v17

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    goto :goto_1

    :cond_2
    move-object/from16 v16, v4

    const/16 p1, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1784
    :cond_3
    new-instance v4, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;

    invoke-direct {v4}, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;-><init>()V

    .line 1785
    invoke-interface {v3, v5, v2, v4}, Lcom/sun/jna/platform/unix/X11;->XGetWindowAttributes(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Window;Lcom/sun/jna/platform/unix/X11$XWindowAttributes;)I

    .line 1786
    iget-object v4, v4, Lcom/sun/jna/platform/unix/X11$XWindowAttributes;->visual:Lcom/sun/jna/platform/unix/X11$Visual;

    iget-object v9, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->buffer:Lcom/sun/jna/Memory;

    move v11, v13

    mul-int/lit8 v13, v10, 0x4

    const/16 v6, 0x20

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v12, 0x20

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    .line 1787
    invoke-interface/range {v3 .. v13}, Lcom/sun/jna/platform/unix/X11;->XCreateImage(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Visual;IIILcom/sun/jna/Pointer;IIII)Lcom/sun/jna/platform/unix/X11$XImage;

    move-result-object v7

    .line 1789
    iget-object v5, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->buffer:Lcom/sun/jna/Memory;

    iget-object v6, v0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->pixels:[I

    const/16 v20, 0x0

    array-length v8, v6

    const-wide/16 v17, 0x0

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/sun/jna/Memory;->write(J[III)V

    .line 1790
    iget v5, v14, Ljava/awt/Point;->x:I

    iget v6, v1, Ljava/awt/Rectangle;->x:I

    add-int/2addr v5, v6

    iput v5, v14, Ljava/awt/Point;->x:I

    .line 1791
    iget v5, v14, Ljava/awt/Point;->y:I

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    add-int/2addr v5, v1

    iput v5, v14, Ljava/awt/Point;->y:I

    move v12, v10

    .line 1792
    iget v10, v14, Ljava/awt/Point;->x:I

    iget v1, v14, Ljava/awt/Point;->y:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    move v13, v11

    move-object v6, v15

    move v11, v1

    invoke-interface/range {v3 .. v13}, Lcom/sun/jna/platform/unix/X11;->XPutImage(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$Drawable;Lcom/sun/jna/platform/unix/X11$GC;Lcom/sun/jna/platform/unix/X11$XImage;IIIIII)I

    .line 1794
    invoke-virtual {v7}, Lcom/sun/jna/platform/unix/X11$XImage;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/sun/jna/platform/unix/X11;->XFree(Lcom/sun/jna/Pointer;)I

    .line 1795
    invoke-interface {v3, v4, v6}, Lcom/sun/jna/platform/unix/X11;->XFreeGC(Lcom/sun/jna/platform/unix/X11$Display;Lcom/sun/jna/platform/unix/X11$GC;)I

    .line 1796
    invoke-interface {v3, v4}, Lcom/sun/jna/platform/unix/X11;->XCloseDisplay(Lcom/sun/jna/platform/unix/X11$Display;)I

    return-void
.end method
