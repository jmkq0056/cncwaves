.class public final Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$b;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;,
        Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
    }
.end annotation


# static fields
.field private static e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

.field static f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

.field private static g:Lcom/stripe/bbpos/bbdevice/ota/a;

.field private static final h:Ljava/lang/Object;

.field private static i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Lcom/stripe/bbpos/bbdevice/ota/b;

.field private b:Lcom/stripe/bbpos/bbdevice/ota/c;

.field private c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field d:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-SRRZMVvmydSwJ_9zGzjFZv0QDg(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-fuy_PCDaxNBWX3kIRieaQ3ZgVA(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$96vTqrQm8Qnax6t-GtvJj4i-prk()V
    .locals 0

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$CXsb7g7iBO0FtlXX8dB1k8GZoDY(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GD_SQzo7Svlrw3d7m12VIA-1P8s(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W1gsJsbkuBYzCgyP77qvaeSQ-ps(D)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(D)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JSzNr7OqxQL8xl3bfJ9nRpF-iM(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hGD-uBams9-047P3158KJF9Gm9Q(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oGzKQ-v1BU6Zt3zDOAoQU-yQU5I(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x5mtUQhkpBqqagoQ5Z835ZFfaQQ(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 13
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    .line 4
    sput-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    .line 6
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-direct {p2, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/a;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    sput-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    .line 7
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-direct {p2, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/b;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 8
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-direct {p2, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/c;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    return-void
.end method

.method private static synthetic a(D)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnOTAProgress(D)V

    return-void
.end method

.method private static synthetic a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnLocalConfigUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnTargetVersionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method private static synthetic a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnTargetVersionListResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static b()Ljava/lang/String;
    .locals 11

    .line 8
    const-string v0, "persist.bbpos.product_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 16
    :cond_1
    const-string v3, "ro.product.model"

    invoke-static {v3, v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 17
    const-string v3, "WSC6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    .line 19
    :cond_2
    const-string v3, "WSC5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 21
    :cond_3
    const-string v4, "WSS5"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v4

    .line 23
    :cond_4
    const-string v5, "WTH1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v5

    .line 25
    :cond_5
    const-string v5, "WTP1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v5

    .line 27
    :cond_6
    const-string v5, "WGO1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    return-object v5

    .line 29
    :cond_7
    const-string v5, "WGP1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    return-object v5

    .line 31
    :cond_8
    const-string v5, "WSP7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    return-object v5

    .line 33
    :cond_9
    const-string v6, "WSC4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    return-object v6

    .line 35
    :cond_a
    const-string v7, "WSC3"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    return-object v7

    .line 37
    :cond_b
    const-string v7, "WSC2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    return-object v7

    .line 39
    :cond_c
    const-string v8, "WSC1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    return-object v8

    .line 45
    :cond_d
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, "P1000"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 46
    const-string v8, "WiseposPlus"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 47
    const-string v8, "WiseposNeo"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 48
    const-string v8, "WiseposTouch"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 49
    const-string v8, " "

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WiseposE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 50
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WiseposEPlus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 51
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiseposE+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_0

    .line 56
    :cond_e
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v7

    .line 58
    :cond_f
    const-string v1, "MT6771"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v5

    :cond_10
    return-object v6

    :cond_11
    :goto_0
    return-object v3
.end method

.method private static synthetic b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnLocalFirmwareUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic c()V
    .locals 0

    return-void
.end method

.method private static synthetic c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnRemoteConfigUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic d(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnRemoteFirmwareUpdateResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic e(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnRemoteKeyInjectionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic f(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    invoke-interface {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;->onReturnSetTargetVersionResult(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "[BBDeviceOTAController] [getApiVersion] versionStr : 1.6.29"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "1.6.29"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    if-nez v0, :cond_2

    const-string v0, ""

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-direct {v0, p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string p1, "[BBDeviceOTAController] [getInstance] throw IllegalArgumentException \"BBDeviceOTAControllerListener cannot be null\""

    invoke-static {v0, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BBDeviceOTAControllerListener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string p1, "[BBDeviceOTAController] [getInstance] throw IllegalArgumentException \"Context cannot be null\""

    invoke-static {v0, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 26
    sput-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;

    .line 28
    :cond_3
    :goto_0
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    return-object p0
.end method

.method public static setDebugLogEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAController] [setDebugLogEnabled] isEnabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->b(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    invoke-static {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;)V

    return-void
.end method


# virtual methods
.method a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;
    .locals 7

    .line 11
    const-string v0, "persist.bbpos.product_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v3, "WSC6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 13
    const-string v4, "WTH1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 14
    const-string v5, "WTP1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_2

    .line 16
    :cond_0
    const-string v6, "WGO1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 17
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 18
    :cond_1
    const-string v6, "WGP1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 19
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 21
    :cond_2
    const-string v6, "ro.product.model"

    invoke-static {v6, v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 27
    :cond_3
    const-string v3, "RK3326_GO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 28
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 32
    :cond_4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "P1000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 33
    const-string v3, "WiseposPlus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 34
    const-string v3, "WiseposNeo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 35
    const-string v3, "WiseposTouch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 36
    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiseposE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 37
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiseposEPlus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 38
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiseposE+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 39
    const-string v1, "WSC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 40
    const-string v1, "WSS5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 43
    :cond_5
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 44
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 45
    :cond_6
    const-string v1, "MT6771"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 48
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 49
    :cond_8
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 50
    :cond_9
    :goto_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0

    .line 51
    :cond_a
    :goto_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    return-object v0
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_0

    .line 6
    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_1

    .line 8
    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    return-void

    .line 10
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method a(Ljava/util/Hashtable;)V
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

    .line 53
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 57
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 58
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->b(Ljava/util/Hashtable;)V

    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->d(Ljava/util/Hashtable;)V

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(D)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " percentage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnOTAProgress]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda7;-><init>(D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V
    .locals 3
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

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnTargetVersionResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnTargetVersionListResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda3;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method b(Ljava/util/Hashtable;)V
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

    .line 63
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 67
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 68
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->c(Ljava/util/Hashtable;)V

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->e(Ljava/util/Hashtable;)V

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

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 6
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->d(Ljava/util/Hashtable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->f(Ljava/util/Hashtable;)V

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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 6
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->f(Ljava/util/Hashtable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->g(Ljava/util/Hashtable;)V

    return-void
.end method

.method e(Ljava/util/Hashtable;)V
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 6
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->g(Ljava/util/Hashtable;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->h(Ljava/util/Hashtable;)V

    return-void
.end method

.method f(Ljava/util/Hashtable;)V
    .locals 3
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
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v2, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v0, v2, :cond_1

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    goto :goto_0

    .line 7
    :cond_1
    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_3

    .line 13
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->h(Ljava/util/Hashtable;)V

    return-void

    .line 14
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Ljava/util/Hashtable;)V

    return-void

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->i(Ljava/util/Hashtable;)V

    return-void
.end method

.method g(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", message : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v0, "[BBDeviceOTAController] [onReturnAPResourceSignatureResult]"

    invoke-static {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    return-void
.end method

.method g(Ljava/util/Hashtable;)V
    .locals 3
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
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v2, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->d:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getConnectionMode()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v0, v2, :cond_1

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    goto :goto_0

    .line 7
    :cond_1
    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_3

    .line 13
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->i(Ljava/util/Hashtable;)V

    return-void

    .line 14
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_4

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/util/Hashtable;)V

    return-void

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->j(Ljava/util/Hashtable;)V

    return-void
.end method

.method public getBBDeviceOTAControllerState()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAController] [BBDeviceOTAControllerState] state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/a;->i()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->b(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/a;->i()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->IDLE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTargetVersionListWithData(Ljava/util/Hashtable;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [getTargetVersionListWithData]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Ljava/util/Hashtable;)V

    return-void
.end method

.method public getTargetVersionWithData(Ljava/util/Hashtable;)V
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [getTargetVersionWithData]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b(Ljava/util/Hashtable;)V

    return-void
.end method

.method h(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnLocalConfigUpdateResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda9;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method h(Ljava/util/Hashtable;)V
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

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->j(Ljava/util/Hashtable;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->k(Ljava/util/Hashtable;)V

    return-void
.end method

.method i(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnLocalFirmwareUpdateResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda6;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public internalFunction1(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "[BBDeviceOTAController] [internalFunction1] arg0 : "

    .line 1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", arg1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", otaFlowVersion : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_0

    .line 5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_3

    .line 13
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/a;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne p1, v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/b;->f(Ljava/lang/String;)V

    .line 19
    :goto_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->b:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sput-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    .line 21
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public internalFunction2(Ljava/util/Hashtable;)V
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BBDeviceOTAController] [internalFunction2] arg0 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "spWCConnectionHealthCheck"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/util/Hashtable;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Ljava/util/Hashtable;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/util/Hashtable;)V

    return-void

    .line 15
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->a:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_3

    .line 16
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Ljava/util/Hashtable;)V

    return-void

    .line 17
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->i:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;->c:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$a;

    if-ne v0, v1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/util/Hashtable;)V

    return-void

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/util/Hashtable;)V

    return-void
.end method

.method j(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnRemoteConfigUpdateResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda5;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method k(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnRemoteFirmwareUpdateResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method l(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnRemoteKeyInjectionResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda4;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method m(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

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

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [onReturnSetTargetVersionResult]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method n(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " otaResult : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", message : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v0, "[BBDeviceOTAController] [onReturnVerifyCertResult]"

    invoke-static {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d:Landroid/os/Handler;

    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda8;

    invoke-direct {p2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBBDeviceController(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceControllerNotSupportOTAException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " bbDeviceController : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [setBBDeviceController]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 6
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setOTAServerURL(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [setOTAServerURL]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    const-string v0, ".svc/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->e(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const-string v0, "abcd"

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->e(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tms1/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/a;->e(Ljava/lang/String;)V

    .line 8
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tms2/sdk-service/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->e(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->e(Ljava/lang/String;)V

    .line 20
    :goto_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Ljava/net/Proxy;)V

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/net/Proxy;)V

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/net/Proxy;)V

    return-void
.end method

.method public setOTAServerURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->setOTAServerURL(Ljava/lang/String;)V

    .line 26
    :try_start_0
    new-instance p1, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 27
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/a;->a(Ljava/net/Proxy;)V

    .line 28
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Ljava/net/Proxy;)V

    .line 29
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 31
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setTargetVersionWithData(Ljava/util/Hashtable;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [setTargetVersionWithData]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->c(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startLocalConfigUpdateWithData(Ljava/util/Hashtable;)V
    .locals 3
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [startLocalConfigUpdateWithData]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->d(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startLocalFirmwareUpdateWithData(Ljava/util/Hashtable;)V
    .locals 3
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
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/bbpos/bbdevice/ota/BBDeviceNotConnectedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [startLocalFirmwareUpdateWithData]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->e(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startRemoteConfigUpdate(Ljava/util/Hashtable;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [startRemoteConfigUpdate]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->f(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startRemoteFirmwareUpdate(Ljava/util/Hashtable;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [startRemoteFirmwareUpdate]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g(Ljava/util/Hashtable;)V

    return-void
.end method

.method public startRemoteKeyInjection(Ljava/util/Hashtable;)V
    .locals 3
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v2, "[BBDeviceOTAController] [startRemoteKeyInjection]"

    invoke-static {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->h(Ljava/util/Hashtable;)V

    return-void
.end method

.method public stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    const-string v1, "[BBDeviceOTAController] [stop]"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/a;->i()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->g:Lcom/stripe/bbpos/bbdevice/ota/a;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/a;->J()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->r()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->a()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerState;

    move-result-object v0

    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->j()V

    :cond_2
    return-void
.end method
