.class final Lcom/stripe/bbpos/bbdevice/ota/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ota/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field private c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

.field private d:Landroid/content/Context;

.field private e:Lcom/stripe/bbpos/bbdevice/ota/b$a;

.field f:Ljava/lang/String;

.field private g:Lcom/stripe/bbpos/bbdevice/ota/y;

.field private h:Lcom/stripe/bbpos/bbdevice/ota/m;

.field private i:Lcom/stripe/bbpos/bbdevice/ota/j;

.field j:Landroid/os/HandlerThread;

.field k:Landroid/os/Handler;

.field private l:Landroid/os/HandlerThread;

.field private m:Landroid/os/Handler;

.field private n:Lcom/stripe/bbpos/bbdevice/ota/l;


# direct methods
.method public static synthetic $r8$lambda$Bwxz4g7UjDP53vE4tZJr3mlomYs(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->m()V

    return-void
.end method

.method public static synthetic $r8$lambda$DtE-CdFmvnNGA3qURpNqeimPECk(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->j()V

    return-void
.end method

.method public static synthetic $r8$lambda$MpHPIBaEoHcEuSgGgWpPZ9Dfjjs(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->i()V

    return-void
.end method

.method public static synthetic $r8$lambda$PgRmJC7lWSg2vd-fjRRXgv-uqvE(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->l()V

    return-void
.end method

.method public static synthetic $r8$lambda$d8_Jg0S5pA7l5UIqUipCGQNfK8I(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->h()V

    return-void
.end method

.method public static synthetic $r8$lambda$hNs-7JdhNLgZis8f2ryp3TWfh_M(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->k()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->a:Ljava/lang/Object;

    .line 12
    const-string v0, "https://api.emms.bbpos.com/tms2/deviceasset/"

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->f:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->d:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    .line 37
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OTA-Cube-Flow-General-Thread-1"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->j:Landroid/os/HandlerThread;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 39
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->j:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    .line 40
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 41
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/j;

    invoke-direct {p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/j;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->i:Lcom/stripe/bbpos/bbdevice/ota/j;

    .line 42
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/m;

    invoke-direct {p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/m;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->h:Lcom/stripe/bbpos/bbdevice/ota/m;

    .line 43
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OTA-WatchDog-Thread-1"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->l:Landroid/os/HandlerThread;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 45
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->l:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->m:Landroid/os/Handler;

    .line 46
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/l;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->m:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/stripe/bbpos/bbdevice/ota/l;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->n:Lcom/stripe/bbpos/bbdevice/ota/l;

    .line 47
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/bbpos/bbdevice/ota/y$b;",
            ")V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->n:Lcom/stripe/bbpos/bbdevice/ota/l;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/h0;->a()V

    .line 60
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-direct {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;-><init>(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 p1, 0x0

    .line 61
    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/util/Hashtable;)V

    .line 62
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;)V

    .line 63
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->t(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, p2, :cond_0

    .line 65
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 66
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction5()V

    return-void

    .line 68
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->d:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 69
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction4()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic h()V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->p()V

    return-void
.end method

.method private synthetic i()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method

.method private synthetic k()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->resetDevice()V

    return-void
.end method

.method private synthetic l()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->p()V

    return-void
.end method

.method private synthetic m()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->o()V

    return-void
.end method


# virtual methods
.method a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_0

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->IDLE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    return-object v0

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    return-object v0
.end method

.method a(D)V
    .locals 2

    double-to-int p1, p1

    .line 105
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result p2

    sub-int p2, p1, p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 106
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    int-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 107
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(I)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 9

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateOTAProgress] progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTA] [updateOTAProgress] progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->n:Lcom/stripe/bbpos/bbdevice/ota/l;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/h0;->a()V

    const/16 v0, 0x14

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    if-ne p1, v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->y()I

    move-result p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x4080000000000000L    # 512.0

    div-double/2addr v3, v5

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object p1

    array-length p1, p1

    int-to-double v7, p1

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide v5, 0x4051800000000000L    # 70.0

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    .line 82
    invoke-virtual {p0, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_0
    const/16 v0, 0x5b

    const/16 v3, 0x4f

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_1

    .line 84
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v3, v3

    .line 85
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_1
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_2

    .line 87
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v3, v3

    .line 88
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    const-wide v0, 0x3fc5532617c1bda5L    # 0.1666

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_2
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_3

    .line 90
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v3, v3

    .line 91
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    const-wide v0, 0x3fd554c985f06f69L    # 0.3333

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_3
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_4

    .line 93
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v3, v3

    .line 94
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_4
    const/16 v0, 0x60

    if-ne p1, v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_5

    .line 96
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v3, v3

    .line 97
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    const-wide v0, 0x3fe554c985f06f69L    # 0.6666

    mul-double/2addr v3, v0

    add-double/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_5
    const/16 v0, 0x63

    const/4 v4, 0x1

    if-ne p1, v0, :cond_6

    .line 98
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v5, :cond_6

    .line 99
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->I()I

    move-result p1

    div-int/2addr v3, p1

    int-to-double v5, v3

    .line 100
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->A()I

    move-result p1

    sub-int/2addr p1, v4

    int-to-double v3, p1

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    const-wide v0, 0x3feaaa64c2f837b5L    # 0.8333

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(D)V

    return-void

    :cond_6
    if-ltz p1, :cond_7

    .line 102
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result v0

    sub-int v0, p1, v0

    if-lt v0, v4, :cond_7

    .line 103
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 104
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(I)V

    :cond_7
    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 113
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 109
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
            "Ljava/util/List<",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 110
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 111
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->e:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    const-string v1, ""

    const-string v2, "[BBDeviceOTAController] ["

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-eq v0, v3, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] throw BBDeviceNotConnectedException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v1, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 56
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;-><init>()V

    throw p1

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] throw BBDeviceControllerNotSetException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v1, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 58
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;-><init>()V

    throw p1
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    const-string v1, "[BBDeviceOTAController] ["

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-eq v0, v3, :cond_2

    if-eqz p2, :cond_0

    .line 31
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->d:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 37
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 41
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw NoInternetConnectionException"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v2, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 42
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;-><init>()V

    throw p1

    .line 43
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw BBDeviceNotConnectedException"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v2, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 44
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;-><init>()V

    throw p1

    .line 45
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw OTAServerURLNotSetException"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v2, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 46
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;-><init>()V

    throw p1

    .line 47
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw BBDeviceControllerNotSetException"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v2, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 48
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;-><init>()V

    throw p1
.end method

.method a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSupportOTAException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setBBDeviceController] controller : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid controller"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->i:Lcom/stripe/bbpos/bbdevice/ota/j;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/net/Proxy;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->h:Lcom/stripe/bbpos/bbdevice/ota/m;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/net/Proxy;)V

    return-void
.end method

.method declared-synchronized a(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "[checkPollingDeviceInfo] arg0 : "

    monitor-enter p0

    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 71
    const-string p1, "[BBDeviceOTACubeFlowController] [checkPollingDeviceInfo]"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b()Lcom/stripe/bbpos/bbdevice/ota/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->i:Lcom/stripe/bbpos/bbdevice/ota/j;

    return-object v0
.end method

.method b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[returnFailedOTAResultWithNotify] otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->P()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->G()I

    move-result v0

    if-lez v0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->P()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(I)V

    .line 19
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 20
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "otaResult : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", percentage : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const-string v1, "FAILED"

    invoke-virtual {p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized b(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Health check failed after OTA.  ("

    const-string v1, "[checkPollingDeviceInfoWSP7X] arg0 : "

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 3
    const-string v1, "[BBDeviceOTACubeFlowController] [checkPollingDeviceInfoWSP7X]"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    const-string v1, "spWCConnectionHealthCheck"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "05"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    return-object v0
.end method

.method c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[returnOTAResult] otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[BBDeviceOTACubeFlowController] [returnOTAResult] otaResult : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->n:Lcom/stripe/bbpos/bbdevice/ota/l;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/h0;->a()V

    .line 195
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object p2

    .line 199
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-ne p1, v0, :cond_7

    .line 200
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 201
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 203
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->k(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-wide/16 v0, 0x3e8

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda3;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, p2, :cond_11

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 208
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda4;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_4

    .line 211
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 212
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->j(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, p2, :cond_11

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda5;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_5

    .line 217
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 218
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->l(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 221
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_11

    .line 223
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 224
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SETUP_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_FIRMWARE_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_CONFIG_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-ne p1, v0, :cond_11

    .line 235
    :cond_8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_9

    .line 237
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->k(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_a

    .line 239
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->j(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 240
    :cond_a
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_b

    .line 241
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->l(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_c

    .line 243
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 244
    :cond_c
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_d

    .line 245
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_d
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_e

    .line 247
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 248
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {p2, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void

    .line 250
    :cond_e
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_f

    .line 251
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_f
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_10

    .line 253
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->m(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_11

    .line 255
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTACubeFlowController] [sendOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction3(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[deviceInfoReceived] data : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTACubeFlowController] [deviceInfoReceived] data : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->d:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v2, :cond_0

    .line 11
    const-string p1, "[BBDeviceOTACubeFlowController] [deviceInfoReceived] deviceInfoReceived is received in incorrect state"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_1

    .line 16
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(Ljava/util/Hashtable;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction4()V

    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    const-string v0, "supportCubeSecurityMode"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    const-string p1, "[BBDeviceOTACubeFlowController] [deviceInfoReceived] Duplicated device info is received"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->e:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 79
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/util/Hashtable;)V

    .line 82
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v1, :cond_5

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/o;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CHB8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 91
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "OTA process aborted"

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[deviceInfoReceived] userSessionData : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->o()Lcom/stripe/bbpos/bbdevice/ota/p;

    move-result-object p1

    const-string v1, "-"

    if-eqz p1, :cond_7

    .line 99
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->o()Lcom/stripe/bbpos/bbdevice/ota/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/p;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->o()Lcom/stripe/bbpos/bbdevice/ota/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/p;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "00000000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o()Lcom/stripe/bbpos/bbdevice/ota/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o()Lcom/stripe/bbpos/bbdevice/ota/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 103
    :cond_7
    const-string p1, ""

    :goto_1
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 110
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device Tampered. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 115
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 116
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v1, :cond_b

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 117
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    if-eq p1, v0, :cond_b

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 118
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v1, :cond_e

    .line 119
    :cond_b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/o;->a()I

    move-result p1

    const-string v1, "Please connect to power source and charge up the device to 50% or above before doing OTA."

    const/16 v2, 0x32

    if-ge p1, v2, :cond_c

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/o;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 120
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, v3, :cond_e

    .line 125
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Landroid/content/Context;)I

    move-result p1

    .line 127
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v1, 0x14

    if-ge p1, v1, :cond_e

    .line 131
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "Please charge up the device to 20% or above before doing OTA while the device is charging."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_d
    if-ge p1, v2, :cond_e

    .line 136
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_f

    goto :goto_2

    .line 147
    :cond_f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->f:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 149
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->h:Lcom/stripe/bbpos/bbdevice/ota/m;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/util/Date;)V

    return-void

    .line 150
    :cond_10
    :goto_2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->n()V

    return-void

    .line 151
    :cond_11
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "The command is not compatible with the device."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_12
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 153
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_13

    .line 155
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 156
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Ljava/util/Hashtable;)V

    return-void

    .line 161
    :cond_13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_14

    .line 163
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 164
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f(Ljava/util/Hashtable;)V

    return-void

    .line 169
    :cond_14
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_15

    .line 170
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 171
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h(Ljava/util/Hashtable;)V

    return-void

    .line 172
    :cond_15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_16

    .line 173
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 174
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e(Ljava/util/Hashtable;)V

    return-void

    .line 175
    :cond_16
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_17

    .line 176
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 177
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d(Ljava/util/Hashtable;)V

    return-void

    .line 178
    :cond_17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_18

    .line 179
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 180
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Ljava/util/Hashtable;)V

    return-void

    .line 181
    :cond_18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_19

    .line 182
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 183
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Ljava/util/Hashtable;)V

    return-void

    .line 184
    :cond_19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_1a

    .line 185
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 186
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c(Ljava/util/Hashtable;)V

    return-void

    .line 187
    :cond_1a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_1b

    .line 188
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "Command not supported"

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_1b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    return-void
.end method

.method d()Lcom/stripe/bbpos/bbdevice/ota/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->e:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->m(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendVirtualOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTACubeFlowController] [sendVirtualOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction3(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4
    const-string v0, "[getTargetVersionListWithData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method e()Lcom/stripe/bbpos/bbdevice/ota/y;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->f:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, "[BBDeviceOTAController] [setOTAServerURL] throw IllegalArgumentException \"Not a valid url\""

    invoke-static {v0, v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid url"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method e(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 9
    const-string v0, "[getTargetVersionWithData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 11
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 12
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method f()Lcom/stripe/bbpos/bbdevice/ota/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->h:Lcom/stripe/bbpos/bbdevice/ota/m;

    return-object v0
.end method

.method declared-synchronized f(Ljava/lang/String;)V
    .locals 7

    const-string v0, "otaResult : "

    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    if-eqz v1, :cond_a

    .line 9
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "device busy"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v6, :cond_2

    .line 10
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->M()I

    move-result v2

    if-lez v2, :cond_2

    .line 11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->z0()V

    .line 12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 17
    :cond_2
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "device error"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "device busy"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "device no response"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v6, :cond_4

    .line 18
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->L()I

    move-result v2

    if-lez v2, :cond_4

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->y0()V

    .line 20
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/stripe/bbpos/bbdevice/ota/b$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 25
    :cond_4
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serial disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v1, v2, :cond_5

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 32
    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 33
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 34
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_9

    .line 36
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 38
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 39
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 40
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 48
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Z)V

    .line 49
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;)V

    .line 50
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->k(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->h:Lcom/stripe/bbpos/bbdevice/ota/m;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const-string v2, "FAILED"

    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_8
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_9
    :try_start_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method f(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    const-string v0, "[setTargetVersionWithData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method g(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    const-string v0, "[startLocalConfigUpdateWithData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->e:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->B:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->C:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->D:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->E:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->F:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->G:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->H:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->n0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->o0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->p0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->q0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method h(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string v0, "[startLocalFirmwareUpdateWithData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method i(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string v0, "[startRemoteConfigUpdateCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method j(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string v0, "[startRemoteFirmwareUpdateCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method k(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;,
            Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    const-string v0, "[startRemoteKeyInjection]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->q()V

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method n()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Missing update file"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->f0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Missing dekBDK"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    :try_start_0
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Input hex file can\'t be accessed"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Input hex file doesn\'t exist"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 24
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Invalid encHex or encHexFile"

    if-nez v2, :cond_4

    .line 26
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_4
    :try_start_1
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 32
    const-string v2, "DF861E"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v4, "DF8629"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    const-string v5, "DF863E"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    const-string v6, "DF866D"

    invoke-static {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    const-string v7, "DF866F"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v7

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    const-string v8, "DF866E"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    const-string v9, "DF8728"

    invoke-static {v1, v9}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v9

    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 39
    new-instance v10, Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    .line 40
    const-string v8, "DF8771"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    const-string v11, "DF8773"

    invoke-static {v1, v11}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v11

    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 42
    const-string v12, "DF8774"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    const-string v13, "DF8775"

    invoke-static {v1, v13}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v13

    iget-object v13, v13, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 44
    const-string v14, "DF8776"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v14

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 45
    const-string v15, "DF8777"

    invoke-static {v1, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v1

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 48
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF861E)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51
    :cond_5
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 52
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF866F)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 55
    :cond_6
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 56
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF866D)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :cond_7
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 60
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8771)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 63
    :cond_8
    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 64
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8773)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    :cond_9
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 68
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8774)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 71
    :cond_a
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 72
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8775)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 75
    :cond_b
    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 76
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8776)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    :cond_c
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 80
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (DF8777)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    :cond_d
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 85
    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 86
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "Incorrect HEX file. (incorrect hash)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_e
    iget-object v15, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    move-object/from16 v16, v6

    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(Z)V

    .line 91
    iget-object v15, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v15, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->c(Z)V

    .line 93
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v6, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->y(Ljava/lang/String;)V

    .line 94
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->A(Ljava/lang/String;)V

    .line 95
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->o(Ljava/lang/String;)V

    .line 96
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-static/range {v16 .. v16}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->a([B)V

    .line 97
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Ljava/lang/String;)V

    .line 98
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(Ljava/lang/String;)V

    .line 99
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->B(Ljava/lang/String;)V

    .line 100
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/y;->v(Ljava/lang/String;)V

    .line 101
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->j(Ljava/lang/String;)V

    .line 102
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->i(Ljava/lang/String;)V

    .line 103
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/y;->E(Ljava/lang/String;)V

    .line 104
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v14}, Lcom/stripe/bbpos/bbdevice/ota/y;->u(Ljava/lang/String;)V

    .line 105
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 107
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 108
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 109
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    .line 111
    :catch_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized o()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "[pollingDeviceInfo]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[BBDeviceOTACubeFlowController] [pollingDeviceInfo]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction4()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized p()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "[pollDeviceInfoWSP7X]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[BBDeviceOTACubeFlowController] [pollDeviceInfoWSP7X]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction5()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, ""

    const-string v2, "[BBDeviceOTAController] [startRemoteFirmwareUpdate] throw IllegalStateException \"BBDeviceOTAController is in not idle state\""

    invoke-static {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BBDeviceOTAController is in not idle state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method r()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "otaResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : OTA process aborted, percentage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->k(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/b;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, ""

    const-string v2, "[BBDeviceOTAController] [stop] throw IllegalStateException \"BBDeviceOTAController is in idle state\""

    invoke-static {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BBDeviceOTAController is in idle state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
