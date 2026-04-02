.class public abstract Lcom/sun/jna/platform/dnd/DragHandler;
.super Ljava/lang/Object;
.source "DragHandler.java"

# interfaces
.implements Ljava/awt/dnd/DragSourceListener;
.implements Ljava/awt/dnd/DragSourceMotionListener;
.implements Ljava/awt/dnd/DragGestureListener;


# static fields
.field protected static final COPY:I = 0x1

.field static final COPY_MASK:I

.field public static final DEFAULT_GHOST_ALPHA:F = 0.5f

.field static final KEY_MASK:I = 0x23c0

.field protected static final LINK:I = 0x40000000

.field static final LINK_MASK:I

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final MAX_GHOST_SIZE:Ljava/awt/Dimension;

.field protected static final MOVE:I = 0x2

.field static final MOVE_MASK:I = 0x40

.field protected static final NONE:I = 0x0

.field static final OSX:Z

.field public static final UNKNOWN_MODIFIERS:I = -0x1

.field public static final UNKNOWN_TRANSFERABLE:Ljava/awt/datatransfer/Transferable;

.field private static modifiers:I

.field private static transferable:Ljava/awt/datatransfer/Transferable;


# instance fields
.field private dragSource:Ljava/awt/Component;

.field private fixCursor:Z

.field private ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

.field private ghostAlpha:F

.field private imageOffset:Ljava/awt/Point;

.field private lastAction:Ljava/lang/String;

.field private maxGhostSize:Ljava/awt/Dimension;

.field private moved:Z

.field private supportedActions:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 116
    const-class v0, Lcom/sun/jna/platform/dnd/DragHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->LOG:Ljava/util/logging/Logger;

    .line 119
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0xfa

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    sput-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->MAX_GHOST_SIZE:Ljava/awt/Dimension;

    const/4 v0, 0x0

    .line 132
    sput-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->UNKNOWN_TRANSFERABLE:Ljava/awt/datatransfer/Transferable;

    .line 146
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    move-result v1

    sput-boolean v1, Lcom/sun/jna/platform/dnd/DragHandler;->OSX:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x200

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    .line 148
    :goto_0
    sput v2, Lcom/sun/jna/platform/dnd/DragHandler;->COPY_MASK:I

    if-eqz v1, :cond_1

    const/16 v1, 0x300

    goto :goto_1

    :cond_1
    const/16 v1, 0xc0

    .line 151
    :goto_1
    sput v1, Lcom/sun/jna/platform/dnd/DragHandler;->LINK_MASK:I

    const/4 v1, -0x1

    .line 160
    sput v1, Lcom/sun/jna/platform/dnd/DragHandler;->modifiers:I

    .line 161
    sput-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->transferable:Ljava/awt/datatransfer/Transferable;

    return-void
.end method

.method protected constructor <init>(Ljava/awt/Component;I)V
    .locals 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->fixCursor:Z

    .line 197
    sget-object v1, Lcom/sun/jna/platform/dnd/DragHandler;->MAX_GHOST_SIZE:Ljava/awt/Dimension;

    iput-object v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->maxGhostSize:Ljava/awt/Dimension;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 198
    iput v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghostAlpha:F

    .line 206
    iput-object p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->dragSource:Ljava/awt/Component;

    .line 207
    iput p2, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    .line 209
    :try_start_0
    const-string p2, "DragHandler.alpha"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_0

    .line 212
    :try_start_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghostAlpha:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :catch_0
    :cond_0
    :try_start_2
    const-string p2, "DragHandler.maxDragImageSize"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 218
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 219
    array-length v1, p2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 221
    :try_start_3
    new-instance v1, Ljava/awt/Dimension;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p2, p2, v0

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {v1, v2, p2}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->maxGhostSize:Ljava/awt/Dimension;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    :catch_1
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->disableSwingDragSupport(Ljava/awt/Component;)V

    .line 231
    invoke-static {}, Ljava/awt/dnd/DragSource;->getDefaultDragSource()Ljava/awt/dnd/DragSource;

    move-result-object p2

    .line 232
    iget v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    invoke-virtual {p2, p1, v0, p0}, Ljava/awt/dnd/DragSource;->createDefaultDragGestureRecognizer(Ljava/awt/Component;ILjava/awt/dnd/DragGestureListener;)Ljava/awt/dnd/DragGestureRecognizer;

    return-void
