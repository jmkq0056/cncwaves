.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "SetupIntentJackRabbitApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&JH\u0010\u000c\u001a\u00020\r2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H&J\u001c\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0008\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006 \u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;",
        "",
        "cancelConfirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;",
        "cancelSetupIntent",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;",
        "id",
        "",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "cancelSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;",
        "collectSetupIntentPaymentMethod",
        "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;",
        "enableCustomerCancellation",
        "",
        "manualEntry",
        "offlineDetails",
        "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;",
        "offlineBehavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "allowRedisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "setupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;",
        "createSetupIntent",
        "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "terminal-requestfactories"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cancelConfirmSetupIntent()Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;
.end method

.method public abstract cancelSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;
.end method

.method public abstract cancelSetupIntentPaymentMethod()Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;
.end method

.method public abstract collectSetupIntentPaymentMethod(Ljava/lang/String;ZZLcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lcom/stripe/proto/model/rest/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;
.end method

.method public abstract confirmSetupIntent(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;
.end method

.method public abstract createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;
.end method
