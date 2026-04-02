.class public interface abstract Lcom/stripe/offlinemode/OfflineEventHandler;
.super Ljava/lang/Object;
.source "OfflineEventHandler.kt"

# interfaces
.implements Lcom/stripe/offlinemode/OfflineReaderSetup;
.implements Lcom/stripe/offlinemode/helpers/OfflineSessionManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u00012\u00020\u0002JX\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082>\u0010\t\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u000b\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\nj\u0002`\u0012H&JV\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JV\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JF\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JF\u0010\'\u001a\u00020!2\u0006\u0010%\u001a\u00020(2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&J\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020*0\u001b2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001dH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006,\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/OfflineEventHandler;",
        "Lcom/stripe/offlinemode/OfflineReaderSetup;",
        "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
        "onActivateReaderRequest",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "usbConfig",
        "",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "onConfirmPaymentIntentRequest",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "intent",
        "emvData",
        "",
        "confirmPaymentIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
        "requestHeaders",
        "",
        "requestParams",
        "",
        "Lkotlin/Pair;",
        "endpoint",
        "onConfirmSetupIntentRequest",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "confirmSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
        "onCreatePaymentIntentRequest",
        "request",
        "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
        "onCreateSetupIntentRequest",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
        "onLocationsRequests",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "offlinemode_release"
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
.method public abstract onActivateReaderRequest(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract onConfirmPaymentIntentRequest(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract onConfirmSetupIntentRequest(Lcom/stripe/stripeterminal/external/models/SetupIntent;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract onCreatePaymentIntentRequest(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract onCreateSetupIntentRequest(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract onLocationsRequests(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method