.end method

.method static actionString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 488
    const-string p0, "NONE"

    return-object p0

    .line 484
    :pswitch_0
    const-string p0, "MOVE|COPY|LINK"

    return-object p0

    .line 483
    :pswitch_1
    const-string p0, "MOVE|LINK"

    return-object p0

    .line 486
    :pswitch_2
    const-string p0, "COPY|LINK"

    return-object p0

    .line 487
    :pswitch_3
    const-string p0, "LINK"

    return-object p0

    .line 482
    :cond_0
    const-string p0, "MOVE|COPY"

    return-object p0

    .line 481
    :cond_1
    const-string p0, "MOVE"

    return-object p0

    .line 485
    :cond_2
    const-string p0, "COPY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V
    .locals 3

    .line 493
    sget-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p2}, Ljava/awt/dnd/DragSourceEvent;->getDragSourceContext()Ljava/awt/dnd/DragSourceContext;

    move-result-object p1

    .line 498
    instance-of v2, p2, Ljava/awt/dnd/DragSourceDragEvent;

    if-eqz v2, :cond_0

    .line 499
    check-cast p2, Ljava/awt/dnd/DragSourceDragEvent;

    .line 500
    const-string v2, ": src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceContext;->getSourceActions()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string p1, " usr="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p2}, Ljava/awt/dnd/DragSourceDragEvent;->getUserAction()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string p1, " tgt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p2}, Ljava/awt/dnd/DragSourceDragEvent;->getTargetActions()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string p1, " act="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p2}, Ljava/awt/dnd/DragSourceDragEvent;->getDropAction()I

    move-result p1

    invoke-static {p1}, Lcom/sun/jna/platform/dnd/DragHandler;->actionString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string p1, " mods="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p2}, Ljava/awt/dnd/DragSourceDragEvent;->getGestureModifiersEx()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 512
    :cond_0
    const-string p1, ": e="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 515
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    iget-object p2, p0, Lcom/sun/jna/platform/dnd/DragHandler;->lastAction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 517
    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 518
    iput-object p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->lastAction:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private disableSwingDragSupport(Ljava/awt/Component;)V
    .locals 2

    .line 236
    instance-of v0, p1, Ljavax/swing/JTree;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Ljavax/swing/JTree;

    invoke-virtual {p1, v1}, Ljavax/swing/JTree;->setDragEnabled(Z)V

    return-void

    .line 239
    :cond_0
    instance-of v0, p1, Ljavax/swing/JList;

    if-eqz v0, :cond_1

    .line 240
    check-cast p1, Ljavax/swing/JList;

    invoke-virtual {p1, v1}, Ljavax/swing/JList;->setDragEnabled(Z)V

    return-void

    .line 242
    :cond_1
    instance-of v0, p1, Ljavax/swing/JTable;

    if-eqz v0, :cond_2

    .line 243
    check-cast p1, Ljavax/swing/JTable;

    invoke-virtual {p1, v1}, Ljavax/swing/JTable;->setDragEnabled(Z)V

    return-void

    .line 245
    :cond_2
    instance-of v0, p1, Ljavax/swing/text/JTextComponent;

    if-eqz v0, :cond_3

    .line 246
    check-cast p1, Ljavax/swing/text/JTextComponent;

    invoke-virtual {p1, v1}, Ljavax/swing/text/JTextComponent;->setDragEnabled(Z)V

    return-void

    .line 248
    :cond_3
    instance-of v0, p1, Ljavax/swing/JColorChooser;

    if-eqz v0, :cond_4

    .line 249
    check-cast p1, Ljavax/swing/JColorChooser;

    invoke-virtual {p1, v1}, Ljavax/swing/JColorChooser;->setDragEnabled(Z)V

    return-void

    .line 251
    :cond_4
    instance-of v0, p1, Ljavax/swing/JFileChooser;

    if-eqz v0, :cond_5

    .line 252
    check-cast p1, Ljavax/swing/JFileChooser;

    invoke-virtual {p1, v1}, Ljavax/swing/JFileChooser;->setDragEnabled(Z)V

    :cond_5
    return-void
