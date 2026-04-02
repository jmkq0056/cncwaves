.class public final Lcom/stripe/offlinemode/ReaderEventListener;
.super Ljava/lang/Object;
.source "ReaderEventListener.kt"

# interfaces
.implements Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/ReaderEventListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderEventListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderEventListener.kt\ncom/stripe/offlinemode/ReaderEventListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0096@\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/offlinemode/ReaderEventListener;",
        "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;",
        "offlineListener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V",
        "terminalException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "Lcom/stripe/proto/api/sdk/ForwardingError;",
        "getTerminalException",
        "(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onReaderEvent",
        "",
        "event",
        "Lcom/stripe/proto/api/sdk/ReaderEvent;",
        "(Lcom/stripe/proto/api/sdk/ReaderEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/offlinemode/ReaderEventListener$Companion;

.field public static final REQUIRED_PI_ERR_MSG:Ljava/lang/String; = "ReaderEvent forwarded payment result must have a PaymentIntent"

.field public static final REQUIRED_SI_ERR_MSG:Ljava/lang/String; = "ReaderEvent forwarded setup intent result must have a SetupIntent"


# instance fields
.field private final offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/ReaderEventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/ReaderEventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/ReaderEventListener;->Companion:Lcom/stripe/offlinemode/ReaderEventListener$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 1

    const-string v0, "offlineListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/stripe/offlinemode/ReaderEventListener;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-void
.end method

.method private final getTerminalException(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 9

    .line 63
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/ForwardingError;->server_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ForwardingError;->reader_error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 65
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->Companion:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;

    iget-object v3, p1, Lcom/stripe/proto/model/sdk/Error;->code:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v4, v1}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->fromStringOrDefault$default(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode$Companion;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    .line 66
    iget-object v4, p1, Lcom/stripe/proto/model/sdk/Error;->message:Ljava/lang/String;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 64
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method


# virtual methods
.method public onReaderEvent(Lcom/stripe/proto/api/sdk/ReaderEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/ReaderEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    iget-object p2, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz p2, :cond_1

    .line 31
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/ReaderEventListener;->getTerminalException(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/stripe/offlinemode/ReaderEventListener;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-interface {p2, p1}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto/16 :goto_2

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    iget-object p2, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 36
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_payment_result:Lcom/stripe/proto/api/sdk/ForwardedPayment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    .line 37
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ForwardedPayment;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_4

    .line 38
    invoke-virtual {p2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p2

    .line 39
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ForwardedPayment;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkOfflineDetails(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V

    .line 40
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ForwardedPayment;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/ReaderEventListener;->getTerminalException(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/stripe/offlinemode/ReaderEventListener;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-interface {p1, p2, v0}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onPaymentIntentForwarded(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto :goto_2

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReaderEvent forwarded payment result must have a PaymentIntent"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_5
    iget-object p2, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    if-eqz p2, :cond_9

    .line 45
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ReaderEvent;->forwarded_setup_intent_result:Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    .line 46
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v1, :cond_8

    .line 47
    invoke-virtual {p2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p2

    .line 49
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;->offline_details:Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntentOfflineDetails(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->setOfflineDetails(Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;)V

    .line 51
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;->forwarding_error:Lcom/stripe/proto/api/sdk/ForwardingError;

    if-eqz p1, :cond_7

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/ReaderEventListener;->getTerminalException(Lcom/stripe/proto/api/sdk/ForwardingError;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    .line 52
    :cond_7
    iget-object p1, p0, Lcom/stripe/offlinemode/ReaderEventListener;->offlineListener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    invoke-interface {p1, p2, v0}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onSetupIntentForwarded(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 59
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 46
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReaderEvent forwarded setup intent result must have a SetupIntent"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed reader event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", must have forwarding error or forwarded entity"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
