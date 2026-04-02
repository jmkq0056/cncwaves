.class public final Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;
.super Ljava/lang/Object;
.source "CancelPaymentIntentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;",
        "",
        "()V",
        "toResult",
        "Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;",
        "Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;",
        "CancelPaymentIntentResponseResult",
        "public_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toResult(Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;)Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;
    .locals 2

    .line 10
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Success;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Success;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;

    return-object p1

    .line 13
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Error;

    .line 14
    iget-object v1, p1, Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;->wrapped_error:Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/CancelPaymentIntentResponse;->error:Lcom/stripe/proto/model/sdk/Error;

    invoke-static {v1, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->convertJackRabbitErrorToTerminalException(Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/extensions/CancelPaymentIntentResponseExtensions$CancelPaymentIntentResponseResult;

    return-object v0
.end method