.end method

.method private getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->x:I

    iget-object v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->y:I

    invoke-virtual {p1, v0, v1}, Ljava/awt/Point;->translate(II)V

    return-object p1
.end method

.method static getModifiers()I
    .locals 1

    .line 170
    sget v0, Lcom/sun/jna/platform/dnd/DragHandler;->modifiers:I

    return v0
.end method

.method public static getTransferable(Ljava/awt/dnd/DropTargetEvent;)Ljava/awt/datatransfer/Transferable;
    .locals 1

    .line 180
    instance-of v0, p0, Ljava/awt/dnd/DropTargetDragEvent;

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    check-cast p0, Ljava/awt/dnd/DropTargetDragEvent;

    invoke-virtual {p0}, Ljava/awt/dnd/DropTargetDragEvent;->getTransferable()Ljava/awt/datatransfer/Transferable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 186
    :cond_0
    instance-of v0, p0, Ljava/awt/dnd/DropTargetDropEvent;

    if-eqz v0, :cond_1

    .line 187
    check-cast p0, Ljava/awt/dnd/DropTargetDropEvent;

    invoke-virtual {p0}, Ljava/awt/dnd/DropTargetDropEvent;->getTransferable()Ljava/awt/datatransfer/Transferable;

    move-result-object p0

    return-object p0

    .line 189
    :catch_0
    :cond_1
    sget-object p0, Lcom/sun/jna/platform/dnd/DragHandler;->transferable:Ljava/awt/datatransfer/Transferable;

    return-object p0
.end method

