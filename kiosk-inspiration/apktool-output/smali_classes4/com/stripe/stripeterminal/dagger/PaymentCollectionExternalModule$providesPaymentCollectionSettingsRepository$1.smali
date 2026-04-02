.class public final Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;
.super Ljava/lang/Object;
.source "PaymentCollectionExternalModule.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/SettingsRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;->providesPaymentCollectionSettingsRepository(Lcom/stripe/core/transaction/SettingsRepository;)Lcom/stripe/paymentcollection/SettingsRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1",
        "Lcom/stripe/paymentcollection/SettingsRepository;",
        "magstripeConfig",
        "Lcom/stripe/proto/model/config/MagstripeConfig;",
        "getMagstripeConfig",
        "()Lcom/stripe/proto/model/config/MagstripeConfig;",
        "settings",
        "Lcom/stripe/transaction/Settings;",
        "getSettings",
        "()Lcom/stripe/transaction/Settings;",
        "tippingConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "getTippingConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coreSettingsRepository:Lcom/stripe/core/transaction/SettingsRepository;


# direct methods
.method constructor <init>(Lcom/stripe/core/transaction/SettingsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;->$coreSettingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;->$coreSettingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getMagstripeConfig()Lcom/stripe/proto/model/config/MagstripeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;->$coreSettingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    return-object v0
.end method

.method public getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionSettingsRepository$1;->$coreSettingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    return-object v0
.end method
