.class public interface abstract Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;
.super Ljava/lang/Object;
.source "TerminalInternalApi.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J*\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J2\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0006\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u0018H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001bH&J \u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH&J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00160 H&J\u0010\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\"H&J\u001c\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0$0\"2\u0006\u0010&\u001a\u00020\u001bH&J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00050$H&J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010)\u001a\u00020\u0016H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001bH&J\u001a\u0010+\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u001b2\u0008\u0010-\u001a\u0004\u0018\u00010.H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001bH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u00060\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalInternalApi;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalApi;",
        "activateReader",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;",
        "activateReaderCallback",
        "Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;",
        "collectPaymentMethodWithExplicitAllowRedisplay",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "collectSetupIntentPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "customerConsentCollected",
        "",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "completePaymentIntentActionRequired",
        "paymentIntentId",
        "",
        "connectEmbeddedReader",
        "connectionCallback",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        "getHasSessionTokenFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getOfflineActiveAccount",
        "Lkotlinx/coroutines/flow/Flow;",
        "getOfflineData",
        "",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
        "accountId",
        "getOfflineReaders",
        "handleNextActions",
        "hasSessionToken",
        "restoreSoftDeletedPayments",
        "saveOfflineConfigForInternetReader",
        "locationId",
        "offlineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;",
        "setActiveAccount",
        "terminalsession_release"
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
.method public abstract activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/activation/ActivateReaderCallback;)V
.end method

.method public abstract collectPaymentMethodWithExplicitAllowRedisplay(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract completePaymentIntentActionRequired(Ljava/lang/String;)V
.end method

.method public abstract connectEmbeddedReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
.end method

.method public abstract getHasSessionTokenFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfflineActiveAccount()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfflineData(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getOfflineReaders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleNextActions(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
.end method

.method public abstract hasSessionToken()Z
.end method

.method public abstract restoreSoftDeletedPayments(Ljava/lang/String;)V
.end method

.method public abstract saveOfflineConfigForInternetReader(Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;)V
.end method

.method public abstract setActiveAccount(Ljava/lang/String;)V
.end method
