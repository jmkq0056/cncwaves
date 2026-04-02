.class Lcom/stripe/bbpos/bbdevice/ota/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/stripe/bbpos/bbdevice/ota/c;

.field private b:Lcom/stripe/bbpos/bbdevice/ota/u;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 3
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/u;

    invoke-direct {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/u;-><init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->b:Lcom/stripe/bbpos/bbdevice/ota/u;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    const-string v0, "[enterAcquirerMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [enterAcquirerMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8F00"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "[dataReceived] CommandList.RECEIVE_RESPONSE_COMPLETE_PASS_THROUGH_MODE_DATA_COMMAND. passThroughData : "

    .line 25
    iget-object v3, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/c$a;->a:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 30
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 32
    const-string v4, "DF30"

    invoke-static {v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 35
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Device response invalid data"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v7, "OTA process aborted"

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    .line 42
    :try_start_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->v:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 43
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->w:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 44
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->x:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 45
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->y:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 46
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 47
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->A:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 48
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->B:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 49
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->C:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 50
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->D:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 51
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->E:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 52
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->F:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 53
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->G:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 54
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->H:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 55
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 56
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->J:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    .line 57
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/c$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FAILED"

    invoke-virtual {v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_3
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_4
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v5, v8, v0, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 69
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 70
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->b()V

    return-void

    .line 81
    :cond_5
    const-string v6, "0F01"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v9, "05"

    const-string v10, ")"

    const-string v11, ", "

    const-string v12, "OTA Flow invalid state ("

    if-eqz v6, :cond_a

    .line 82
    :try_start_2
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->s:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_6

    .line 83
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_6
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    if-ne v0, v2, :cond_9

    .line 87
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->t:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 88
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 89
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_8

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_8

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_7

    goto :goto_1

    .line 109
    :cond_7
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1001)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_8
    :goto_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v2, 0xbb8

    .line 114
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 115
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 117
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 119
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 121
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    :catch_0
    :try_start_4
    invoke-virtual {v1, v9}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 133
    :cond_9
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1002)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_a
    const-string v6, "0C21"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 137
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->P:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_b

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 138
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v3, :cond_b

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 139
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v3, :cond_b

    .line 140
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    if-ne v0, v2, :cond_10

    .line 145
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    const/16 v3, 0x64

    if-eq v0, v2, :cond_e

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_c

    goto :goto_2

    .line 154
    :cond_c
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_d

    .line 155
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 156
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 159
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1010)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_e
    :goto_2
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->q0()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 161
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 162
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Auth only."

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 166
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->R:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 167
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMPLETED"

    invoke-virtual {v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_10
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_11

    .line 177
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v2

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_11
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_12

    .line 180
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v2

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_12
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1009)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_13
    const-string v6, "0C03"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v13, ""

    if-eqz v6, :cond_1b

    .line 187
    :try_start_5
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->V:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_14

    .line 188
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_14
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->W:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 192
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, v8}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 195
    const-string v0, "D6"

    invoke-static {v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 196
    const-string v2, "DF8664"

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 197
    const-string v4, "DF834F"

    invoke-static {v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v4

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 198
    const-string v6, "DF8665"

    invoke-static {v3, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 199
    const-string v8, "D8"

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 200
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    move-object v0, v13

    .line 203
    :cond_15
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    move-object v2, v13

    .line 206
    :cond_16
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    move-object v4, v13

    .line 209
    :cond_17
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    .line 212
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_3

    :cond_18
    move-object v13, v3

    .line 215
    :goto_3
    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 216
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (2002)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 219
    :cond_19
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 220
    const-string v3, "bootloaderVersion"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v0, "bID"

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v0, "uid"

    invoke-virtual {v2, v0, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Ljava/util/Hashtable;)V

    .line 226
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 227
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_1a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->f:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 232
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/util/Date;)V

    return-void

    .line 233
    :cond_1b
    const-string v6, "0C15"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1d

    .line 234
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->K:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_1c

    .line 235
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_1c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->L:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 239
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 246
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->M:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 247
    invoke-virtual {v5, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(I)V

    .line 248
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->d()V

    return-void

    .line 249
    :cond_1d
    const-string v6, "0C17"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v14, "DE"

    const-string v15, "00"

    if-eqz v6, :cond_20

    .line 250
    :try_start_6
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->M:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_1e

    .line 251
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_1e
    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 255
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 256
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->d()V

    return-void

    .line 258
    :cond_1f
    const-string v0, "DF8322"

    invoke-static {v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 259
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_20
    const-string v6, "0E01"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v8, "DF8666"

    if-eqz v6, :cond_23

    .line 262
    :try_start_7
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v6, :cond_21

    .line 263
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_21
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->v:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 267
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 268
    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 270
    const-string v2, "DF7C"

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 271
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v5, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p(Ljava/lang/String;)V

    .line 273
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->w:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 274
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/t;->c(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 276
    :cond_22
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_23
    const-string v6, "0E03"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 279
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v2

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->y:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v2, v6, :cond_24

    .line 280
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_24
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->z:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 284
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 285
    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 286
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 287
    const-string v2, "DF71"

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 288
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->m(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q(Ljava/lang/String;)V

    .line 290
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->A:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 291
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/stripe/bbpos/bbdevice/ota/t;->d(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 293
    :cond_25
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_26
    const-string v0, "0CE3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 296
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->E:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_27

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/c$a;->G:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v6, :cond_27

    .line 297
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_27
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    if-ne v0, v2, :cond_28

    .line 301
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->F:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 302
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_4

    .line 304
    :cond_28
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->H:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 305
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 308
    :goto_4
    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 309
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 310
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->F:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_29

    .line 311
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->G:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 312
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->g0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "040200"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 313
    :cond_29
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->H:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_2b

    .line 314
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_2a

    .line 315
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->N:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 316
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->Z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000000"

    const-string v4, "FA"

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 320
    :cond_2a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->I:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 321
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    const-string v3, "STARTED"

    invoke-virtual {v0, v2, v5, v3}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_2b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_2c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_2d
    const-string v0, "0CE5"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 331
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->N:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_2e

    .line 332
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_2e
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->O:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 336
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 337
    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 339
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_2f

    .line 340
    const-string v0, "DF856F"

    invoke-static {v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 341
    invoke-virtual {v5, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l(Ljava/lang/String;)V

    .line 342
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->P:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 343
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->b()V

    return-void

    .line 345
    :cond_2f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->P:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 346
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->b()V

    return-void

    .line 349
    :cond_30
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_31
    const-string v0, "4409"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 352
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->T:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_32

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 353
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->j:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v3, :cond_32

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 354
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->q:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v3, :cond_32

    .line 355
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_32
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    if-ne v0, v2, :cond_33

    .line 359
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->U:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 360
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->V:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 361
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c()V

    return-void

    .line 362
    :cond_33
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->j:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_34

    .line 363
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->k:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 364
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 365
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->l:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 366
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    const-string v2, "02"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->g(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_34
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->q:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_3b

    .line 368
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->r:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 369
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    const-wide/16 v2, 0x7d0

    .line 370
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 371
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 372
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 373
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->t0()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 374
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 377
    :cond_35
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->z()Lcom/stripe/bbpos/bbdevice/ota/y$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$a;->d:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    if-ne v0, v2, :cond_36

    .line 378
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->V:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 379
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->c()V

    return-void

    .line 381
    :cond_36
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->u:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 382
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/s;->e(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_37
    const-string v0, "440B"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const-string v6, "Bootloader update error. "

    if-eqz v0, :cond_3a

    .line 386
    :try_start_8
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->l:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v2, :cond_38

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-eq v0, v3, :cond_38

    .line 387
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 390
    :cond_38
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-ne v0, v2, :cond_39

    .line 392
    :try_start_9
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->m:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 393
    invoke-virtual {v5, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->i(I)V

    .line 394
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->n:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 395
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->j0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/b0;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 396
    const-string v2, "DF856D"

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 397
    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/y;->p0()V

    .line 398
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->f(Ljava/lang/String;)V

    .line 399
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->b:Lcom/stripe/bbpos/bbdevice/ota/u;

    invoke-virtual {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/u;->a(Ljava/lang/String;)V

    .line 400
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->b:Lcom/stripe/bbpos/bbdevice/ota/u;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-void

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    .line 402
    :try_start_a
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d(Z)V

    .line 403
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Z)V

    .line 404
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;)V

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Ljava/lang/String;)V

    .line 406
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 407
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/stripe/bbpos/bbdevice/ota/s;->g(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 409
    :cond_39
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c()Lcom/stripe/bbpos/bbdevice/ota/c$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    if-ne v0, v2, :cond_3b

    .line 410
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->p:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 411
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->q:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 412
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    const-string v2, "01070800"

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->d(Ljava/lang/String;)V

    return-void

    .line 414
    :cond_3a
    const-string v0, "440D"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v0, :cond_3b

    .line 416
    :try_start_b
    const-string v0, "DF6C"

    invoke-static {v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 418
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v0

    .line 419
    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->a([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    return-void

    :catch_2
    move-exception v0

    const/4 v2, 0x1

    .line 421
    :try_start_c
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d(Z)V

    .line 422
    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Z)V

    .line 423
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v5, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;)V

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->e(Ljava/lang/String;)V

    .line 425
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 426
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/stripe/bbpos/bbdevice/ota/s;->g(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 430
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_3b
    :goto_5
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    const-string v0, "[setTempKey]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 13
    const-string v0, "[P1000FlowFwDataCenter] [setTempKey]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 14
    const-string v0, "DF74"

    invoke-static {p2, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "DF864A"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v0, "8CE2"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "[setRKEKToCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 6
    const-string v0, "[P1000FlowFwDataCenter] [sendRKEKToCube]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 7
    const-string v0, "DF74"

    invoke-static {p3, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "DF6F"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "DF7D"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string p3, "8E02"

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    const-string p4, "[sendEncryptedFWSignature]"

    invoke-direct {p0, p4}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 19
    const-string p4, "[P1000FlowFwDataCenter] [sendEncryptedFWSignature]"

    invoke-static {p4}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 20
    const-string p4, "DF6A"

    invoke-static {p3, p4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 21
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "DF6E"

    invoke-static {p2, p4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "DF72"

    invoke-static {p1, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string p3, "8CE4"

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p4, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 24
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method a([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 431
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->l0()Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 433
    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 435
    array-length v4, v1

    const/4 v6, 0x3

    if-ge v4, v6, :cond_0

    goto/16 :goto_5

    .line 439
    :cond_0
    aget-byte v4, v1, v5

    const/16 v6, -0x42

    const/4 v7, 0x1

    if-ne v4, v6, :cond_11

    aget-byte v4, v1, v7

    const/16 v6, -0x11

    if-ne v4, v6, :cond_11

    const/4 v4, 0x2

    aget-byte v6, v1, v4

    const/16 v8, -0x13

    if-ne v6, v8, :cond_11

    .line 440
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->j0()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/bbpos/bbdevice/ota/b0;

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 441
    const-string v8, "DF856D"

    invoke-static {v6, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 442
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v6

    .line 443
    array-length v9, v1

    array-length v10, v6

    if-ge v9, v10, :cond_1

    goto/16 :goto_5

    .line 446
    :cond_1
    array-length v9, v6

    .line 447
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v10

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    const/16 v9, 0xa

    .line 450
    :cond_2
    invoke-static {v6, v1, v9}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B[BI)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 451
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 452
    array-length v9, v6

    array-length v10, v1

    array-length v6, v6

    sub-int/2addr v10, v6

    invoke-virtual {v3, v1, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 456
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->p0()V

    .line 457
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    if-eq v1, v7, :cond_3

    .line 458
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->b:Lcom/stripe/bbpos/bbdevice/ota/u;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 460
    :cond_3
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    const/16 v6, 0x9

    const/16 v9, 0x8

    const/16 v10, 0x78

    const/4 v13, 0x7

    const/16 v14, 0x5a

    const/4 v15, 0x6

    const/16 v5, 0x3c

    const/16 v11, 0x1e

    if-ne v1, v4, :cond_4

    .line 461
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1, v12}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_0

    .line 462
    :cond_4
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    if-ne v1, v11, :cond_5

    .line 463
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1, v15}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_0

    .line 464
    :cond_5
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 465
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_0

    .line 466
    :cond_6
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    if-ne v1, v14, :cond_7

    .line 467
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1, v9}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_0

    .line 468
    :cond_7
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v1

    if-ne v1, v10, :cond_8

    .line 469
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    :cond_8
    :goto_0
    const/4 v1, 0x0

    .line 473
    :goto_1
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v12

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->j0()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    if-lt v12, v6, :cond_9

    .line 474
    invoke-virtual {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Z)V

    .line 475
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    const-wide/16 v1, 0x3e8

    .line 478
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :catch_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->o:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 482
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->g(Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 v6, 0xa

    .line 486
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->j0()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v6

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/bbpos/bbdevice/ota/b0;

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 487
    const-string v12, "DF856C"

    invoke-static {v6, v12}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 488
    invoke-static {v6, v8}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v6

    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    move/from16 v16, v7

    const/4 v7, 0x0

    .line 489
    invoke-virtual {v12, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 490
    const-string v7, "01"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    if-lez v1, :cond_b

    const-wide/16 v17, 0x50

    .line 496
    :try_start_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    :catch_1
    :cond_b
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->p0()V

    .line 501
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/stripe/bbpos/bbdevice/ota/s;->f(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v6

    if-ne v6, v11, :cond_d

    .line 503
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v6, v15}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    :cond_c
    :goto_2
    const/16 v7, 0x9

    goto :goto_3

    .line 504
    :cond_d
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v6

    if-ne v6, v5, :cond_e

    .line 505
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v6, v13}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_2

    .line 506
    :cond_e
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v6

    if-ne v6, v14, :cond_f

    .line 507
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v6, v9}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    goto :goto_2

    .line 508
    :cond_f
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v6

    if-ne v6, v10, :cond_c

    .line 509
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v7

    move/from16 v7, v16

    goto/16 :goto_1

    .line 515
    :cond_10
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Invalid data (6001)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    :cond_11
    move/from16 v16, v7

    .line 519
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 520
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    move/from16 v4, v16

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 525
    :goto_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v7, 0x0

    .line 526
    new-array v1, v7, [B

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/s;->a([B)V

    :cond_12
    :goto_5
    return-void
.end method

.method b()V
    .locals 4

    .line 1
    const-string v0, "[exitAcquirerMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [exitAcquirerMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8C20"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .line 5
    const-string v0, "[eraseMemory]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 6
    const-string v0, "[P1000FlowFwDataCenter] [eraseMemory]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 7
    const-string v0, "DF6A"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8C14"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    const-string v0, "[setRKEKToCubeV2]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 11
    const-string v0, "[P1000FlowFwDataCenter] [sendRKEKToCubeV2]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 12
    const-string v0, "DF74"

    invoke-static {p3, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "DF6F"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "DF7D"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8770"

    invoke-static {p5, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF876F"

    invoke-static {p4, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string p3, "8E02"

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4, p4, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {p2}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method c()V
    .locals 4

    .line 1
    const-string v0, "[getDeviceInfoInBootloaderMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [getDeviceInfoInBootloaderMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8C02"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 8

    .line 1
    const-string v0, "[sendNextSegment]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->y()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object v2

    .line 5
    array-length v3, v2

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[sendNextSegment] firmwareIndex : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", encryptedResourceLength : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[P1000FlowFwDataCenter] [sendNextSegment] firmwareIndex : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const-string v4, "FAILED"

    const-string v5, "OTA process aborted"

    if-ge v1, v3, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_1
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 22
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v4

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "DF6A"

    invoke-static {v4, v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "DF69"

    invoke-static {v5, v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sub-int/2addr v3, v1

    const/16 v5, 0x200

    .line 26
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v5, v3, [B

    const/4 v7, 0x0

    .line 27
    invoke-static {v2, v1, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DF6C"

    invoke-static {v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_3

    .line 31
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->b0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "DF8728"

    if-eqz v4, :cond_2

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "00"

    invoke-static {v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->b0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    add-int/2addr v1, v3

    .line 38
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(I)V

    .line 39
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8C16"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 40
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_4
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 43
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/c;->e()Lcom/stripe/bbpos/bbdevice/ota/t;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/t;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v1, v5}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->a(I)V

    .line 53
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/c$a;->N:Lcom/stripe/bbpos/bbdevice/ota/c$a;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/c$a;)V

    .line 54
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 55
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_7

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 58
    :cond_7
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->Z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->a0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->C()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/stripe/bbpos/bbdevice/ota/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .line 59
    const-string v0, "[powerPinReset]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 60
    const-string v0, "[P1000FlowFwDataCenter] [powerPinReset]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "D408"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF6C"

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "[requestChallengeFromCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [requestChallengeFromCube]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 3
    const-string v0, "DF74"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    const-string v1, "8E00"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    .line 5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/g;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "[sendPassThroughData]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [sendPassThroughData]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "D40C"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF6C"

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "[setPassThroughMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/s;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[P1000FlowFwDataCenter] [setPassThroughMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "D40A"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF73"

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/s;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/c;->d(Ljava/lang/String;)V

    return-void
.end method
