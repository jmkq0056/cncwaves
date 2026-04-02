.class Lcom/stripe/bbpos/bbdevice/ota/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ota/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field private c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

.field private d:Landroid/content/Context;

.field private e:Lcom/stripe/bbpos/bbdevice/ota/c$a;

.field f:Ljava/lang/String;

.field private g:Lcom/stripe/bbpos/bbdevice/ota/y;

.field private h:Lcom/stripe/bbpos/bbdevice/ota/t;

.field private i:Lcom/stripe/bbpos/bbdevice/ota/s;

.field j:Landroid/os/HandlerThread;

.field k:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$3irPZJ2Xze7CCAT6D7s3i2QGdfI(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->h()V

    return-void
.end method

.method public static synthetic $r8$lambda$ldMSdSBbGaOX3DzPQxzj0cm0E9Y(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$pc258FuLA8FVwKkTfgaqJ5FcO84(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->g()V

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

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->a:Ljava/lang/Object;

    .line 10
    const-string v0, "https://api.emms.bbpos.com/tms2/deviceasset/"

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->f:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->d:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    .line 32
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OTA-P1000-Flow-General-Thread-1"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->j:Landroid/os/HandlerThread;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 34
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->j:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    .line 35
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 36
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/s;

    invoke-direct {p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/s;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->i:Lcom/stripe/bbpos/bbdevice/ota/s;

    .line 37
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/t;

    invoke-direct {p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/t;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->h:Lcom/stripe/bbpos/bbdevice/ota/t;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->stopSerial()V

    return-void
.end method


# virtual methods
.method a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v1, :cond_0

    .line 9
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->IDLE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    return-object v0

    .line 11
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    return-object v0
.end method

.method a(D)V
    .locals 2

    double-to-int p1, p1

    .line 196
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result p2

    sub-int p2, p1, p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 197
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    int-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 198
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(I)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 6

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateOTAProgress] progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTA] [updateOTAProgress] progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->y()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4080000000000000L    # 512.0

    div-double/2addr v0, v2

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object p1

    array-length p1, p1

    int-to-double v4, p1

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide v2, 0x4051800000000000L    # 70.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v0, v2

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(D)V

    return-void

    :cond_0
    if-ltz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->N()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(D)V

    .line 195
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(I)V

    :cond_1
    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 199
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 200
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
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

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    const-string v1, "[BBDeviceOTAController] ["

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 23
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-eq v0, v3, :cond_2

    if-eqz p2, :cond_0

    .line 35
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->d:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 41
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 42
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 45
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

    .line 46
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/NoInternetConnectionException;-><init>()V

    throw p1

    .line 47
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

    .line 48
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;-><init>()V

    throw p1

    .line 49
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

    .line 50
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/OTAServerURLNotSetException;-><init>()V

    throw p1

    .line 51
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

    .line 52
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

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setBBDeviceController] controller : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid controller"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->i:Lcom/stripe/bbpos/bbdevice/ota/s;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/net/Proxy;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->h:Lcom/stripe/bbpos/bbdevice/ota/t;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/net/Proxy;)V

    return-void
.end method

.method a(Ljava/util/Hashtable;)V
    .locals 5
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

    .line 73
    const-string v0, "[deviceInfoReceived]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAP1000FlowController] [deviceInfoReceived] data : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->d:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_0

    .line 78
    const-string p1, "[BBDeviceOTAP1000FlowController] [deviceInfoReceived] deviceInfoReceived is received in incorrect state"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    const-string v2, "Command not supported"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "supportCubeSecurityMode"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 105
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 106
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 107
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 108
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 109
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v4, :cond_2

    goto/16 :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    const-string p1, "[BBDeviceOTAP1000FlowController] [deviceInfoReceived] Duplicated device info is received"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->e:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 121
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/util/Hashtable;)V

    .line 123
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 124
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "OTA process aborted"

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/o;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_5

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/o;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/o;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 135
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device Tampered. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 140
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 141
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 142
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 143
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    if-ne p1, v4, :cond_a

    .line 144
    :cond_7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/o;->a()I

    move-result p1

    const-string v0, "Please connect to power source and charge up the device to 50% or above before doing OTA."

    const/16 v1, 0x32

    if-ge p1, v1, :cond_8

    .line 145
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne p1, v2, :cond_a

    .line 150
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Landroid/content/Context;)I

    move-result p1

    .line 152
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v0, 0x14

    if-ge p1, v0, :cond_a

    .line 156
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v0, "Please charge up the device to 20% or above before doing OTA while the device is charging."

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_9
    if-ge p1, v1, :cond_a

    .line 161
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->f:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 170
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->h:Lcom/stripe/bbpos/bbdevice/ota/t;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/util/Date;)V

    return-void

    .line 171
    :cond_b
    :goto_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 173
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_d

    .line 174
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 175
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Ljava/util/Hashtable;)V

    return-void

    .line 176
    :cond_d
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_e

    .line 177
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    .line 178
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f(Ljava/util/Hashtable;)V

    return-void

    .line 179
    :cond_e
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p1, v0, :cond_f

    .line 180
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, p1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_f
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V

    return-void
.end method

