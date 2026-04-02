.class final Lcom/stripe/bbpos/bbdevice/ota/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/stripe/bbpos/bbdevice/ota/b;


# direct methods
.method public static synthetic $r8$lambda$enJhlH-YBV7oiBME59fRE4cqkUw(Lcom/stripe/bbpos/bbdevice/ota/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    return-void
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->o()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    const-string v0, "[enterAcquirerMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowFwDataCenter] [enterAcquirerMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8C50"

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

    const-string v2, "01"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 37
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v2, v3, :cond_0

    goto/16 :goto_a

    .line 42
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 44
    const-string v3, "DF30"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v3

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 47
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Device response invalid data"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_1
    iget-object v4, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v5, v6, :cond_2

    .line 55
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 56
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 60
    :cond_2
    const-string v5, "0C51"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "COMPLETED"

    const-string v7, "STARTED"

    const/16 v8, 0x8

    const-string v9, ""

    const-string v10, "00"

    const-string v11, ")"

    const-string v12, ", "

    const-string v13, "OTA Flow invalid state ("

    if-eqz v5, :cond_15

    .line 61
    :try_start_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v5, :cond_3

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 62
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->l:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_3

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 63
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->t0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_3

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 64
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->S:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_3

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 65
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_3

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    .line 66
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->W:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_3

    .line 67
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_3
    const-string v0, "DF73"

    invoke-static {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "Failed to change to acquirer mode"

    if-nez v0, :cond_4

    .line 72
    :try_start_2
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 75
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    if-ne v0, v5, :cond_5

    .line 76
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->k:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 77
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 79
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->l:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 80
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/j;->a()V

    return-void

    .line 81
    :cond_5
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->t0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_6

    .line 82
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_6
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->S:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_a

    .line 84
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_9

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_7

    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_8

    .line 89
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 90
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_8
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Y:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 94
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v6}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_9
    :goto_0
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v2, 0x63

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 96
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 97
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_c

    .line 107
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->v0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FAILED"

    invoke-virtual {v0, v2, v4, v3}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "OTA process aborted"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 114
    :cond_c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->W:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_45

    .line 115
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v2, v9}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_d
    const-string v3, "01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 121
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->l:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_13

    .line 122
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->m:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 123
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v8}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 124
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_12

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_e

    goto :goto_2

    .line 128
    :cond_e
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_f

    .line 130
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->j0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 131
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v7}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_f
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_11

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_10

    goto :goto_1

    .line 138
    :cond_10
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1001)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_11
    :goto_1
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->v:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 140
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_12
    :goto_2
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->v:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 142
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_13
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Unknown error (1002)"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_14
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_15
    const-string v5, "0C83"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v14, 0x0

    const-string v15, "DE"

    if-eqz v5, :cond_1a

    .line 165
    :try_start_3
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->v:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v5, :cond_16

    .line 166
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_16
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->w:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 170
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 172
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_18

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_17

    goto :goto_3

    .line 181
    :cond_17
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->x:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 182
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v7}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_18
    :goto_3
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 184
    invoke-virtual {v4, v14}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(I)V

    .line 185
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->d()V

    return-void

    .line 193
    :cond_19
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "Failed to erase memory"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1a
    const-string v5, "0C85"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 196
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/b$a;->z:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v4, :cond_1b

    .line 197
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_1b
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 202
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/j;->d()V

    return-void

    .line 204
    :cond_1c
    const-string v0, "DF8322"

    invoke-static {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 205
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1d
    const-string v5, "0E01"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "DF8666"

    if-eqz v5, :cond_22

    .line 208
    :try_start_4
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v5, v6, :cond_1e

    .line 209
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1e
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->B:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 213
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 214
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 215
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 216
    const-string v3, "DF7C"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 217
    invoke-virtual {v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->d(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->p(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v3, :cond_20

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v3, :cond_1f

    goto :goto_4

    .line 231
    :cond_1f
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->C:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 232
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->g(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 233
    :cond_20
    :goto_4
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/b$a;->D:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 235
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->f0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/i;->a([B[B)[B

    move-result-object v0

    .line 236
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->e0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/i;->a([B[B[B)[B

    move-result-object v0

    .line 237
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->e0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->f0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->i(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/i;->b([B[B)[B

    move-result-object v2

    .line 238
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->C(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->b(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v4, v9}, Lcom/stripe/bbpos/bbdevice/ota/y;->K(Ljava/lang/String;)V

    .line 241
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->E:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 242
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_21
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_22
    const-string v5, "0E03"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 251
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->E:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v5, v6, :cond_23

    .line 252
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_23
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->F:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 256
    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 257
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 258
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 259
    const-string v3, "DF71"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 260
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->m(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->q(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v0, v2, :cond_25

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v2, :cond_24

    goto :goto_5

    .line 273
    :cond_24
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->G:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 274
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Lcom/stripe/bbpos/bbdevice/ota/m;->h(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    return-void

    .line 275
    :cond_25
    :goto_5
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->H:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 276
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->I:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 277
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->J:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 278
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 279
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->z(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->G(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->F(Ljava/lang/String;)V

    .line 282
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->K:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 283
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "040100"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_26
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 291
    :cond_27
    const-string v0, "0CE3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "0"

    const/16 v9, 0x60

    if-eqz v0, :cond_2f

    .line 292
    :try_start_5
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->K:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v6, :cond_28

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v14, Lcom/stripe/bbpos/bbdevice/ota/b$a;->M:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v14, :cond_28

    .line 293
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_28
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    if-ne v0, v6, :cond_29

    .line 297
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->L:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 298
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    goto :goto_6

    .line 300
    :cond_29
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v6, :cond_2a

    .line 301
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->O:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 302
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->Z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "00000000"

    const-string v4, "FA"

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/bbpos/bbdevice/ota/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 305
    :cond_2a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->N:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 306
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 310
    :goto_6
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 311
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 312
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->L:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_2b

    .line 313
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->M:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 314
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->g0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "040200"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_2b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->N:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v2, :cond_2d

    .line 316
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->O:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 317
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 318
    :goto_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_2c

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 321
    :cond_2c
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->a0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->C()Ljava/lang/String;

    move-result-object v6

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/bbpos/bbdevice/ota/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_2d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_2e
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_2f
    const-string v0, "0CD9"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 330
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->p0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v5, :cond_30

    .line 331
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 334
    :cond_30
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ota/b$a;->q0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 335
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v9}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 337
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 338
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 339
    invoke-virtual {v4, v14}, Lcom/stripe/bbpos/bbdevice/ota/y;->h(I)V

    .line 340
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->B0()Lcom/stripe/bbpos/bbdevice/ota/k;

    .line 341
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->G()I

    move-result v0

    if-lez v0, :cond_31

    .line 342
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 343
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_31
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->r0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 346
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->f()Lcom/stripe/bbpos/bbdevice/ota/m;

    move-result-object v0

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v6}, Lcom/stripe/bbpos/bbdevice/ota/m;->a(Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/y;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_32
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_33
    const-string v0, "0CE5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 352
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->O:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v6, :cond_34

    .line 353
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_34
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/ota/b$a;->P:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 357
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v6, 0x61

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 358
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 359
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 360
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v0, v3, :cond_35

    .line 361
    const-string v0, "DF856F"

    invoke-static {v2, v0}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 362
    invoke-virtual {v4, v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->l(Ljava/lang/String;)V

    .line 363
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->S:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 364
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 366
    :cond_35
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Q:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 367
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v8, :cond_36

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 371
    :cond_36
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 374
    :cond_37
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 376
    :cond_38
    const-string v0, "0CF3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 377
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/b$a;->Q:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v4, :cond_39

    .line 378
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 381
    :cond_39
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/b$a;->R:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 382
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v4, 0x62

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 383
    invoke-static {v2, v15}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 385
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->S:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 386
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 388
    :cond_3a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v2, v7}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v2

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 390
    :cond_3b
    const-string v0, "4CE9"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 391
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 393
    :cond_3c
    const-string v0, "4CEB"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 394
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_3d
    const-string v0, "4CF7"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 397
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_3e
    const-string v0, "4CED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 400
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_3f
    const-string v0, "4409"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 403
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v2, :cond_40

    .line 404
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_40
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 408
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/b;->k:Landroid/os/Handler;

    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/j$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/stripe/bbpos/bbdevice/ota/j$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ota/j;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 410
    :cond_41
    const-string v0, "440B"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_a

    .line 411
    :cond_42
    const-string v0, "440D"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 414
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq v2, v3, :cond_44

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/y;->H()Lcom/stripe/bbpos/bbdevice/ota/y$b;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne v2, v3, :cond_43

    goto :goto_9

    .line 417
    :cond_43
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    goto :goto_a

    .line 418
    :cond_44
    :goto_9
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    :cond_45
    :goto_a
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 21
    const-string v0, "[completeOTA]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 22
    const-string v0, "[CubeFlowFwDataCenter] [completeOTA]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8CF2"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF6A"

    invoke-static {v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "DF6E"

    invoke-static {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 28
    const-string v0, "[injectKeyTR31]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 29
    const-string v0, "[CubeFlowFwDataCenter] [injectKeyTR31]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8CD8"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF74"

    invoke-static {v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "DF864A"

    invoke-static {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8725"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8675"

    const-string p3, "AB"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 7
    const-string v0, "[sendEncryptedFWSignature]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 8
    const-string v0, "[CubeFlowFwDataCenter] [sendEncryptedFWSignature]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DF2F"

    const-string v3, "8CE4"

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DF6A"

    invoke-static {v2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "DF6E"

    invoke-static {v0, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "DF72"

    invoke-static {p3, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 14
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8629"

    invoke-static {p2, p4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p5, :cond_1

    .line 17
    invoke-virtual {p5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF863E"

    invoke-static {p2, p5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    :cond_1
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method b()V
    .locals 3

    .line 1
    const-string v0, "[exitAcquirerMode]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowFwDataCenter] [exitAcquirerMode]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8C50"

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

    const-string v2, "00"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .line 7
    const-string v0, "[eraseMemory]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 8
    const-string v0, "[CubeFlowFwDataCenter] [eraseMemory]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8C82"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF6B"

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 38
    const-string v0, "[setTempKey]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 39
    const-string v0, "[CubeFlowFwDataCenter] [setTempKey]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8CE2"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF74"

    invoke-static {v1, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "DF864A"

    invoke-static {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 18
    const-string v0, "[sendRKEKToCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 19
    const-string v0, "[CubeFlowFwDataCenter] [sendRKEKToCube]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8E02"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF74"

    invoke-static {v1, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "DF7D"

    invoke-static {v0, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "DF6F"

    invoke-static {p3, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8675"

    const-string p3, "AB"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 27
    const-string v0, "[sendRKEKToCubeV2]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 28
    const-string v0, "[CubeFlowFwDataCenter] [sendRKEKToCubeV2]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8E02"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DF74"

    invoke-static {v1, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "DF7D"

    invoke-static {v0, p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "DF6F"

    invoke-static {p3, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8770"

    invoke-static {p2, p5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF876F"

    invoke-static {p2, p4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "DF8675"

    const-string p3, "AB"

    invoke-static {p2, p3}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->e()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->y()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->r()[B

    move-result-object v2

    .line 4
    array-length v3, v2

    .line 5
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

    invoke-direct {p0, v4}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[CubeFlowFwDataCenter] [sendNextSegment] firmwareIndex : "

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

    if-ge v1, v3, :cond_5

    .line 9
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "DF2F"

    const-string v7, "8C84"

    invoke-static {v6, v7}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->S()Ljava/lang/String;

    move-result-object v6

    .line 20
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    const-string v9, "0"

    if-ge v7, v8, :cond_1

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 23
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "DF6B"

    invoke-static {v7, v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 26
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_2

    .line 27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 29
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DF69"

    invoke-static {v7, v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sub-int/2addr v3, v1

    const/16 v6, 0x200

    .line 31
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v6, v3, [B

    const/4 v7, 0x0

    .line 32
    invoke-static {v2, v1, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ota/f0;->a([B)Ljava/lang/String;

    move-result-object v4

    const-string v6, "DF6C"

    invoke-static {v6, v4}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_4

    .line 36
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->b0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "DF8728"

    if-eqz v4, :cond_3

    .line 37
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

    goto :goto_2

    .line 39
    :cond_3
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

    :cond_4
    :goto_2
    add-int/2addr v1, v3

    .line 43
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(I)V

    .line 45
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void

    .line 47
    :cond_5
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->x0()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->U:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 49
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->b()Lcom/stripe/bbpos/bbdevice/ota/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->b()V

    return-void

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(I)V

    .line 53
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->A:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->a(Lcom/stripe/bbpos/bbdevice/ota/b$a;)V

    .line 54
    const-string v0, "05"

    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->e(Ljava/lang/String;)V

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .line 55
    const-string v0, "[powerPinReset]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 56
    const-string v0, "[CubeFlowFwDataCenter] [powerPinReset]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 58
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

    .line 59
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

    .line 60
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "[requestChallengeFromCube]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/j;->c(Ljava/lang/String;)V

    .line 2
    const-string v0, "[CubeFlowFwDataCenter] [requestChallengeFromCube]"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DF2F"

    const-string v2, "8E00"

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

    const-string v1, "DF74"

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "DF8675"

    const-string v1, "AB"

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/j;->a:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Ljava/lang/String;)V

    return-void
.end method
