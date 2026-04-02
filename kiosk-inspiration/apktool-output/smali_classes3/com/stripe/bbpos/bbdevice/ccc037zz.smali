.class Lcom/stripe/bbpos/bbdevice/ccc037zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Landroid/stripe/bbpos/CustServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "custservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/stripe/bbpos/CustServiceManager;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 11

    .line 2
    const-string v0, "/sys/devices/platform/soc/4c80000.qcom,qup_uart/enable"

    const-string v1, "/sys/devices/platform/soc/4c80000.qcom,qup_uart/reset"

    const-string v2, ")"

    const-string v3, "Prepare reboot SP (check code - 9095)"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 4
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 9
    :try_start_0
    const-string v5, "Reset SP Step 0 (check code - 9089)"

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_1

    .line 12
    :try_start_1
    const-string v6, "Reboot SP Step 0 (check code - 9090)"

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    move v5, v4

    .line 16
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set WTH1X power or reset pin exception during reboot SP. (check code - 9075)("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-wide/16 v6, 0x1f4

    .line 19
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    .line 21
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sleep interrupt exception during reboot WTH. (check code - 9076)("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_2
    if-eqz v5, :cond_2

    .line 27
    :try_start_3
    const-string v8, "Reset SP Step 1 (check code - 9091)"

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z

    goto :goto_3

    .line 30
    :cond_2
    const-string v8, "Reboot SP Step 1 (check code - 9092)"

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v8

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Set WTH1X power or reset pin exception during reboot SP. (check code - 9077)("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 37
    :goto_3
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v8

    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sleep interrupt exception during reboot WTH. (check code - 9078)("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_4
    if-eqz v5, :cond_3

    .line 45
    :try_start_5
    const-string v0, "Reset SP Step 2 (check code - 9093)"

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z

    goto :goto_5

    .line 48
    :cond_3
    const-string v1, "Reboot SP Step 2 (check code - 9094)"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000(Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Set WTH1X power or reset pin exception during reboot SP. (check code - 9079)("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 55
    :goto_5
    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sleep interrupt exception during reboot WTH. (check code - 9080)("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :cond_4
    :goto_6
    return-void
.end method

.method aaa000(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    invoke-virtual {v0, p1, p2}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method aaa001()V
    .locals 4

    .line 1
    const-string v0, ")"

    const-string v1, "Prepare reboot SP to application mode (check code - 9097)"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 3
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    const-string v2, "/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set WTH1X bootloader/wakeup pin exception during reboot. (check code - 9083)("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 10
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reboot WTH1X exception. (check code - 9084)("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method aaa002()V
    .locals 7

    const-string v0, ")"

    const-string v1, "/sys/devices/platform/soc/4c80000.qcom,qup_uart/wakeup"

    const/4 v2, 0x1

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    invoke-virtual {v3, v1, v2}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9085)("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    .line 6
    :try_start_1
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    invoke-virtual {v4, v1, v3}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9086)("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 11
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    invoke-virtual {v4, v1, v2}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9087)("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 16
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc037zz;->aaa000:Landroid/stripe/bbpos/CustServiceManager;

    invoke-virtual {v2, v1, v3}, Landroid/stripe/bbpos/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set WTH1X booloader/wakeup pin exception during wakeup. (check code - 9088)("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