.method a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
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

    .line 53
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-direct {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;-><init>(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 p1, 0x0

    .line 54
    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/util/Hashtable;)V

    .line 55
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;)V

    .line 56
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->t(Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->b:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 60
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction7()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(I)V

    .line 61
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->c:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 62
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->z()Lcom/stripe/bbpos/bbdevice/ota/y$a;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/y$a;->c:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    if-ne p1, p2, :cond_0

    .line 63
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->d:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 64
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction4()V

    return-void

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->z()Lcom/stripe/bbpos/bbdevice/ota/y$a;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/y$a;->b:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    if-ne p1, p2, :cond_1

    .line 66
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->T:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 67
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->i:Lcom/stripe/bbpos/bbdevice/ota/s;

    const-string p2, "01070800"

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/s;->d(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->z()Lcom/stripe/bbpos/bbdevice/ota/y$a;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/y$a;->d:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    if-ne p1, p2, :cond_2

    .line 69
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->V:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 70
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->i:Lcom/stripe/bbpos/bbdevice/ota/s;

    const-string p2, "DF30020C03D600D800DF862900DF86640101DF834F00DF866500"

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string p2, "Unknown error (2001)"

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->e:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 3
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b()Lcom/stripe/bbpos/bbdevice/ota/s;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->i:Lcom/stripe/bbpos/bbdevice/ota/s;

    return-object v0
.end method

.method b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 4

    .line 9
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

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "otaResult : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

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

    .line 12
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->v:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 13
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->w:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 14
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->x:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 15
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->y:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 16
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 17
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->A:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 18
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->B:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 19
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->C:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 20
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->D:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 21
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->E:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 22
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->F:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 23
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->G:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 24
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->H:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 25
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 26
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->J:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 27
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object p1

    const-string p2, "FAILED"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-ne p1, v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1, v0, v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1, v0, v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_3
    :goto_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 41
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/s;->b()V

    return-void
.end method

.method b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->e:Lcom/stripe/bbpos/bbdevice/ota/c$a;

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

.method b(Ljava/util/Hashtable;)V
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

    .line 5
    const-string v0, "[startRemoteConfigUpdateCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->i()V

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method c()Lcom/stripe/bbpos/bbdevice/ota/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->e:Lcom/stripe/bbpos/bbdevice/ota/c$a;

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

.method c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 5

    .line 12
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

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[BBDeviceOTAP1000FlowController] [returnOTAResult] otaResult : "

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

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->u0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-wide/16 v1, 0x50

    if-ne p1, v0, :cond_3

    .line 19
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v3, :cond_1

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->k(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v3, :cond_2

    .line 24
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->j(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v1, :cond_e

    .line 27
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->l(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v0, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SETUP_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_FIRMWARE_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_CONFIG_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-ne p1, v3, :cond_e

    .line 38
    :cond_4
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {p0, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 39
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_5

    .line 40
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->k(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :cond_5
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_6

    .line 42
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->j(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_6
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_7

    .line 44
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->l(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_7
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_8

    .line 46
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_8
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_9

    .line 48
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_9
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_a

    .line 50
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 51
    const-string v4, "errorMessage"

    invoke-virtual {v3, v4, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {p2, p1, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    goto :goto_0

    .line 53
    :cond_a
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_b

    .line 54
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_b
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_c

    .line 56
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->m(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_c
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v3, v4, :cond_d

    .line 58
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v3, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_d
    :goto_0
    if-eq p1, v0, :cond_f

    .line 60
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    if-ne p1, p2, :cond_e

    goto :goto_1

    :cond_e
    return-void

    .line 61
    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ota/c$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAP1000FlowController] [sendOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction6(Ljava/lang/String;)V

    return-void
.end method

.method c(Ljava/util/Hashtable;)V
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
    const-string v0, "[startRemoteFirmwareUpdateCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->i()V

    .line 6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const-string v1, "networkChecking"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V

    return-void
.end method

.method d()Lcom/stripe/bbpos/bbdevice/ota/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[sendVirtualOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAP1000FlowController] [sendVirtualOTACommand] command : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->b:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->internalFunction3(Ljava/lang/String;)V

    return-void
.end method

.method e()Lcom/stripe/bbpos/bbdevice/ota/t;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->h:Lcom/stripe/bbpos/bbdevice/ota/t;

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
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->f:Ljava/lang/String;

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

.method declared-synchronized f(Ljava/lang/String;)V
    .locals 3

    const-string v0, "otaResult : "

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 5
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 6
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_4

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 9
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 10
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Z)V

    .line 18
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;)V

    .line 19
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percentage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

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

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->h:Lcom/stripe/bbpos/bbdevice/ota/t;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const-string v2, "FAILED"

    invoke-virtual {p1, v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 25
    :cond_4
    :try_start_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {p0, v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method i()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

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

.method j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    const-string v2, ""

    if-eq v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->j:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->k:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->l:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->m:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->n:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->p:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->q:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->r:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    .line 13
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->r0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->K:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->L:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->M:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->N:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->O:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->R:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->S:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->P:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->Q:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/c$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "otaResult : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : OTA process aborted, percentage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

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

    .line 32
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/c;->g:Lcom/stripe/bbpos/bbdevice/ota/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Z)V

    :cond_0
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, "[BBDeviceOTAController] [stop] throw IllegalStateException \"Cannot stop OTA process at this state. Please wait until finish\""

    invoke-static {v2, v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop OTA process at this state. Please wait until finish"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, "[BBDeviceOTAController] [stop] throw IllegalStateException \"BBDeviceOTAController is in idle state\""

    invoke-static {v2, v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BBDeviceOTAController is in idle state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