.method private reduce(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method protected adjustDropAction(Ljava/awt/dnd/DragSourceEvent;)I
    .locals 2

    .line 455
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->getDropAction(Ljava/awt/dnd/DragSourceEvent;)I

    move-result v0

    .line 456
    instance-of v1, p1, Ljava/awt/dnd/DragSourceDragEvent;

    if-eqz v1, :cond_0

    .line 457
    check-cast p1, Ljava/awt/dnd/DragSourceDragEvent;

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getGestureModifiersEx()I

    move-result v1

    and-int/lit16 v1, v1, 0x23c0

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getTargetActions()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->getAcceptableDropAction(I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected canDrag(Ljava/awt/dnd/DragGestureEvent;)Z
    .locals 3

    .line 263
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getTriggerEvent()Ljava/awt/event/InputEvent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/event/InputEvent;->getModifiersEx()I

    move-result p1

    and-int/lit16 p1, p1, 0x23c0

    const/16 v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 265
    iget p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 266
    :cond_1
    sget v0, Lcom/sun/jna/platform/dnd/DragHandler;->COPY_MASK:I

    if-ne p1, v0, :cond_3

    .line 267
    iget p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 268
    :cond_3
    sget v0, Lcom/sun/jna/platform/dnd/DragHandler;->LINK_MASK:I

    if-ne p1, v0, :cond_5

    .line 269
    iget p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected createDragImage(Ljava/awt/GraphicsConfiguration;Ljavax/swing/Icon;)Ljava/awt/Image;
    .locals 4

    .line 389
    invoke-interface {p2}, Ljavax/swing/Icon;->getIconWidth()I

    move-result v0

    .line 390
    invoke-interface {p2}, Ljavax/swing/Icon;->getIconHeight()I

    move-result v1

    const/4 v2, 0x3

    .line 391
    invoke-virtual {p1, v0, v1, v2}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(III)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v2

    check-cast v2, Ljava/awt/Graphics2D;

    .line 393
    sget-object v3, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v2, v3, v3, v0, v1}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    const/4 v0, 0x2

    .line 396
    iget v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghostAlpha:F

    invoke-static {v0, v1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 397
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->dragSource:Ljava/awt/Component;

    invoke-interface {p2, v0, v2, v3, v3}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 398
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    return-object p1
.end method

.method public dragDropEnd(Ljava/awt/dnd/DragSourceDropEvent;)V
    .locals 1

    .line 525
    const-string v0, "end"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    const/4 v0, -0x1

    .line 526
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->setModifiers(I)V

    .line 527
    sget-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->UNKNOWN_TRANSFERABLE:Ljava/awt/datatransfer/Transferable;

    sput-object v0, Lcom/sun/jna/platform/dnd/DragHandler;->transferable:Ljava/awt/datatransfer/Transferable;

    .line 528
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDropEvent;->getDropSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    invoke-virtual {v0}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->dispose()V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    invoke-virtual {v0}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->returnToOrigin()V

    :goto_0
    const/4 v0, 0x0

    .line 535
    iput-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    .line 537
    :cond_1
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDropEvent;->getDragSourceContext()Ljava/awt/dnd/DragSourceContext;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceContext;->getDragSource()Ljava/awt/dnd/DragSource;

    move-result-object p1

    .line 538
    invoke-virtual {p1, p0}, Ljava/awt/dnd/DragSource;->removeDragSourceMotionListener(Ljava/awt/dnd/DragSourceMotionListener;)V

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->moved:Z

    return-void
.end method

.method public dragEnter(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 2

    .line 549
    const-string v0, "enter"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    .line 550
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/dnd/DragHandler;->getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->move(Ljava/awt/Point;)V

    .line 553
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->updateCursor(Ljava/awt/dnd/DragSourceEvent;)V

    return-void
.end method

.method public dragExit(Ljava/awt/dnd/DragSourceEvent;)V
    .locals 1

    .line 582
    const-string v0, "exit"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    return-void
.end method

.method public dragGestureRecognized(Ljava/awt/dnd/DragGestureEvent;)V
    .locals 9

    .line 314
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getDragAction()I

    move-result v0

    iget v1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->canDrag(Ljava/awt/dnd/DragGestureEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getTriggerEvent()Ljava/awt/event/InputEvent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/event/InputEvent;->getModifiersEx()I

    move-result v0

    and-int/lit16 v0, v0, 0x23c0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->setModifiers(I)V

    .line 317
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->getTransferable(Ljava/awt/dnd/DragGestureEvent;)Ljava/awt/datatransfer/Transferable;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 321
    :cond_0
    :try_start_0
    new-instance v0, Ljava/awt/Point;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7}, Ljava/awt/Point;-><init>(II)V

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->getDragIcon(Ljava/awt/dnd/DragGestureEvent;Ljava/awt/Point;)Ljavax/swing/Icon;

    move-result-object v1

    .line 323
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getDragOrigin()Ljava/awt/Point;

    move-result-object v2

    .line 325
    new-instance v3, Ljava/awt/Point;

    iget v4, v0, Ljava/awt/Point;->x:I

    iget v6, v2, Ljava/awt/Point;->x:I

    sub-int/2addr v4, v6

    iget v0, v0, Ljava/awt/Point;->y:I

    iget v6, v2, Ljava/awt/Point;->y:I

    sub-int/2addr v0, v6

    invoke-direct {v3, v4, v0}, Ljava/awt/Point;-><init>(II)V

    iput-object v3, p0, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;

    .line 327
    invoke-virtual {p0, v1, v3}, Lcom/sun/jna/platform/dnd/DragHandler;->scaleDragIcon(Ljavax/swing/Icon;Ljava/awt/Point;)Ljavax/swing/Icon;

    move-result-object v0

    move-object v1, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Ljava/awt/dnd/DragSource;->isDragImageSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getComponent()Ljava/awt/Component;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Component;->getGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v1

    .line 331
    invoke-virtual {p0, v1, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->createDragImage(Ljava/awt/GraphicsConfiguration;Ljavax/swing/Icon;)Ljava/awt/Image;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;
    :try_end_0
    .catch Ljava/awt/dnd/InvalidDnDOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p0

    move-object v1, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Ljava/awt/dnd/DragGestureEvent;->startDrag(Ljava/awt/Cursor;Ljava/awt/Image;Ljava/awt/Point;Ljava/awt/datatransfer/Transferable;Ljava/awt/dnd/DragSourceListener;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object v6, p0

    if-eqz v0, :cond_2

    .line 336
    iget-object v3, v6, Lcom/sun/jna/platform/dnd/DragHandler;->dragSource:Ljava/awt/Component;

    invoke-virtual {v3}, Ljava/awt/Component;->getLocationOnScreen()Ljava/awt/Point;

    move-result-object v3

    .line 337
    iget v4, v1, Ljava/awt/Point;->x:I

    iget v1, v1, Ljava/awt/Point;->y:I

    invoke-virtual {v3, v4, v1}, Ljava/awt/Point;->translate(II)V

    .line 338
    new-instance v1, Ljava/awt/Point;

    iget-object v4, v6, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;

    iget v4, v4, Ljava/awt/Point;->x:I

    neg-int v4, v4

    iget-object v8, v6, Lcom/sun/jna/platform/dnd/DragHandler;->imageOffset:Ljava/awt/Point;

    iget v8, v8, Ljava/awt/Point;->y:I

    neg-int v8, v8

    invoke-direct {v1, v4, v8}, Ljava/awt/Point;-><init>(II)V

    .line 339
    new-instance v4, Lcom/sun/jna/platform/dnd/GhostedDragImage;

    iget-object v8, v6, Lcom/sun/jna/platform/dnd/DragHandler;->dragSource:Ljava/awt/Component;

    .line 340
    invoke-direct {p0, v3}, Lcom/sun/jna/platform/dnd/DragHandler;->getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;

    move-result-object v3

    invoke-direct {v4, v8, v0, v3, v1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;-><init>(Ljava/awt/Component;Ljavax/swing/Icon;Ljava/awt/Point;Ljava/awt/Point;)V

    iput-object v4, v6, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    .line 341
    iget v0, v6, Lcom/sun/jna/platform/dnd/DragHandler;->ghostAlpha:F

    invoke-virtual {v4, v0}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->setAlpha(F)V

    .line 343
    :cond_2
    invoke-virtual {p1, v2, v5, p0}, Ljava/awt/dnd/DragGestureEvent;->startDrag(Ljava/awt/Cursor;Ljava/awt/datatransfer/Transferable;Ljava/awt/dnd/DragSourceListener;)V

    .line 345
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->dragStarted(Ljava/awt/dnd/DragGestureEvent;)V

    .line 346
    iput-boolean v7, v6, Lcom/sun/jna/platform/dnd/DragHandler;->moved:Z

    .line 347
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getDragSource()Ljava/awt/dnd/DragSource;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/awt/dnd/DragSource;->addDragSourceMotionListener(Ljava/awt/dnd/DragSourceMotionListener;)V

    .line 348
    sput-object v5, Lcom/sun/jna/platform/dnd/DragHandler;->transferable:Ljava/awt/datatransfer/Transferable;
    :try_end_1
    .catch Ljava/awt/dnd/InvalidDnDOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v6, p0

    .line 351
    :catch_1
    iget-object p1, v6, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz p1, :cond_4

    .line 352
    invoke-virtual {p1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->dispose()V

    const/4 p1, 0x0

    .line 353
    iput-object p1, v6, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    goto :goto_2

    :cond_3
    :goto_1
    move-object v6, p0

    :cond_4
    :goto_2
    return-void
.end method

.method public dragMouseMoved(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 2

    .line 562
    const-string v0, "move"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    .line 563
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/dnd/DragHandler;->getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->move(Ljava/awt/Point;)V

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->moved:Z

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->updateCursor(Ljava/awt/dnd/DragSourceEvent;)V

    :cond_1
    const/4 p1, 0x1

    .line 568
    iput-boolean p1, p0, Lcom/sun/jna/platform/dnd/DragHandler;->moved:Z

    return-void
.end method

.method public dragOver(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 2

    .line 573
    const-string v0, "over"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    .line 574
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/dnd/DragHandler;->getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->move(Ljava/awt/Point;)V

    .line 577
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->updateCursor(Ljava/awt/dnd/DragSourceEvent;)V

    return-void
.end method

.method protected dragStarted(Ljava/awt/dnd/DragGestureEvent;)V
    .locals 0

    return-void
.end method

.method public dropActionChanged(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 2

    .line 587
    const-string v0, "change"

    invoke-direct {p0, v0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->describe(Ljava/lang/String;Ljava/awt/dnd/DragSourceEvent;)V

    .line 588
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getGestureModifiersEx()I

    move-result v0

    and-int/lit16 v0, v0, 0x23c0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->setModifiers(I)V

    .line 589
    iget-object v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->ghost:Lcom/sun/jna/platform/dnd/GhostedDragImage;

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getLocation()Ljava/awt/Point;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/dnd/DragHandler;->getImageLocation(Ljava/awt/Point;)Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/dnd/GhostedDragImage;->move(Ljava/awt/Point;)V

    .line 592
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->updateCursor(Ljava/awt/dnd/DragSourceEvent;)V

    return-void
.end method

.method protected getAcceptableDropAction(I)I
    .locals 1

    .line 431
    iget v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->supportedActions:I

    and-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->reduce(I)I

    move-result p1

    return p1
.end method

.method protected getCursorForAction(I)Ljava/awt/Cursor;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    .line 422
    sget-object p1, Ljava/awt/dnd/DragSource;->DefaultMoveNoDrop:Ljava/awt/Cursor;

    return-object p1

    .line 420
    :cond_0
    sget-object p1, Ljava/awt/dnd/DragSource;->DefaultLinkDrop:Ljava/awt/Cursor;

    return-object p1

    .line 416
    :cond_1
    sget-object p1, Ljava/awt/dnd/DragSource;->DefaultMoveDrop:Ljava/awt/Cursor;

    return-object p1

    .line 418
    :cond_2
    sget-object p1, Ljava/awt/dnd/DragSource;->DefaultCopyDrop:Ljava/awt/Cursor;

    return-object p1
.end method

.method protected getDragIcon(Ljava/awt/dnd/DragGestureEvent;Ljava/awt/Point;)Ljavax/swing/Icon;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDropAction(Ljava/awt/dnd/DragSourceEvent;)I
    .locals 1

    .line 439
    instance-of v0, p1, Ljava/awt/dnd/DragSourceDragEvent;

    if-eqz v0, :cond_0

    .line 440
    check-cast p1, Ljava/awt/dnd/DragSourceDragEvent;

    .line 441
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDragEvent;->getDropAction()I

    move-result p1

    return p1

    .line 443
    :cond_0
    instance-of v0, p1, Ljava/awt/dnd/DragSourceDropEvent;

    if-eqz v0, :cond_1

    .line 444
    check-cast p1, Ljava/awt/dnd/DragSourceDropEvent;

    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDropEvent;->getDropAction()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract getTransferable(Ljava/awt/dnd/DragGestureEvent;)Ljava/awt/datatransfer/Transferable;
.end method

.method protected scaleDragIcon(Ljavax/swing/Icon;Ljava/awt/Point;)Ljavax/swing/Icon;
    .locals 0

    return-object p1
.end method

.method protected setModifiers(I)V
    .locals 0

    .line 277
    sput p1, Lcom/sun/jna/platform/dnd/DragHandler;->modifiers:I

    return-void
.end method

.method protected updateCursor(Ljava/awt/dnd/DragSourceEvent;)V
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/sun/jna/platform/dnd/DragHandler;->fixCursor:Z

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/dnd/DragHandler;->adjustDropAction(Ljava/awt/dnd/DragSourceEvent;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/dnd/DragHandler;->getCursorForAction(I)Ljava/awt/Cursor;

    move-result-object v0

    .line 476
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceEvent;->getDragSourceContext()Ljava/awt/dnd/DragSourceContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/awt/dnd/DragSourceContext;->setCursor(Ljava/awt/Cursor;)V

    return-void
.end method
