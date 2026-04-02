.class Lcom/stripe/bbpos/bbdevice/ota/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/stripe/bbpos/bbdevice/ota/c;

.field private c:Ljava/net/Proxy;


# direct methods
.method public static synthetic $r8$lambda$sFoRXDwOy_lZ8FwiC4J4mONWskU(Lcom/stripe/bbpos/bbdevice/ota/t;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/t;->a:Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1057
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

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 1059
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "M0000"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 1062
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "F"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
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

    .line 1068
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 1069
    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1070
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1073
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 1074
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v7, :cond_2

    .line 1075
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1077
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    .line 1078
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 1086
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

    .line 1095
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

    .line 1096
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 1098
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 1101
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_6

    .line 1102
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result v2

    if-ne p3, v2, :cond_6

    .line 1103
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1104
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1105
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_6

    .line 1106
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    .line 1111
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

    .line 1115
    :cond_7
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v6, :cond_9

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_8

    goto :goto_3

    .line 1120
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

    .line 1129
    :cond_a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 1131
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_c

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->e(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v4, :cond_b

    goto :goto_4

    .line 1136
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

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "[P1000FlowWebServiceCenter] [callWS] responseCode : "

    const-string v5, "[callWS] responseCode : "

    const-string v6, "Bearer:"

    const-string v7, "[callWS] urlConnection.getHeaderFields() : "

    const-string v8, "[callWS] tlsSocketFactory.getSupportedCipherSuites() : "

    const-string v9, "?APIVersion=1"

    const-string v10, "?APIVersion=1"

    const-string v11, "[callWS] tlsSocketFactory.getDefaultCipherSuites() : "

    const-string v12, "[P1000FlowWebServiceCenter] [callWS] url : "

    const-string v13, "[callWS] Thread.currentThread().getId() : "

    const-string v14, "[callWS] url : "

    .line 218
    iget-object v15, v1, Lcom/stripe/bbpos/bbdevice/ota/t;->a:Ljava/lang/Object;

    monitor-enter v15

    move-object/from16 v16, v4

    .line 219
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

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 220
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

    invoke-direct {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 221
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

    .line 223
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid URL"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 225
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 245
    :try_start_1
    new-instance v13, Lcom/stripe/bbpos/bbdevice/ota/a0;

    invoke-direct {v13}, Lcom/stripe/bbpos/bbdevice/ota/a0;-><init>()V

    .line 246
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

    invoke-direct {v1, v11}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 247
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

    invoke-direct {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :catch_0
    :try_start_2
    iget-object v8, v1, Lcom/stripe/bbpos/bbdevice/ota/t;->c:Ljava/net/Proxy;

    if-eqz v8, :cond_1

    .line 254
    new-instance v8, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/t;->c:Ljava/net/Proxy;

    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 258
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

    .line 264
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 265
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 267
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 269
    const-string v8, "status"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    invoke-virtual {v12, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 271
    const-string v8, "GET"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_2
    const-string v8, "terminal-target-versions"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 273
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 274
    const-string v8, "PUT"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_3
    invoke-virtual {v12, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 277
    const-string v8, "POST"

    invoke-virtual {v12, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 281
    :goto_1
    const-string v8, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v12, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v8, "Accept"

    const-string v9, "application/json"

    invoke-virtual {v12, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/t;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 286
    const-string v8, "Authorization"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

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

    .line 298
    invoke-virtual {v12}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 299
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    .line 301
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 302
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 303
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 306
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v12}, Ljava/net/URLConnection;->connect()V

    .line 310
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 312
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

    .line 315
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 317
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 319
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 321
    :cond_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[callWS] response : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[P1000FlowWebServiceCenter] [callWS] response : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 331
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 333
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 335
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 337
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[callWS] response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[P1000FlowWebServiceCenter] [callWS] response : "

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

    .line 342
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[callWS] e2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 343
    const-string v0, ""

    .line 346
    :goto_4
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(ZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    .line 363
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[P1000FlowWebServiceCenter] [callWS] IOException : "

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

    .line 366
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[P1000FlowWebServiceCenter] [callWS] response code: "

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

    .line 371
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

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    .line 372
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[P1000FlowWebServiceCenter] [callWS] SocketTimeoutException : "

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

    .line 375
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[P1000FlowWebServiceCenter] [callWS] response code: "

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

    .line 380
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

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_5

    :catch_6
    move-exception v0

    .line 381
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

    invoke-direct {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[P1000FlowWebServiceCenter] [callWS] MalformedURLException : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 383
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

    invoke-virtual {v1, v4, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 405
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

.method private a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1

    .line 60
    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/t$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/t;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 23
    const-string v0, "checkToken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "resource-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    const-string v0, "mutual-authorization-challenge-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    const-string v0, "mutual-authorization-confirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string v0, "resource-auth-data-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    const-string v0, "private-resource-auth-data-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-string v0, "ota-key-list-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const-string v0, "ota-key-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    const-string v0, "ota-histories"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const-string v0, "terminal-target-version-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    const-string v0, "resource-list-getter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
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


# virtual methods
.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 4

    .line 20
    const-string v0, "[callWebServiceGetResourceAuthData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 21
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServiceGetResourceAuthData]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    :try_start_0
    const-string v1, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "resourceType"

    if-ne v1, v2, :cond_0

    .line 26
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_1

    .line 28
    const-string v1, "12"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_2

    .line 30
    const-string v1, "FA"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "romId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_2
    :goto_0
    const-string v1, "sessionToken"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->w(Ljava/lang/String;)V

    .line 35
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->Q()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :catch_0
    const-string p2, "resource-auth-data-getter"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V
    .locals 5

    const-string v0, "FAILED"

    .line 40
    const-string v1, "[callWebServiceNotifyTMS]"

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 41
    const-string v1, "[P1000FlowWebServiceCenter] [callWebServiceNotifyTMS]"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string v2, "bID"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "resourceType"

    if-ne v2, v3, :cond_0

    .line 46
    :try_start_1
    const-string v2, "04"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_1

    .line 48
    const-string v2, "12"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_2

    .line 50
    const-string v2, "7F"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_2
    :goto_0
    const-string v2, "status"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    :cond_3
    const-string v0, "failedReason"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :catch_0
    :cond_4
    invoke-virtual {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/y;->r(Ljava/lang/String;)V

    .line 59
    const-string p2, "ota-histories"

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/util/Date;)V
    .locals 3

    .line 4
    const-string v0, "[callWebServiceLoginTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 5
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServiceLoginTMS]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :try_start_0
    const-string v1, "vendorId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->m0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "vendorSecret"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string v1, "appId"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v1, "appSecret"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/o;->a(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object p2

    .line 15
    const-string p3, "deviceInfo"

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    const-string p2, "login"

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method declared-synchronized a(Ljava/net/Proxy;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/t;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/t;->c:Ljava/net/Proxy;

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
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "Server response invalid data"

    const-string v6, ", private-resource-auth-data-getter)"

    const-string v7, ", resource-auth-data-getter)"

    const-string v8, ", mutual-authorization-confirmation)"

    const-string v9, ", mutual-authorization-challenge-getter)"

    const-string v10, ", resource-getter)"

    const-string v11, ", login)"

    .line 406
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[onReturnWS] function : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isResponseSuccess : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ",  response : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, ", httpResponseCode : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 407
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v5

    const-string v5, "[P1000FlowWebServiceCenter] [onReturnWS] function : "

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const-string v5, "resultMessage"

    const-string v12, "resultCode"

    const-string v13, ""

    const/4 v14, 0x0

    if-nez v1, :cond_6

    .line 410
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    const-string v2, "Cannot connect to server. ("

    const-string v6, ")"

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->v:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 411
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->w:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 412
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->x:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 413
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->y:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 414
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 415
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->A:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 416
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->B:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 417
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->C:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 418
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->D:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 419
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->E:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 420
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->F:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 421
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->G:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 422
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->H:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 423
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 424
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/c$a;->J:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 425
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez v4, :cond_1

    .line 444
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 446
    :cond_1
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 450
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-static {v1, v12, v14}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-static {v1, v5, v14}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ") ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 455
    :catch_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 456
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 459
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 462
    :cond_5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-static {v1, v12, v14}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v1, v5, v14}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ") ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v7, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 467
    :catch_1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 493
    :cond_6
    :try_start_2
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v15, "OTA process aborted"

    const-string v14, "ota-histories"

    move/from16 p1, v4

    const/4 v4, 0x1

    if-eqz p1, :cond_7

    :try_start_3
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 495
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v4, v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 496
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v3

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 500
    :cond_7
    const-string v4, "login"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 p4, v4

    const-string v4, "05"

    move-object/from16 v17, v6

    const-string v6, "record"

    move-object/from16 v18, v7

    const-string v7, "isoTime"

    move-object/from16 v19, v15

    const-string v15, "unixTimestamp"

    move-object/from16 v20, v14

    const-string v14, "OK"

    move-object/from16 v21, v8

    const-string v8, "0000"

    move-object/from16 v22, v9

    const-string v9, "Server response fail with message: "

    move-object/from16 v23, v10

    const-string v10, "OTA Flow invalid state ("

    if-eqz p4, :cond_17

    .line 501
    :try_start_4
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    move-object/from16 p4, v9

    sget-object v9, Lcom/stripe/bbpos/bbdevice/ota/c$a;->f:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v9, :cond_8

    .line 502
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 505
    :cond_8
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v9, Lcom/stripe/bbpos/bbdevice/ota/c$a;->g:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 506
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 507
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 508
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    .line 510
    invoke-static {v2, v15, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 511
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 512
    invoke-static {v2, v6, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 513
    const-string v5, "bearerToken"

    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_9

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v5, :cond_a

    .line 517
    :cond_9
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 520
    :cond_a
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    if-eq v2, v3, :cond_d

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_b

    goto :goto_1

    .line 601
    :cond_b
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_3d

    .line 602
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 604
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 605
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    return-void

    .line 607
    :cond_c
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->s:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 608
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a()V

    return-void

    .line 609
    :cond_d
    :goto_1
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q0()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 610
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 612
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 613
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    return-void

    .line 615
    :cond_e
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->s:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 616
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a()V

    return-void

    .line 621
    :cond_f
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 622
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->h:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 623
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->b(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 627
    :cond_10
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 629
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q()Ljava/lang/String;

    move-result-object v2

    .line 631
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v3, :cond_11

    .line 634
    :try_start_5
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 636
    :catch_2
    :try_start_6
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v5, "Input hex file can\'t be accessed"

    invoke-virtual {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_2

    .line 639
    :cond_11
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v5, "Input hex file doesn\'t exist"

    invoke-virtual {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 643
    :cond_12
    :goto_2
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 645
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid encHex or encHexFile"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 648
    :cond_13
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 649
    const-string v3, "DF861E"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 650
    const-string v5, "DF8629"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 651
    const-string v6, "DF863E"

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 652
    const-string v7, "DF866D"

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v7

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    const-string v8, "DF866F"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 654
    const-string v9, "DF866E"

    invoke-static {v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v9

    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 655
    const-string v10, "DF8728"

    invoke-static {v2, v10}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v10

    iget-object v10, v10, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 656
    const-string v11, "D6"

    invoke-static {v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v11

    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 657
    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 658
    const-string v12, "B5"

    invoke-static {v2, v12}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    new-instance v12, Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v12, v9}, Ljava/lang/String;-><init>([B)V

    .line 661
    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->y(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->A(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->o(Ljava/lang/String;)V

    .line 664
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->a([B)V

    .line 665
    invoke-virtual {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v1, v12}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(Ljava/lang/String;)V

    .line 667
    invoke-virtual {v1, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->B(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v1, v11}, Lcom/stripe/bbpos/bbdevice/ota/y;->I(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->J(Ljava/lang/String;)V

    .line 671
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 674
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->i0()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 675
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->j:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 676
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    const-string v2, "0001C200"

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 680
    :cond_14
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 682
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 683
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 685
    :cond_15
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->s:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 686
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a()V

    goto/16 :goto_8

    .line 700
    :cond_16
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 702
    :cond_17
    const-string v11, "resource-getter"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 703
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v11, Lcom/stripe/bbpos/bbdevice/ota/c$a;->h:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v11, :cond_18

    .line 704
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 707
    :cond_18
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v10, Lcom/stripe/bbpos/bbdevice/ota/c$a;->i:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v10}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 708
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 709
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 710
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 711
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 712
    invoke-static {v2, v15, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 713
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 714
    invoke-static {v2, v6, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 715
    const-string v5, "requireUpdate"

    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 717
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->s0()Z

    move-result v3

    if-nez v3, :cond_19

    .line 718
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 723
    :cond_19
    const-string v3, "encResourceTlv"

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 725
    const-string v3, "DF861E"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    const-string v5, "DF8629"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 727
    const-string v6, "DF863E"

    invoke-static {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 728
    const-string v7, "DF866D"

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v7

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 729
    const-string v8, "DF866F"

    invoke-static {v2, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v8

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 730
    const-string v9, "DF866E"

    invoke-static {v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v9

    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 731
    const-string v10, "D6"

    invoke-static {v2, v10}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v10

    iget-object v10, v10, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 732
    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 733
    const-string v11, "B5"

    invoke-static {v2, v11}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    new-instance v11, Ljava/lang/String;

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    .line 736
    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->y(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->A(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->o(Ljava/lang/String;)V

    .line 739
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->a([B)V

    .line 740
    invoke-virtual {v1, v8}, Lcom/stripe/bbpos/bbdevice/ota/y;->g(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v1, v11}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v1, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->I(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->J(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 756
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 759
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->i0()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 760
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->j:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 761
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    const-string v2, "0001C200"

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->d(Ljava/lang/String;)V

    return-void

    .line 765
    :cond_1a
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 767
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 768
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    return-void

    .line 770
    :cond_1b
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->s:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 771
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a()V

    return-void

    .line 774
    :cond_1c
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 776
    :cond_1d
    const-string v4, "mutual-authorization-challenge-getter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 777
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->w:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v4, :cond_1e

    .line 778
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 781
    :cond_1e
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->x:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 782
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 783
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 784
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    .line 786
    invoke-static {v2, v15, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 787
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v3, 0x0

    .line 788
    invoke-static {v2, v6, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 789
    const-string v4, "encKek"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 790
    const-string v4, "encR1"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 791
    const-string v4, "sessionToken"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 794
    const-string v5, "tlv"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 795
    const-string v5, "tlv"

    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 797
    const-string v3, "DF876F"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 798
    const-string v5, "DF8770"

    invoke-static {v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v9, v3

    goto :goto_3

    :cond_1f
    move-object v9, v13

    move-object v10, v9

    .line 800
    :goto_3
    invoke-virtual {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/y;->C(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v1, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v1, v10}, Lcom/stripe/bbpos/bbdevice/ota/y;->c(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->D(Ljava/lang/String;)V

    .line 805
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->y:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 806
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 807
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v5

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v5 .. v10}, Lcom/stripe/bbpos/bbdevice/ota/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 809
    :cond_20
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v7, v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 812
    :cond_21
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 814
    :cond_22
    const-string v4, "mutual-authorization-confirmation"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 815
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->A:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v4, :cond_23

    .line 816
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 819
    :cond_23
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->B:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 820
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 821
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 822
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    .line 825
    invoke-static {v2, v15, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 826
    invoke-static {v2, v7, v4}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 827
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_25

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_24

    goto :goto_4

    .line 839
    :cond_24
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_3d

    .line 840
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->X:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 841
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 842
    :cond_25
    :goto_4
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->q0()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 843
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->P:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 844
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->b()V

    return-void

    .line 847
    :cond_26
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->C:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 848
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 849
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 851
    :cond_27
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->e(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 858
    :cond_28
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 860
    :cond_29
    const-string v4, "resource-auth-data-getter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "private-resource-auth-data-getter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto/16 :goto_7

    :cond_2a
    move-object/from16 v4, v20

    .line 894
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 895
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v4, "STARTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v4, ", ota-histories)"

    if-eqz v2, :cond_2c

    .line 896
    :try_start_7
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v6, :cond_2b

    .line 897
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_2b
    const/4 v4, 0x1

    .line 900
    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->f(Z)V

    goto :goto_5

    .line 901
    :cond_2c
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v6, "COMPLETED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 902
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->R:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v6, :cond_2d

    .line 903
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 917
    :cond_2d
    :goto_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 918
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 921
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v2, v3, :cond_30

    .line 922
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->J:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 923
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_2f

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_2e

    goto :goto_6

    .line 928
    :cond_2e
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1005)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 929
    :cond_2f
    :goto_6
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->K:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 930
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v2

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->b(Ljava/lang/String;)V

    return-void

    .line 934
    :cond_30
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->R:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v1, v2, :cond_31

    .line 935
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 936
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->S:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 937
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 939
    :cond_31
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1006)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_32
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v1, v3, :cond_33

    .line 944
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 945
    :cond_33
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->R:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v1, v2, :cond_34

    .line 949
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 950
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->S:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 951
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 953
    :cond_34
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1007)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 954
    :cond_35
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 956
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-object/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 958
    :cond_36
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->F()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 959
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1003)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 962
    :cond_37
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1004)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 963
    :cond_38
    :goto_7
    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    sget-object v11, Lcom/stripe/bbpos/bbdevice/ota/c$a;->C:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v4, v11, :cond_3a

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    sget-object v11, Lcom/stripe/bbpos/bbdevice/ota/c$a;->X:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v4, v11, :cond_3a

    .line 964
    const-string v1, "resource-auth-data-getter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 965
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 966
    :cond_39
    const-string v1, "private-resource-auth-data-getter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 967
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 971
    :cond_3a
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->D:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 972
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 973
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 974
    invoke-static {v2, v12, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-static {v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 976
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    .line 977
    invoke-static {v2, v15, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->e(Lorg/json/JSONObject;Ljava/lang/String;Z)J

    .line 978
    invoke-static {v2, v7, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v5, 0x0

    .line 979
    invoke-static {v2, v6, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->d(Lorg/json/JSONObject;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 981
    const-string v4, "fileName"

    invoke-static {v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    .line 982
    const-string v3, "signCode"

    invoke-static {v2, v3, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 983
    const-string v4, "tr31Flk"

    invoke-static {v2, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 984
    const-string v6, "tr31Fak"

    invoke-static {v2, v6, v5}, Lcom/stripe/bbpos/bbdevice/ota/g0;->f(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/ota/y;->z(Ljava/lang/String;)V

    .line 986
    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->G(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->F(Ljava/lang/String;)V

    .line 988
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->E:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 989
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "040100"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 991
    :cond_3b
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v3, v16

    :try_start_8
    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_3c
    move-object/from16 v3, v16

    .line 994
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    return-void

    :catch_3
    move-object/from16 v3, v16

    .line 1056
    :catch_4
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/t;->b:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_3d
    :goto_8
    return-void
.end method

.method b(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceGetResourceTMS]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServiceGetResourceTMS]"

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
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    const-string v1, "sku1"

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "currentVersion"

    const-string v4, "resourceType"

    if-ne v1, v2, :cond_1

    .line 10
    :try_start_1
    const-string v1, "04"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v1, v2, :cond_2

    .line 13
    const-string v1, "12"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_2
    :goto_0
    const-string v1, "forceUpdate"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->s0()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 17
    const-string v1, "DF8778"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->n()Lcom/stripe/bbpos/bbdevice/ota/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->x(Ljava/lang/String;)V

    .line 18
    const-string v1, "tlv"

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/y;->R()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    :catch_0
    const-string p2, "resource-getter"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method c(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceMutualAuthChallenge]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServiceMutualAuthChallenge]"

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

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method d(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 5

    .line 1
    const-string v0, "[callWebServiceMutualAuthConfirm]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServiceMutualAuthConfirm]"

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

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method e(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V
    .locals 4

    .line 1
    const-string v0, "[callWebServicePrivateGetResourceAuthData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowWebServiceCenter] [callWebServicePrivateGetResourceAuthData]"

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

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method
