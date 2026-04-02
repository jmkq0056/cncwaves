.class public Landroid/stripe/bbpos/LockScreenManager;
.super Ljava/lang/Object;
.source "LockScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;
    }
.end annotation


# instance fields
.field private mLockScreenService:Landroid/os/ILockScreenService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string p1, "LOCK_SCREEN_SERVICE"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ILockScreenService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ILockScreenService;

    move-result-object p1

    iput-object p1, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    return-void
.end method


# virtual methods
.method public checkPassword([B)[B
    .locals 1

    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    invoke-interface {v0, p1}, Landroid/os/ILockScreenService;->checkPassword([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method public clearLockScreenPins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Landroid/stripe/bbpos/LockScreenManager;->clearLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    return-void
.end method

.method public clearLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;",
            ")V"
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    new-instance v1, Landroid/stripe/bbpos/LockScreenManager$4;

    invoke-direct {v1, p0, p2}, Landroid/stripe/bbpos/LockScreenManager$4;-><init>(Landroid/stripe/bbpos/LockScreenManager;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/ILockScreenService;->clearLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/ILockScreenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public getLastPinWithTimestamp()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    invoke-interface {v0}, Landroid/os/ILockScreenService;->getLastPinWithTimestamp()Landroid/stripe/os/LastPinInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, v0, Landroid/stripe/os/LastPinInfo;->pin:Ljava/lang/String;

    iget-wide v2, v0, Landroid/stripe/os/LastPinInfo;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerUnLockPinListener(Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    new-instance v1, Landroid/stripe/bbpos/LockScreenManager$1;

    invoke-direct {v1, p0, p1}, Landroid/stripe/bbpos/LockScreenManager$1;-><init>(Landroid/stripe/bbpos/LockScreenManager;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    invoke-interface {v0, v1}, Landroid/os/ILockScreenService;->registerUnLockPinListener(Landroid/stripe/bbpos/ILockScreenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public removeLockScreen()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Landroid/stripe/bbpos/LockScreenManager;->removeLockScreen(Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    return-void
.end method

.method public removeLockScreen(Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V
    .locals 2

    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    new-instance v1, Landroid/stripe/bbpos/LockScreenManager$5;

    invoke-direct {v1, p0, p1}, Landroid/stripe/bbpos/LockScreenManager$5;-><init>(Landroid/stripe/bbpos/LockScreenManager;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    invoke-interface {v0, v1}, Landroid/os/ILockScreenService;->removeLockScreen(Landroid/stripe/bbpos/ILockScreenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setLastUnLockPin(Ljava/lang/String;)V
    .locals 1

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    invoke-interface {v0, p1}, Landroid/os/ILockScreenService;->setLastUnLockPin(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setLockScreenPins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/stripe/bbpos/LockScreenManager;->setLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    return-void
.end method

.method public setLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;",
            ")V"
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    new-instance v1, Landroid/stripe/bbpos/LockScreenManager$2;

    invoke-direct {v1, p0, p2}, Landroid/stripe/bbpos/LockScreenManager$2;-><init>(Landroid/stripe/bbpos/LockScreenManager;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/ILockScreenService;->setLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/ILockScreenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public updateLockScreenPins(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Landroid/stripe/bbpos/LockScreenManager;->updateLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    return-void
.end method

.method public updateLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;",
            ")V"
        }
    .end annotation

    .line 62
    :try_start_0
    iget-object v0, p0, Landroid/stripe/bbpos/LockScreenManager;->mLockScreenService:Landroid/os/ILockScreenService;

    new-instance v1, Landroid/stripe/bbpos/LockScreenManager$3;

    invoke-direct {v1, p0, p2}, Landroid/stripe/bbpos/LockScreenManager$3;-><init>(Landroid/stripe/bbpos/LockScreenManager;Landroid/stripe/bbpos/LockScreenManager$LockScreenResultListener;)V

    invoke-interface {v0, p1, v1}, Landroid/os/ILockScreenService;->updateLockScreenPins(Ljava/util/List;Landroid/stripe/bbpos/ILockScreenCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
