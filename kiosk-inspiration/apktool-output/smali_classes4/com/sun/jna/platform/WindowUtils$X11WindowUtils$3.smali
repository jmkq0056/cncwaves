.class Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;
.super Ljava/lang/Object;
.source "WindowUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setWindowTransparent(Ljava/awt/Window;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

.field final synthetic val$transparent:Z

.field final synthetic val$w:Ljava/awt/Window;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Window;Z)V
    .locals 0

    .line 1817
    iput-object p1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iput-object p2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$w:Ljava/awt/Window;

    iput-boolean p3, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1820
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$w:Ljava/awt/Window;

    check-cast v0, Ljavax/swing/RootPaneContainer;

    invoke-interface {v0}, Ljavax/swing/RootPaneContainer;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    .line 1821
    invoke-virtual {v0}, Ljavax/swing/JRootPane;->getLayeredPane()Ljavax/swing/JLayeredPane;

    move-result-object v1

    .line 1822
    invoke-virtual {v0}, Ljavax/swing/JRootPane;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    .line 1823
    instance-of v3, v2, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;

    if-eqz v3, :cond_0

    .line 1824
    check-cast v2, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;

    iget-boolean v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    invoke-virtual {v2, v0}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;->setTransparent(Z)V

    goto :goto_0

    .line 1826
    :cond_0
    iget-boolean v3, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    if-eqz v3, :cond_1

    .line 1827
    new-instance v3, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;

    iget-object v4, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    invoke-direct {v3, v4, v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$X11TransparentContentPane;-><init>(Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;Ljava/awt/Container;)V

    .line 1829
    invoke-virtual {v0, v3}, Ljavax/swing/JRootPane;->setContentPane(Ljava/awt/Container;)V

    .line 1830
    new-instance v0, Lcom/sun/jna/platform/WindowUtils$RepaintTrigger;

    invoke-direct {v0, v3}, Lcom/sun/jna/platform/WindowUtils$RepaintTrigger;-><init>(Ljavax/swing/JComponent;)V

    sget-object v2, Ljavax/swing/JLayeredPane;->DRAG_LAYER:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Ljavax/swing/JLayeredPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 1833
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$w:Ljava/awt/Window;

    iget-boolean v2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setLayersTransparent(Ljava/awt/Window;Z)V

    .line 1834
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$w:Ljava/awt/Window;

    iget-boolean v2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setForceHeavyweightPopups(Ljava/awt/Window;Z)V

    .line 1835
    iget-object v0, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->this$0:Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;

    iget-object v1, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$w:Ljava/awt/Window;

    iget-boolean v2, p0, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils$3;->val$transparent:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/platform/WindowUtils$X11WindowUtils;->setDoubleBuffered(Ljava/awt/Component;Z)V

    return-void
.end method
