.class public Landroid/stripe/bbpos/CustServiceManager;
.super Ljava/lang/Object;
.source "CustServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustServiceManager"


# instance fields
.field private mCustService:Landroid/os/ICustService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string p1, "custservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ICustService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustService;

    move-result-object p1

    iput-object p1, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    return-void
.end method

.method private getCustService()Landroid/os/ICustService;
    .locals 1

    .line 509
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    if-nez v0, :cond_0

    .line 510
    const-string v0, "custservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ICustService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustService;

    move-result-object v0

    iput-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    .line 512
    :cond_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    return-object v0
.end method


# virtual methods
.method public applySystemUpdatePayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 7

    .line 544
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/ICustService;->applySystemUpdatePayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 546
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public backupApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->backupApp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 147
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bindSystemUpdateCallback(Landroid/stripe/bbpos/ISystemUpdateCallback;)V
    .locals 2

    .line 526
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->bindSystemUpdateCallback(Landroid/stripe/bbpos/ISystemUpdateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 528
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bootupHideNavigationBar()V
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->bootupHideNavigationBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 202
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bootupHideStatusBar()V
    .locals 3

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->bootupHideStatusBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 230
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bootupShowNavigationBar()V
    .locals 3

    .line 191
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->bootupShowNavigationBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 193
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bootupShowStatusBar()V
    .locals 3

    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->bootupShowStatusBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 221
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public clearBugreportFiles()V
    .locals 3

    .line 643
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->clearBugreportFiles()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 645
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 2

    .line 387
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->clearDeviceOwnerApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 389
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public clearStartupApp()V
    .locals 3

    .line 434
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->clearStartupApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 436
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public enablePowerKey(Z)V
    .locals 2

    .line 463
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->enablePowerKey(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 465
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public factoryReset()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->factoryReset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 138
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public generateDeviceReport(Ljava/lang/String;Landroid/stripe/bbpos/IBbposResultCallback;)V
    .locals 1

    .line 634
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->generateDeviceReport(Ljava/lang/String;Landroid/stripe/bbpos/IBbposResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 636
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public getAllowedSettingIntentPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 690
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getAllowedSettingIntentPackages()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 692
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 127
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->getApkInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAutoCorrectionEnabled()Z
    .locals 3

    .line 738
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->getAutoCorrectionEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 740
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCradleMode()I
    .locals 3

    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getCradleMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 416
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getCradleState()Z
    .locals 3

    .line 395
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getCradleState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 397
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getGSensorWakeup()Z
    .locals 3

    .line 720
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->getGSensorWakeup()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 722
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getHiddenAppList()Ljava/lang/String;
    .locals 3

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getHiddenAppList()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 156
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledCerts()[Ljava/lang/String;
    .locals 3

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getInstalledCerts()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 349
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalledCertsMap()Landroid/stripe/os/BbposMap;
    .locals 3

    .line 357
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getInstalledCertsMap()Landroid/stripe/os/BbposMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreinstallAppsConfig()Ljava/lang/String;
    .locals 3

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getPreinstallAppsConfig()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 80
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 312
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecoveryLastInstallFileData()Ljava/lang/String;
    .locals 3

    .line 50
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getRecoveryLastInstallFileData()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 52
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRndisStatus()I
    .locals 3

    .line 594
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->getRndisStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 596
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public getTlsCerts()[Ljava/lang/String;
    .locals 3

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getTlsCerts()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 501
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchScreenWakeup()Z
    .locals 3

    .line 759
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->getTouchScreenWakeup()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 761
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getUSBDevicePort(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 652
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->getUSBDevicePort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 654
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVibrationEnabled()Z
    .locals 3

    .line 671
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->getVibrationEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 673
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public hideStatusBarAndNavBar()V
    .locals 3

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->hideStatusBarAndNavBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 184
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public initSystemUpdate()V
    .locals 3

    .line 517
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->initSystemUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 519
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public installCertFromBytes([BILjava/lang/String;)V
    .locals 1

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ICustService;->installCertFromBytes([BILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 322
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public installCertFromFilePath(Ljava/lang/String;)V
    .locals 2

    .line 329
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->installCertFromFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 331
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public installTlsCertFromBytes([BILjava/lang/String;)V
    .locals 1

    .line 472
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ICustService;->installTlsCertFromBytes([BILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 474
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public installTlsCertFromFilePath(Ljava/lang/String;)V
    .locals 2

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->installTlsCertFromFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 483
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public isBootupHideNavigationBar()Z
    .locals 3

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->isBootupHideNavigationBar()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 211
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isBootupHideStatusBar()Z
    .locals 3

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->isBootupHideStatusBar()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 239
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 2

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 380
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public isDeviceReporterRunning()Z
    .locals 3

    .line 624
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->isDeviceReporterRunning()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 626
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isPackageNameExistInPreinstallList(Ljava/lang/String;)Z
    .locals 2

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->isPackageNameExistInPreinstallList(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 99
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public readSysFileStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 443
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->readSysFileStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 445
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public readSysFileStatusInt(Ljava/lang/String;)I
    .locals 2

    .line 553
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->readSysFileStatusInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 555
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x2

    return p1
.end method

.method public removeCert(Ljava/lang/String;)V
    .locals 2

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->removeCert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 340
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public removeFactoryTarget(Ljava/lang/String;)Landroid/stripe/os/BbposResult;
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->removeFactoryTarget(Ljava/lang/String;)Landroid/stripe/os/BbposResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 119
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    new-instance p1, Landroid/stripe/os/BbposResult;

    const/16 v0, -0x64

    const-string v1, "binder ipc failed."

    invoke-direct {p1, v0, v1}, Landroid/stripe/os/BbposResult;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public removeTlsCert(Ljava/lang/String;)V
    .locals 2

    .line 490
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->removeTlsCert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 492
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public saveHiddenAppsList(Ljava/lang/String;)V
    .locals 2

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->saveHiddenAppList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 166
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public savePreinstallAppsConfig(Ljava/lang/String;)V
    .locals 2

    .line 88
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->savePreinstallAppsConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public saveShellCommandFormFileBytes([BI)V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->saveShellCommandFormFileBytes([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public saveShellCommandFormFilePath(Ljava/lang/String;)V
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->saveShellCommandFormFilePath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public saveShellCommandInit()V
    .locals 3

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->saveShellCommandInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setAllowedSettingIntentPackages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 681
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setAllowedSettingIntentPackages(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 683
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setAutoCorrectionEnabled(Z)V
    .locals 2

    .line 730
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setAutoCorrectionEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 732
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setBootAnimation(Ljava/lang/String;)V
    .locals 2

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setBootAnimation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 267
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setBootLogo(Ljava/lang/String;)V
    .locals 2

    .line 274
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setBootLogo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 276
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setCradleMode(I)V
    .locals 2

    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setCradleMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 407
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDefaultBootAnimationAndLogo()V
    .locals 3

    .line 700
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->setDefaultBootAnimationAndLogo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 702
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)I
    .locals 2

    .line 574
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setDeviceName(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 576
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public setDeviceOwner(Landroid/content/ComponentName;)Z
    .locals 2

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setDeviceOwner(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 370
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setFactoryTarget(Ljava/lang/String;Ljava/lang/String;)Landroid/stripe/os/BbposResult;
    .locals 1

    .line 107
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->setFactoryTarget(Ljava/lang/String;Ljava/lang/String;)Landroid/stripe/os/BbposResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 109
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    new-instance p1, Landroid/stripe/os/BbposResult;

    const/16 p2, -0x64

    const-string v0, "binder ipc failed."

    invoke-direct {p1, p2, v0}, Landroid/stripe/os/BbposResult;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public setGSensorWakeup(Z)I
    .locals 2

    .line 710
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setGSensorWakeup(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 712
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 303
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setRndis(Z)I
    .locals 2

    .line 584
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setRndis(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 586
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public setStartupApp(Landroid/content/ComponentName;)Z
    .locals 2

    .line 424
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setStartupApp(Landroid/content/ComponentName;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 426
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setTimeZone(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 175
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setTouchScreenWakeup(Z)I
    .locals 2

    .line 749
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setTouchScreenWakeup(Z)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 751
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public setVibrationEnabled(Z)V
    .locals 2

    .line 662
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/ICustService;->setVibrationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 664
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public showStatusBarAndNavBar()V
    .locals 3

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0}, Landroid/os/ICustService;->showStatusBarAndNavBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 258
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public startDeviceReporter()Z
    .locals 3

    .line 604
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->startDeviceReporter()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 606
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public startOSUpdate(Ljava/lang/String;Z)V
    .locals 1

    .line 283
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->startOSUpdate(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 285
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public startOSUpdateCallback(Ljava/lang/String;ZLandroid/stripe/os/BbposRemoteCallback;)V
    .locals 1

    .line 292
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/ICustService;->startOSUpdateCallback(Ljava/lang/String;ZLandroid/stripe/os/BbposRemoteCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 294
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public stopDeviceReporter()Z
    .locals 3

    .line 614
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->stopDeviceReporter()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 616
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public unbindSystemUpdateCallback()V
    .locals 3

    .line 535
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/ICustService;->unbindSystemUpdateCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 537
    const-string v1, "CustServiceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public uninstallApp(Ljava/lang/String;)V
    .locals 2

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1}, Landroid/os/ICustService;->uninstallApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 249
    const-string v0, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public writeSysFileStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 453
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->writeSysFileStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 455
    const-string p2, "CustServiceManager"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public writeSysFileStatusInt(Ljava/lang/String;I)Z
    .locals 1

    .line 564
    :try_start_0
    invoke-direct {p0}, Landroid/stripe/bbpos/CustServiceManager;->getCustService()Landroid/os/ICustService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/ICustService;->writeSysFileStatusInt(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 566
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/stripe/bbpos/CustServiceManager;->mCustService:Landroid/os/ICustService;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "zxw1231312313132131312"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
