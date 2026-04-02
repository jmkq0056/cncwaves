.class final Lcom/stripe/bbpos/bbdevice/ota/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/stripe/bbpos/bbdevice/ota/b;

.field private c:Ljava/net/Proxy;


# direct methods
.method public static synthetic $r8$lambda$9c-71_8-HzQQz0Pkqb1FroCqVPA(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$HBxZndv8zoEsxKCt7s92TbqaL8k(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$Hvoiu-P2hCIM4_jmO_X9sr5-1QQ(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$XmcGkaJsRx6TIHIDoIl2reARY1k(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9EfiUPcYpQdSLOPjeSt6q-OJ5c(Lcom/stripe/bbpos/bbdevice/ota/m;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gQkAUGyEG_lPhN9tzTkufPN14Ec(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$wlx22LlAdJIpRdlZM8WCFWO-lZY(Lcom/stripe/bbpos/bbdevice/ota/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/m;->e()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->a:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1452
    const-string v0, "ota-key-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1453
    const-string v0, "terminal-target-version-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1454
    const-string v0, "resource-list-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1457
    :cond_0
    const-string p1, "1"

    return-object p1

    .line 1458
    :cond_1
    :goto_0
    const-string p1, "2"

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[mucInfoChecking] deviceInfoMcuInfo : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", singleMcuInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", multipleMcuInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 1461
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "M0000"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 1464
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "F"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1468
    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "H"

    const/4 v6, 0x1

    if-nez v3, :cond_5

    const/4 p2, 0x0

    :goto_1
    add-int/lit8 v2, p2, 0x4

    .line 1470
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 1471
    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1475
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 1476
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 1477
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1478
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1479
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    .line 1480
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 1488
    :cond_1
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_3

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v4, :cond_2

    goto :goto_2

    :cond_2
    move p2, v2

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0

    .line 1497
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1498
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 1503
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_6

    .line 1504
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_6

    .line 1505
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1506
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1507
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1508
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    .line 1513
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1517
    :cond_7
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v6, :cond_9

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_8

    goto :goto_3

    .line 1522
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object v0

    .line 1531
    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1533
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_c

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_b

    goto :goto_4

    .line 1538
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_4
    return-object v0
.end method

.method private synthetic a()V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->p()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "[CubeFlowWebServiceCenter] [callWS] responseCode : "

    const-string v5, "[callWS] responseCode : "

    const-string v6, "Bearer:"

    const-string v7, "[callWS] urlConnection.getHeaderFields() : "

    const-string v8, "[callWS] tlsSocketFactory.getSupportedCipherSuites() : "

    const-string v9, "?APIVersion="

    const-string v10, "?APIVersion="

    const-string v11, "[callWS] tlsSocketFactory.getDefaultCipherSuites() : "

    const-string v12, "[CubeFlowWebServiceCenter] [callWS] url : "

    const-string v13, "[callWS] Thread.currentThread().getId() : "

    const-string v14, "[callWS] url : "

    .line 224
    iget-object v15, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->a:Ljava/lang/Object;

    monitor-enter v15

    move-object/from16 v16, v4

    .line 225
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ", jsonObject : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Thread;->getId()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", jsonObject : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 229
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid URL"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 231
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 253
    :try_start_1
    new-instance v13, Lcom/stripe/bbpos/bbdevice/ota/a0;

    invoke-direct {v13}, Lcom/stripe/bbpos/bbdevice/ota/a0;-><init>()V

    .line 254
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/stripe/bbpos/bbdevice/ota/a0;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 255
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/stripe/bbpos/bbdevice/ota/a0;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :catch_0
    :try_start_2
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->c:Ljava/net/Proxy;

    if-eqz v8, :cond_1

    .line 262
    new-instance v8, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->c:Ljava/net/Proxy;

    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 266
    :cond_1
    new-instance v8, Ljava/net/URL;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_0
    move-object v12, v0

    const v0, 0x1d4c0

    .line 272
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 273
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 275
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 277
    const-string v8, "status"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 278
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 279
    const-string v8, "GET"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_2
    const-string v8, "terminal-target-versions"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 281
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 282
    const-string v8, "PUT"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 285
    const-string v8, "POST"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 289
    :goto_1
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v12, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v12, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/m;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 294
    const-string v8, "Authorization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v8, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 306
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 307
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 308
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 309
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 310
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 311
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 314
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    .line 318
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_7

    .line 323
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 325
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 329
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[callWS] response : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[CubeFlowWebServiceCenter] [callWS] response : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 339
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 341
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 345
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[callWS] response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CubeFlowWebServiceCenter] [callWS] response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 350
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[callWS] e2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 351
    const-string v0, ""

    .line 354
    :goto_4
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    .line 379
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callWS] IOException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CubeFlowWebServiceCenter] [callWS] IOException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 382
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callWS] response code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CubeFlowWebServiceCenter] [callWS] response code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 387
    :catch_3
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callWS] SocketTimeoutException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CubeFlowWebServiceCenter] [callWS] SocketTimeoutException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 391
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callWS] response code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CubeFlowWebServiceCenter] [callWS] response code: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 396
    :catch_5
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocketTimeoutException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :catch_6
    move-exception v0

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callWS] MalformedURLException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CubeFlowWebServiceCenter] [callWS] MalformedURLException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MalformedURLException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 429
    :goto_5
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method private synthetic b()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/j;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 22
    const-string v0, "checkToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    const-string v0, "resource-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "mutual-authorization-challenge-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    const-string v0, "mutual-authorization-confirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    const-string v0, "resource-auth-data-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string v0, "private-resource-auth-data-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    const-string v0, "ota-key-list-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string v0, "ota-key-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const-string v0, "ota-histories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "terminal-target-version-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const-string v0, "resource-list-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    const-string v0, "terminal-target-versions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic d()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->p()V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/j;->d(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic f()V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 2

    .line 27
    const-string v0, "[callWebServiceGetOTAKeyListTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 28
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetOTAKeyListTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    const-string p2, "ota-key-list-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V
    .locals 5

    const-string v0, "FAILED"

    .line 36
    const-string v1, "[callWebServiceNotifyTMS]"

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 37
    const-string v1, "[CubeFlowWebServiceCenter] [callWebServiceNotifyTMS]"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    :try_start_0
    const-string v2, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "resourceType"

    if-ne v2, v3, :cond_0

    .line 42
    :try_start_1
    const-string v2, "04"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_1

    .line 44
    const-string v2, "12"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_2

    .line 46
    const-string v2, "7F"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_2
    :goto_0
    const-string v2, "status"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    :cond_3
    const-string v0, "failedReason"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :catch_0
    :cond_4
    invoke-virtual {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/y;->r(Ljava/lang/String;)V

    .line 55
    const-string p2, "ota-histories"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/util/Date;)V
    .locals 3

    .line 4
    const-string v0, "[callWebServiceLoginTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 5
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceLoginTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    const-string v1, "vendorId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "vendorSecret"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "appId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "appSecret"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/o;->a(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object p2

    .line 20
    const-string p3, "deviceInfo"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    const-string p2, "login"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1

    .line 56
    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda6;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized a(Ljava/net/Proxy;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/m;->c:Ljava/net/Proxy;

    .line 3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method a(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "resource-auth-data-getter"

    const-string v6, ", terminal-target-versions)"

    const-string v7, ", resource-list-getter)"

    const-string v8, ", private-resource-auth-data-getter)"

    const-string v9, ", terminal-target-version-getter)"

    const-string v10, ", resource-auth-data-getter)"

    const-string v11, ", ota-key-getter)"

    const-string v12, ", mutual-authorization-confirmation)"

    const-string v13, ", mutual-authorization-challenge-getter)"

    const-string v14, ", ota-key-list-getter)"

    const-string v15, ", resource-getter)"

    move-object/from16 v16, v8

    const-string v8, ", login)"

    move-object/from16 v17, v10

    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v18, v6

    const-string v6, "[onReturnWS] function : "

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ", isResponseSuccess : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ",  response : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "[CubeFlowWebServiceCenter] [onReturnWS] response : "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const-string v6, "ota-histories"

    const-string v10, ")"

    move-object/from16 v19, v7

    const-string v7, "resultMessage"

    move-object/from16 v20, v9

    const-string v9, "resultCode"

    move-object/from16 v21, v11

    const-string v11, ""

    move-object/from16 v22, v5

    const/4 v5, 0x0

    if-nez v0, :cond_5

    const-string v0, "Cannot connect to server. ("

    if-nez v4, :cond_0

    .line 435
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 437
    :cond_0
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 438
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 441
    :cond_1
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 445
    :cond_2
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-static {v8, v9, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-static {v8, v7, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, " ("

    if-eqz v7, :cond_3

    .line 453
    :try_start_1
    iget-object v7, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v9, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 455
    :cond_3
    iget-object v7, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v9, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 458
    :catch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 461
    :cond_4
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 470
    :cond_5
    :try_start_2
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 472
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 473
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 477
    :cond_6
    const-string v4, "login"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const-string v5, "record"

    move/from16 p4, v4

    const-string v4, "isoTime"

    move-object/from16 v29, v10

    const-string v10, "unixTimestamp"

    move-object/from16 v23, v6

    const-string v6, "OK"

    move-object/from16 v24, v12

    const-string v12, "0000"

    move-object/from16 v25, v13

    const-string v13, "Server response fail with message: "

    move-object/from16 v27, v14

    const-string v14, "OTA Flow invalid state ("

    if-eqz p4, :cond_16

    .line 478
    :try_start_3
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v15, Lcom/stripe/bbpos/bbdevice/ota/b$a;->f:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v15, :cond_7

    .line 479
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 482
    :cond_7
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->g:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 483
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 484
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 485
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 486
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 487
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 488
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 489
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 490
    const-string v4, "bearerToken"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_8

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v4, :cond_8

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v4, :cond_9

    .line 494
    :cond_8
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 497
    :cond_9
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    if-eq v2, v3, :cond_f

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_a

    goto :goto_0

    .line 571
    :cond_a
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_b

    .line 572
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->l0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 573
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 574
    :cond_b
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_c

    .line 575
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->d0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 576
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->f(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 577
    :cond_c
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_d

    .line 578
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->f0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 579
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->e(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 580
    :cond_d
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_e

    .line 581
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->h0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 582
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->j(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 583
    :cond_e
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_61

    .line 584
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 585
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    const-string v2, "05"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 586
    :cond_f
    :goto_0
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q0()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 587
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 588
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    const-string v2, "05"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 592
    :cond_10
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 593
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->h:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 594
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->d(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 598
    :cond_11
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 600
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    .line 602
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v3, :cond_12

    .line 605
    :try_start_4
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_1

    .line 607
    :catch_1
    :try_start_5
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v4, "Input hex file can\'t be accessed"

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_1

    .line 610
    :cond_12
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v4, "Input hex file doesn\'t exist"

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 614
    :cond_13
    :goto_1
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 616
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid encHex or encHexFile"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_10

    .line 621
    :cond_14
    :try_start_6
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 622
    const-string v3, "DF861E"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    const-string v4, "DF8629"

    invoke-static {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    const-string v5, "DF863E"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 625
    const-string v6, "DF866D"

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 626
    const-string v7, "DF866F"

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v7

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 627
    const-string v8, "DF866E"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    const-string v9, "DF8728"

    invoke-static {v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v9

    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 629
    new-instance v10, Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    .line 630
    const-string v8, "DF8771"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 631
    const-string v11, "DF8773"

    invoke-static {v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v11

    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 632
    const-string v12, "DF8774"

    invoke-static {v2, v12}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 633
    const-string v13, "DF8775"

    invoke-static {v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v13

    iget-object v13, v13, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 634
    const-string v14, "DF8776"

    invoke-static {v2, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v14

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 635
    const-string v15, "DF8777"

    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->y(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->A(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->o(Ljava/lang/String;)V

    .line 640
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->a([B)V

    .line 641
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->B(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, v8}, Lcom/stripe/bbpos/bbdevice/ota/y;->v(Ljava/lang/String;)V

    .line 645
    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->j(Ljava/lang/String;)V

    .line 646
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->i(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v13}, Lcom/stripe/bbpos/bbdevice/ota/y;->E(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, v14}, Lcom/stripe/bbpos/bbdevice/ota/y;->u(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n(Ljava/lang/String;)V

    .line 651
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 652
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 653
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_10

    .line 655
    :catch_2
    :try_start_7
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid encHex or encHexFile"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 676
    :cond_15
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 678
    :cond_16
    const-string v8, "resource-getter"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 679
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->h:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v8, :cond_17

    .line 680
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 683
    :cond_17
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->i:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 684
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 685
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 686
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 687
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    .line 688
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 689
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 690
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 691
    const-string v4, "requireUpdate"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_18

    .line 693
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->s0()Z

    move-result v3

    if-nez v3, :cond_18

    .line 694
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 699
    :cond_18
    const-string v3, "encResourceTlv"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 701
    const-string v3, "DF861E"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 702
    const-string v4, "DF8629"

    invoke-static {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 703
    const-string v5, "DF863E"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 704
    const-string v6, "DF866D"

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 705
    const-string v7, "DF866F"

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v7

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 706
    const-string v8, "DF866E"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 707
    new-instance v9, Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 708
    const-string v8, "DF8771"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 709
    const-string v10, "DF8773"

    invoke-static {v2, v10}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v10

    iget-object v10, v10, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 710
    const-string v12, "DF8774"

    invoke-static {v2, v12}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 711
    const-string v13, "DF8775"

    invoke-static {v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v13

    iget-object v13, v13, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 712
    const-string v14, "DF8776"

    invoke-static {v2, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v14

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 713
    const-string v15, "DF8777"

    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->y(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->A(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->o(Ljava/lang/String;)V

    .line 718
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->a([B)V

    .line 719
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, v8}, Lcom/stripe/bbpos/bbdevice/ota/y;->v(Ljava/lang/String;)V

    .line 722
    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->j(Ljava/lang/String;)V

    .line 723
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->i(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v0, v13}, Lcom/stripe/bbpos/bbdevice/ota/y;->E(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, v14}, Lcom/stripe/bbpos/bbdevice/ota/y;->u(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/o;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 739
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 740
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 741
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 743
    :cond_19
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 745
    :cond_1a
    const-string v8, "ota-key-list-getter"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 746
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->l0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_1b

    .line 747
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 750
    :cond_1b
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->m0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 751
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 752
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 753
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 754
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    .line 755
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 756
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 758
    const-string v4, "records"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 760
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_1c

    goto/16 :goto_6

    :cond_1c
    const/4 v3, 0x0

    .line 765
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ge v3, v4, :cond_1d

    .line 768
    :try_start_8
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "keySlotInfo"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object/from16 v26, v4

    goto :goto_3

    :catch_3
    move-object/from16 v26, v11

    .line 773
    :goto_3
    :try_start_9
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "tmkType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-object/from16 v27, v4

    goto :goto_4

    :catch_4
    move-object/from16 v27, v11

    .line 778
    :goto_4
    :try_start_a
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "tmkTypeValue"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v28, v4

    goto :goto_5

    :catch_5
    move-object/from16 v28, v11

    .line 781
    :goto_5
    :try_start_b
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "keyType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "keyMgmtType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v28}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 783
    :cond_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d(I)V

    const/4 v3, 0x0

    .line 784
    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->c(I)V

    .line 785
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 786
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 787
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    goto/16 :goto_10

    .line 788
    :cond_1e
    :goto_6
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Empty key list"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 816
    :cond_1f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 818
    :cond_20
    const-string v8, "mutual-authorization-challenge-getter"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 819
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->C:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v8, :cond_21

    .line 820
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v25

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 823
    :cond_21
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->D:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 824
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 825
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 826
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 827
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    .line 828
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 829
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 830
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 831
    const-string v4, "encKek"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 832
    const-string v4, "encR1"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 833
    const-string v4, "sessionToken"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 836
    const-string v5, "tlv"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 837
    const-string v5, "tlv"

    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 839
    const-string v3, "DF876F"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 840
    const-string v5, "DF8770"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v9, v3

    goto :goto_7

    :cond_22
    move-object v9, v11

    move-object v10, v9

    .line 842
    :goto_7
    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->C(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v0, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->c(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->D(Ljava/lang/String;)V

    .line 847
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->E:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 849
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 850
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v5

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v5 .. v10}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 852
    :cond_23
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v7, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 855
    :cond_24
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 857
    :cond_25
    const-string v8, "mutual-authorization-confirmation"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 858
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->G:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_26

    .line 859
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 862
    :cond_26
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->H:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 863
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 864
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 865
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 866
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    .line 868
    invoke-static {v2, v10, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 869
    invoke-static {v2, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 870
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_29

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_27

    goto :goto_8

    .line 881
    :cond_27
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_28

    .line 882
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->n0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 883
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 884
    :cond_28
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_61

    .line 885
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->v0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 886
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->c(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 887
    :cond_29
    :goto_8
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q0()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 888
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Auth only."

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 891
    :cond_2a
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->I:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 892
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 893
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->c(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 895
    :cond_2b
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->i(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 905
    :cond_2c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_2d
    move-object/from16 v8, v22

    .line 907
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_5c

    const-string v15, "private-resource-auth-data-getter"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2e

    goto/16 :goto_e

    .line 954
    :cond_2e
    const-string v8, "ota-key-getter"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 955
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->n0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v8, :cond_2f

    .line 956
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 959
    :cond_2f
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->o0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 960
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v8, 0x5e

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 963
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 964
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 965
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 966
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    .line 967
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 968
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v4, 0x0

    .line 969
    invoke-static {v2, v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 970
    const-string v5, "tr31Wk"

    invoke-static {v2, v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 971
    const-string v4, "keyType"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 972
    const-string v4, "keyMgmtType"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 973
    const-string v3, "keyProfileId"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)I

    move-result v2

    .line 974
    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H(Ljava/lang/String;)V

    .line 975
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/b$a;->p0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 976
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v3

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 978
    :cond_30
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 980
    :cond_31
    const-string v8, "terminal-target-version-getter"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 981
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->d0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v2, :cond_32

    .line 982
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 985
    :cond_32
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->e0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 986
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 987
    invoke-static {v0, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-static {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 989
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v3, 0x1

    .line 990
    invoke-static {v0, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 991
    invoke-static {v0, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 992
    invoke-static {v0, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 993
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/Hashtable;)V

    return-void

    .line 996
    :cond_33
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 998
    :cond_34
    const-string v5, "resource-list-getter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 999
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->f0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v2, :cond_35

    .line 1000
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1003
    :cond_35
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->g0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1004
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1005
    invoke-static {v0, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1007
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v3, 0x1

    .line 1008
    invoke-static {v0, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 1009
    invoke-static {v0, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1011
    const-string v2, "records"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->c(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 1012
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 1013
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_36

    .line 1014
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1016
    :cond_36
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v3, v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 1018
    :cond_37
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1020
    :cond_38
    const-string v5, "terminal-target-versions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1021
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->h0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v2, :cond_39

    .line 1022
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1025
    :cond_39
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->i0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1026
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1027
    invoke-static {v0, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1028
    invoke-static {v0, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v5, 0x1

    .line 1030
    invoke-static {v0, v10, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 1031
    invoke-static {v0, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1032
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->d(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1035
    :cond_3a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_3b
    move-object/from16 v4, v23

    .line 1037
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1038
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v4, "STARTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const-string v4, ", ota-histories)"

    if-eqz v2, :cond_3d

    .line 1039
    :try_start_c
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->x:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_3c

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_3c

    .line 1040
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 v5, 0x1

    .line 1043
    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(Z)V

    goto :goto_a

    .line 1044
    :cond_3d
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v5, "COMPLETED"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1045
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Y:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_3e

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->r0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v2, v5, :cond_3e

    .line 1046
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1060
    :cond_3e
    :goto_a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1061
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1062
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1063
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x2710

    const/16 v5, 0x63

    const/4 v7, 0x3

    if-eqz v3, :cond_4d

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1064
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->x:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_41

    .line 1065
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->y:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1066
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_40

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_3f

    goto :goto_b

    .line 1072
    :cond_3f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1005)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1073
    :cond_40
    :goto_b
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    const/4 v3, 0x0

    .line 1074
    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(I)V

    .line 1075
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->d()V

    return-void

    .line 1079
    :cond_41
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Y:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_49

    .line 1080
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 1081
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1082
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v2, v3, :cond_43

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1083
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1084
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(I)V

    .line 1086
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_42

    const v4, 0x186a0

    .line 1089
    :cond_42
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1090
    :cond_43
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v2, v3, :cond_48

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1093
    :cond_44
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_46

    .line 1094
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const v4, 0xc350

    goto :goto_c

    :cond_45
    const v4, 0x11940

    .line 1100
    :cond_46
    :goto_c
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    if-ne v2, v3, :cond_47

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.23.1"

    invoke-static {v2, v3, v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_47

    .line 1101
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1102
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(I)V

    .line 1103
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda1;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1105
    :cond_47
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda2;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1108
    :cond_48
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1110
    :cond_49
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_4b

    .line 1111
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->k0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1112
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_4a

    .line 1113
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1114
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 1116
    :cond_4a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1008)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1118
    :cond_4b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->r0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_4c

    .line 1119
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 1120
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->s0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1121
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->t0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1122
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 1124
    :cond_4c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1006)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1127
    :cond_4d
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v3

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->x:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v3, v6, :cond_4e

    .line 1128
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1129
    :cond_4e
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Y:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_56

    .line 1133
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 1134
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1135
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v2, v3, :cond_50

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->e:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1136
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1137
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(I)V

    .line 1139
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_4f

    const v4, 0x186a0

    .line 1142
    :cond_4f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda3;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1143
    :cond_50
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    if-ne v2, v3, :cond_55

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->f:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-nez v2, :cond_51

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;->g:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$c;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1146
    :cond_51
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_53

    .line 1147
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    const v4, 0xc350

    goto :goto_d

    :cond_52
    const v4, 0x11940

    .line 1153
    :cond_53
    :goto_d
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    if-ne v2, v3, :cond_54

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.23.1"

    invoke-static {v2, v3, v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_54

    .line 1154
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1155
    invoke-virtual {v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(I)V

    .line 1156
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda4;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1158
    :cond_54
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/m$$ExternalSyntheticLambda5;-><init>(Lcom/stripe/bbpos/bbdevice/ota/m;)V

    int-to-long v3, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1161
    :cond_55
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1163
    :cond_56
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->r0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_58

    .line 1164
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 1165
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->s0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1166
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->G()I

    move-result v2

    if-lez v2, :cond_57

    .line 1167
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1168
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 1170
    :cond_57
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->t0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1171
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 1174
    :cond_58
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1007)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_59
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1177
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "OTA process aborted"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1179
    :cond_5a
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FAILED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1180
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1003)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1183
    :cond_5b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1004)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1184
    :cond_5c
    :goto_e
    iget-object v11, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v11

    sget-object v15, Lcom/stripe/bbpos/bbdevice/ota/b$a;->I:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v11, v15, :cond_5e

    iget-object v11, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v11

    sget-object v15, Lcom/stripe/bbpos/bbdevice/ota/b$a;->v0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v11, v15, :cond_5e

    .line 1185
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1186
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1187
    :cond_5d
    const-string v0, "private-resource-auth-data-getter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1188
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1192
    :cond_5e
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/ota/b$a;->J:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1193
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v8, 0x5e

    invoke-virtual {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 1194
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1195
    invoke-static {v2, v9, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1196
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 1197
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const/4 v3, 0x1

    .line 1198
    invoke-static {v2, v10, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 1199
    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v4, 0x0

    .line 1210
    invoke-static {v2, v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 1212
    const-string v5, "fileName"

    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1213
    const-string v3, "signCode"

    invoke-static {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1214
    const-string v5, "tr31Flk"

    invoke-static {v2, v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1215
    const-string v6, "tr31Fak"

    invoke-static {v2, v6, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1216
    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->z(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->G(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->F(Ljava/lang/String;)V

    .line 1219
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->K:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 1220
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "040100"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1222
    :cond_5f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Server response invalid data"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 1228
    :cond_60
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    return-void

    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v29, v10

    .line 1450
    :goto_f
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/m;->b:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Server response invalid data ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_61
    :goto_10
    return-void
.end method

.method b(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 3

    .line 1
    const-string v0, "[callWebServiceGetOTAKeyTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetOTAKeyTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "keyType"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "sessionToken"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->s(Ljava/lang/String;)V

    .line 9
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->J()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    const-string p2, "ota-key-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method c(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 4

    .line 1
    const-string v0, "[callWebServiceGetResourceAuthData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetResourceAuthData]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "resourceType"

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_1

    .line 9
    const-string v1, "12"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_2

    .line 11
    const-string v1, "FA"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "romId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_2
    :goto_0
    const-string v1, "sessionToken"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->w(Ljava/lang/String;)V

    .line 16
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->Q()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    :catch_0
    const-string p2, "resource-auth-data-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceGetResourceTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetResourceTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "currentVersion"

    const-string v4, "resourceType"

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_1

    .line 10
    const-string v1, "12"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    :cond_1
    :goto_0
    const-string v1, "forceUpdate"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->s0()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    const-string v1, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->x(Ljava/lang/String;)V

    .line 15
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->R()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    :catch_0
    const-string p2, "resource-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method e(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 4

    .line 1
    const-string v0, "[callWebServiceGetTargetVersionListTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetTargetVersionListTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->FIRMWARE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "resourceType"

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    const-string p2, "04"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->CONFIG:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    if-ne v1, v2, :cond_1

    .line 9
    const-string p2, "12"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object p2

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    if-ne p2, v1, :cond_2

    .line 11
    const-string p2, "7F"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :catch_0
    :cond_2
    :goto_0
    const-string p2, "resource-list-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method f(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 2

    .line 1
    const-string v0, "[callWebServiceGetTargetVersionTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceGetTargetVersionTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    const-string p2, "terminal-target-version-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method g(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceMutualAuthChallenge]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceMutualAuthChallenge]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "tmkType"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "challenge"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p(Ljava/lang/String;)V

    .line 9
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->D()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    const-string p2, "mutual-authorization-challenge-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method h(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceMutualAuthConfirm]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceMutualAuthConfirm]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    const-string v1, "sessionToken"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v1, "kcvKek"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->B()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q(Ljava/lang/String;)V

    .line 10
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->E()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    const-string p2, "mutual-authorization-confirmation"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method i(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 4

    .line 1
    const-string v0, "[callWebServicePrivateGetResourceAuthData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServicePrivateGetResourceAuthData]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "resourceType"

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_1

    .line 9
    const-string v1, "12"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_1
    :goto_0
    const-string v1, "sessionToken"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    const-string v1, "resourceHash"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "resourceCMAC"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->b0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF8728"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->b0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DF866F"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->w(Ljava/lang/String;)V

    .line 15
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->Q()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    :catch_0
    const-string p2, "private-resource-auth-data-getter"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method j(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 6

    .line 1
    const-string v0, "[callWebServiceSetTargetVersionTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/m;->b(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowWebServiceCenter] [callWebServiceSetTargetVersionTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->FIRMWARE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "resourceType"

    const-string v4, "version"

    if-ne v1, v2, :cond_0

    .line 7
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->CONFIG:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ""

    if-ne v1, v2, :cond_2

    .line 11
    :try_start_2
    const-string v1, "12"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    if-ne v1, v2, :cond_4

    .line 21
    const-string v1, "7F"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_3
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->W()I

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    const-string v1, "keyProfileID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->W()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    :cond_4
    :goto_0
    const-string v1, "applyToAll"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->w0()Z

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :catch_0
    const-string p2, "terminal-target-versions"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method
