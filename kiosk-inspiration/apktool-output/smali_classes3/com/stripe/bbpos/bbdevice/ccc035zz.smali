.class Lcom/stripe/bbpos/bbdevice/ccc035zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;
    }
.end annotation


# instance fields
.field private aaa000:Landroid/app/CustServiceManager;


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
    const-string v0, "[BB01_Utils_WisePOS7]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    .line 3
    const-string v0, "custservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/CustServiceManager;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    return-void
.end method

.method private aaa000(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method aaa000()Ljava/lang/String;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    const-string v1, "/sys/bus/platform/drivers/CUSTDriver/EINT2"

    invoke-virtual {v0, v1}, Landroid/app/CustServiceManager;->readSysFileStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[readMcuWakeUpBbPinStatus] status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    return-object v0
.end method

.method aaa000(I)V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[writeBbWakeUpMcu] input : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    const-string v1, "/sys/bus/platform/drivers/CUSTDriver/GPIO5_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;)V
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SwitchUart] type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa000zz;->aaa000:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Z)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa001(Z)V

    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Z)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa001(Z)V

    return-void

    .line 26
    :cond_2
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Z)V

    return-void
.end method

.method aaa000(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setMcuPowerSupplyOn] on : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    const-string v0, "/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME"

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "[setMcuPowerSupplyOn] MCU_SWITCH_FILE : 1"

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    return-void

    .line 8
    :cond_0
    const-string p1, "[setMcuPowerSupplyOn] MCU_SWITCH_FILE : 0"

    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    return-void
.end method

.method aaa001(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setScanPowerSupplyOn] on : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Ljava/lang/String;)V

    const-string v0, "/sys/bus/platform/drivers/CUSTDriver/GPIO3_NAME"

    const-string v1, "/sys/bus/platform/drivers/CUSTDriver/GPIO2_NAME"

    const-string v2, "/sys/bus/platform/drivers/CUSTDriver/GPIO1_NAME"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v2, v3}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    .line 5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v1, v4}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    .line 6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v0, v4}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v2, v4}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v1, v3}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    .line 11
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000:Landroid/app/CustServiceManager;

    invoke-virtual {p1, v0, v3}, Landroid/app/CustServiceManager;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    return-void
.end method
