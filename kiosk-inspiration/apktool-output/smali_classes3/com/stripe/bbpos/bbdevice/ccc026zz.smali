.class Lcom/stripe/bbpos/bbdevice/ccc026zz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final aaa007:Ljava/lang/Object;


# instance fields
.field private aaa000:Z

.field aaa001:[B

.field aaa002:I

.field private aaa003:I

.field aaa004:Ljava/lang/Thread;

.field private final aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private final aaa006:Lcom/stripe/bbpos/bbdevice/aaa011zz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa007:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>([BILcom/stripe/bbpos/bbdevice/aaa009zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000:Z

    .line 5
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa003:I

    .line 23
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa040:Z

    if-eqz v0, :cond_1

    .line 25
    sget-boolean p2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa041:Z

    if-eqz p2, :cond_0

    const p2, 0x15f90

    goto :goto_0

    :cond_0
    const/16 p2, 0x2328

    .line 30
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    .line 31
    iput p2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa002:I

    .line 32
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 33
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa002:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    const/16 v0, 0xa

    .line 7
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    move v3, v2

    .line 16
    :cond_1
    iget-boolean v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 17
    iget v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa002:I

    div-int/2addr v4, v0

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v3, v5

    if-lt v3, v0, :cond_1

    .line 24
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 28
    iget v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa003:I

    if-lez v3, :cond_4

    move v3, v2

    .line 30
    :cond_3
    iget-boolean v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000:Z

    if-nez v4, :cond_4

    .line 31
    iget v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa003:I

    div-int/2addr v4, v0

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v3, v5

    if-lt v3, v0, :cond_3

    .line 39
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_19

    .line 43
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 45
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_18

    .line 49
    iget-boolean v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa000:Z

    if-nez v3, :cond_16

    .line 50
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-boolean v3, v3, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006:Z

    if-eqz v3, :cond_6

    .line 51
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    if-ge v4, v5, :cond_5

    add-int/2addr v4, v5

    .line 52
    iput v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    .line 53
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    iget v5, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa002:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 54
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    goto/16 :goto_a

    .line 57
    :cond_5
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002(Z)V

    .line 58
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v3, :cond_16

    .line 59
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 60
    :try_start_2
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iput-boolean v5, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 61
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v2

    goto/16 :goto_a

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3

    .line 66
    :cond_6
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare for command retry. (check code - 9054)("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget v4, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    const-wide/16 v6, 0x2710

    if-nez v4, :cond_7

    iget v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    if-ne v3, v5, :cond_7

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v3, v4, :cond_7

    .line 69
    const-string v3, "WSC5X init command failed. Reboot SP. (check code - 9050)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v3, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021(Z)V

    .line 71
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa007:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 73
    :try_start_4
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    goto :goto_1

    .line 76
    :catch_0
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :try_start_6
    const-string v3, "WSC5X init command failed. Rebooted SP and ready for retry again. (check code - 9051)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    goto/16 :goto_6

    .line 78
    :goto_1
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2

    .line 80
    :cond_7
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v4, :cond_8

    iget v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    if-ne v3, v5, :cond_8

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v3, v4, :cond_8

    .line 81
    const-string v3, "WTH1X init command failed. Reboot SP. (check code - 9052)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 82
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa001()V

    .line 83
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa007:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 85
    :try_start_9
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    goto :goto_3

    .line 88
    :catch_1
    :goto_2
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 89
    :try_start_b
    const-string v3, "WTH1X init command failed. Rebooted SP and ready for retry again. (check code - 9053)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_6

    .line 90
    :goto_3
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2

    .line 92
    :cond_8
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v4, :cond_9

    iget v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    if-ne v3, v5, :cond_9

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa003()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v3

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v3, v4, :cond_9

    .line 93
    const-string v3, "SML init command failed. Reboot SP (check code - 9061)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 94
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa001()V

    .line 95
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa007:Ljava/lang/Object;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 97
    :try_start_e
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    goto :goto_5

    .line 100
    :catch_2
    :goto_4
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 101
    :try_start_10
    const-string v3, "SML init command failed. Rebooted SP and ready for retry again (check code - 9062)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_6

    .line 102
    :goto_5
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v2

    .line 105
    :cond_9
    :goto_6
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa033:I

    .line 106
    const-string v3, "Command retry. (check code - 9055)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    iget v5, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa002:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 108
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 109
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    goto/16 :goto_a

    .line 111
    :cond_a
    const-string v3, "All command retries failed. (check code - 9056)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 113
    :try_start_13
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v3, v4, :cond_b

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android battery status (check code - 9098) Battery level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCharging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 118
    :catch_3
    :cond_b
    :try_start_14
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeout data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa001:[B

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 120
    :try_start_15
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iput-boolean v5, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa006:Z

    .line 121
    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa007:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 123
    :try_start_16
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000()V

    .line 124
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v4, :cond_11

    .line 125
    iget-object v2, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v4, :cond_c

    goto/16 :goto_8

    .line 127
    :cond_c
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v4, :cond_d

    goto/16 :goto_8

    .line 128
    :cond_d
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v4, :cond_e

    goto/16 :goto_8

    .line 129
    :cond_e
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v4, :cond_f

    goto/16 :goto_8

    .line 130
    :cond_f
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v2, v4, :cond_10

    goto/16 :goto_8

    .line 133
    :cond_10
    iget-object v2, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v4, "Device no response (error code - 0054)"

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 136
    :cond_11
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa007()Z

    move-result v3

    if-nez v3, :cond_12

    .line 137
    const-string v2, "All command retries failed. Timeout. (check code - 9057)"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v4, "Device no response (error code - 0055)"

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 140
    :cond_12
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa046()V

    .line 141
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa041()I

    move-result v3

    if-ne v3, v5, :cond_14

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All command retries failed. Reset channel. (check code - 9060)("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa011(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All command retries failed. Reset channel. (check code - 9058)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa011()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa011(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)[B

    move-result-object v3

    .line 149
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v6, v4, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v6, v7, :cond_13

    const/16 v6, 0x251c

    goto :goto_7

    :cond_13
    const/16 v6, 0x1b58

    .line 152
    :goto_7
    invoke-virtual {v4, v3, v6, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([BIZ)V

    .line 153
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 154
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001([B)V

    goto :goto_8

    .line 157
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All command retries failed. reset channel failed. (check code - 9059)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa011()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa011(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v4, "Device no response (error code - 0056)"

    invoke-virtual {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 163
    :goto_8
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v3, :cond_15

    .line 164
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 165
    :try_start_17
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iput-boolean v5, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001:Z

    .line 166
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa002:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 167
    monitor-exit v2

    goto :goto_9

    :catchall_4
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v3

    .line 169
    :cond_15
    :goto_9
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 170
    :try_start_19
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 171
    monitor-exit v2

    goto :goto_a

    :catchall_5
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :catchall_6
    move-exception v2

    .line 172
    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw v2

    .line 227
    :cond_16
    :goto_a
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 233
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_1d
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    .line 235
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    if-ne v3, p0, :cond_17

    .line 236
    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    .line 238
    :cond_17
    monitor-exit v2

    goto :goto_b

    :catchall_7
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    throw v0

    .line 239
    :cond_18
    :try_start_1e
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catchall_8
    move-exception v2

    .line 364
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    throw v2

    .line 365
    :cond_19
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 366
    :cond_1a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 367
    :cond_1b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :catchall_9
    move-exception v0

    .line 532
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v2

    .line 533
    :try_start_20
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    .line 534
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    if-ne v4, p0, :cond_1c

    .line 535
    iput-object v1, v3, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    .line 537
    :cond_1c
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 540
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 541
    throw v0

    :catchall_a
    move-exception v0

    .line 542
    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    throw v0

    .line 543
    :catch_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_22
    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa004:Ljava/lang/Thread;

    .line 545
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc026zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v3, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    if-ne v3, p0, :cond_1d

    .line 546
    iput-object v1, v2, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc026zz;

    .line 548
    :cond_1d
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 551
    :goto_b
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    return-void

    :catchall_b
    move-exception v1

    .line 552
    :try_start_23
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    throw v1
.end method
