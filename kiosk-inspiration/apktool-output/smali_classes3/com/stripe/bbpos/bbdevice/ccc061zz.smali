.class final Lcom/stripe/bbpos/bbdevice/ccc061zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aaa000:Z = false

.field private static aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field private static aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;


# direct methods
.method public static synthetic $r8$lambda$PZwCVL3en1pVIWVinGqUscBCdk4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t5TsSsqlAIZVpheGNYGL4tsKEBk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    return-void
.end method

.method static declared-synchronized aaa000()V
    .locals 1

    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method static aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 0

    .line 13
    sput-object p0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void
.end method

.method static aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static synthetic aaa000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string p1, "log.txt"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/Temp/com.bbpos.bbdevice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 99
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 102
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static declared-synchronized aaa000(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;Z)V
    .locals 6

    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 16
    sget-boolean v2, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000:Z

    if-eqz v2, :cond_5

    .line 17
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 18
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 21
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    if-ne v3, v4, :cond_0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 23
    :cond_0
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    if-ne v3, v4, :cond_2

    .line 24
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, v3, :cond_1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 26
    :cond_1
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    goto :goto_0

    .line 29
    :cond_2
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa003zz;

    if-ne v3, v4, :cond_4

    .line 30
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, v3, :cond_3

    goto :goto_0

    .line 32
    :cond_3
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, v3, :cond_4

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    :goto_0
    move-object v3, p0

    .line 38
    :goto_1
    const-string v4, "com.bbpos"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001:Landroid/os/Handler;

    if-eqz v4, :cond_5

    .line 42
    new-instance v5, Lcom/stripe/bbpos/bbdevice/ccc061zz$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-nez p3, :cond_c

    .line 63
    sget-object p3, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p3, :cond_c

    .line 64
    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    .line 65
    const-string v2, "date"

    invoke-virtual {p3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, v1, :cond_6

    .line 67
    const-string v1, "type"

    invoke-virtual {p3, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string p2, "["

    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "function"

    invoke-virtual {p3, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p3, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 70
    :cond_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->CALLBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, v1, :cond_7

    .line 71
    const-string v1, "type"

    invoke-virtual {p3, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p2, "["

    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p2, "callback"

    invoke-virtual {p3, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p3, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    :cond_7
    sget-object p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    if-ne p2, p0, :cond_b

    .line 75
    const-string p0, "type"

    invoke-virtual {p3, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 77
    const-string p1, "message="

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_8

    .line 79
    const-string p1, "message="

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_8
    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_9

    .line 82
    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 84
    :cond_9
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_a

    .line 85
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_a
    const-string p1, "message"

    invoke-virtual {p3, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_b
    :goto_2
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p0, p3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized aaa000(ZLcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 4

    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p1, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 7
    :cond_0
    sput-boolean p0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000:Z

    if-eqz p0, :cond_1

    .line 9
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V

    .line 10
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V

    .line 11
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->getApiVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized aaa001(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 15
    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DebugLogType;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa010(Ljava/util/Hashtable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static synthetic aaa001(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string p1, "log.txt"

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/Temp/com.bbpos.bbdevice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 13
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static aaa001()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000:Z

    return v0
.end method

.method static declared-synchronized aaa002(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/stripe/bbpos/bbdevice/ccc061zz;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000:Z

    if-eqz v1, :cond_0

    .line 2
    const-string v1, "com.bbpos"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 10
    new-instance v3, Lcom/stripe/bbpos/bbdevice/ccc061zz$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc061zz$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
