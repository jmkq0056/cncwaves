.class public final Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
.super Ljava/lang/Object;
.source "PaymentIntentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B/\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bB\u0017\u0008\u0017\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010G\u001a\u00020HJ\u000e\u0010I\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0005J\u001a\u0010O\u001a\u00020\u00002\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050$J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010,\u001a\u00020-J\u000e\u0010R\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0005J\u000e\u0010S\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0005J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0005J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0005J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0005J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u0005R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0080\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001a\"\u0004\u0008\"\u0010\u001cR(\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010$X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001a\"\u0004\u0008+\u0010\u001cR\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u0010\u000cR\u001c\u00105\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u001a\"\u0004\u00087\u0010\u001cR\u001c\u00108\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001a\"\u0004\u0008:\u0010\u001cR\u001c\u0010;\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u001a\"\u0004\u0008=\u0010\u001cR\u001c\u0010>\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001a\"\u0004\u0008@\u0010\u001cR\u001c\u0010A\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u001a\"\u0004\u0008C\u0010\u001cR\u001c\u0010D\u001a\u0004\u0018\u00010\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u001a\"\u0004\u0008F\u0010\u001c\u00a8\u0006X"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;",
        "",
        "amount",
        "",
        "currency",
        "",
        "captureMethod",
        "Lcom/stripe/stripeterminal/external/models/CaptureMethod;",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;)V",
        "(Ljava/util/List;)V",
        "getAmount$public_release",
        "()Ljava/lang/Long;",
        "setAmount$public_release",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "applicationFeeAmount",
        "getApplicationFeeAmount$public_release",
        "setApplicationFeeAmount$public_release",
        "getCaptureMethod$public_release",
        "()Lcom/stripe/stripeterminal/external/models/CaptureMethod;",
        "setCaptureMethod$public_release",
        "(Lcom/stripe/stripeterminal/external/models/CaptureMethod;)V",
        "getCurrency$public_release",
        "()Ljava/lang/String;",
        "setCurrency$public_release",
        "(Ljava/lang/String;)V",
        "customer",
        "getCustomer$public_release",
        "setCustomer$public_release",
        "description",
        "getDescription$public_release",
        "setDescription$public_release",
        "metadata",
        "",
        "getMetadata$public_release",
        "()Ljava/util/Map;",
        "setMetadata$public_release",
        "(Ljava/util/Map;)V",
        "onBehalfOf",
        "getOnBehalfOf$public_release",
        "setOnBehalfOf$public_release",
        "paymentMethodOptionsParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "getPaymentMethodOptionsParameters$public_release",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "setPaymentMethodOptionsParameters$public_release",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;)V",
        "getPaymentMethodTypes$public_release",
        "()Ljava/util/List;",
        "setPaymentMethodTypes$public_release",
        "receiptEmail",
        "getReceiptEmail$public_release",
        "setReceiptEmail$public_release",
        "setupFutureUsage",
        "getSetupFutureUsage$public_release",
        "setSetupFutureUsage$public_release",
        "statementDescriptor",
        "getStatementDescriptor$public_release",
        "setStatementDescriptor$public_release",
        "statementDescriptorSuffix",
        "getStatementDescriptorSuffix$public_release",
        "setStatementDescriptorSuffix$public_release",
        "transferDataDestination",
        "getTransferDataDestination$public_release",
        "setTransferDataDestination$public_release",
        "transferGroup",
        "getTransferGroup$public_release",
        "setTransferGroup$public_release",
        "build",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "setAmount",
        "setApplicationFeeAmount",
        "setCaptureMethod",
        "setCurrency",
        "setCustomer",
        "setDescription",
        "setMetadata",
        "setOnBehalfOf",
        "setPaymentMethodOptionsParameters",
        "setReceiptEmail",
        "setSetupFutureUsage",
        "setStatementDescriptor",
        "setStatementDescriptorSuffix",
        "setTransferDataDestination",
        "setTransferGroup",
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


# instance fields
.field private synthetic amount:Ljava/lang/Long;

.field private synthetic applicationFeeAmount:Ljava/lang/Long;

.field private synthetic captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

.field private synthetic currency:Ljava/lang/String;

.field private synthetic customer:Ljava/lang/String;

.field private synthetic description:Ljava/lang/String;

.field private synthetic metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic onBehalfOf:Ljava/lang/String;

.field private synthetic paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

.field private synthetic paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic receiptEmail:Ljava/lang/String;

.field private synthetic setupFutureUsage:Ljava/lang/String;

.field private synthetic statementDescriptor:Ljava/lang/String;

.field private synthetic statementDescriptorSuffix:Ljava/lang/String;

.field private synthetic transferDataDestination:Ljava/lang/String;

.field private synthetic transferGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;)V
    .locals 9

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;-><init>(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/CaptureMethod;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captureMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodTypes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->amount:Ljava/lang/Long;

    .line 222
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->currency:Ljava/lang/String;

    .line 223
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    .line 224
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 219
    sget-object p5, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 215
    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;-><init>(JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/CaptureMethod;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CaptureMethod;->Manual:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    .line 237
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 235
    sget-object p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->amount:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->currency:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Currency is a required parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Amount is a required parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAmount$public_release()Ljava/lang/Long;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getApplicationFeeAmount$public_release()Ljava/lang/Long;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->applicationFeeAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCaptureMethod$public_release()Lcom/stripe/stripeterminal/external/models/CaptureMethod;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    return-object v0
.end method

.method public final getCurrency$public_release()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomer$public_release()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription$public_release()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata$public_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnBehalfOf$public_release()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodOptionsParameters$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    return-object v0
.end method

.method public final getPaymentMethodTypes$public_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getReceiptEmail$public_release()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupFutureUsage$public_release()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->setupFutureUsage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptor$public_release()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptorSuffix$public_release()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferDataDestination$public_release()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferDataDestination:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferGroup$public_release()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferGroup:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmount(J)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 0

    .line 246
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final setAmount$public_release(Ljava/lang/Long;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->amount:Ljava/lang/Long;

    return-void
.end method

.method public final setApplicationFeeAmount(J)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 0

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->applicationFeeAmount:Ljava/lang/Long;

    return-object p0
.end method

.method public final setApplicationFeeAmount$public_release(Ljava/lang/Long;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->applicationFeeAmount:Ljava/lang/Long;

    return-void
.end method

.method public final setCaptureMethod(Lcom/stripe/stripeterminal/external/models/CaptureMethod;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "captureMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    return-object p0
.end method

.method public final setCaptureMethod$public_release(Lcom/stripe/stripeterminal/external/models/CaptureMethod;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final setCurrency$public_release(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setCustomer(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "customer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomer$public_release(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->customer:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription$public_release(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->description:Ljava/lang/String;

    return-void
.end method

.method public final setMetadata(Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final setMetadata$public_release(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->metadata:Ljava/util/Map;

    return-void
.end method

.method public final setOnBehalfOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "onBehalfOf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

    return-object p0
.end method

.method public final setOnBehalfOf$public_release(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

    return-void
.end method

.method public final setPaymentMethodOptionsParameters(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "paymentMethodOptionsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    return-object p0
.end method

.method public final setPaymentMethodOptionsParameters$public_release(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    return-void
.end method

.method public final setPaymentMethodTypes$public_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method

.method public final setReceiptEmail(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "receiptEmail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->receiptEmail:Ljava/lang/String;

    return-object p0
.end method

.method public final setReceiptEmail$public_release(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->receiptEmail:Ljava/lang/String;

    return-void
.end method

.method public final setSetupFutureUsage(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "setupFutureUsage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->setupFutureUsage:Ljava/lang/String;

    return-object p0
.end method

.method public final setSetupFutureUsage$public_release(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->setupFutureUsage:Ljava/lang/String;

    return-void
.end method

.method public final setStatementDescriptor(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "statementDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptor:Ljava/lang/String;

    return-object p0
.end method

.method public final setStatementDescriptor$public_release(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptor:Ljava/lang/String;

    return-void
.end method

.method public final setStatementDescriptorSuffix(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "statementDescriptorSuffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptorSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public final setStatementDescriptorSuffix$public_release(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->statementDescriptorSuffix:Ljava/lang/String;

    return-void
.end method

.method public final setTransferDataDestination(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "transferDataDestination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferDataDestination:Ljava/lang/String;

    return-object p0
.end method

.method public final setTransferDataDestination$public_release(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferDataDestination:Ljava/lang/String;

    return-void
.end method

.method public final setTransferGroup(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    .locals 1

    const-string v0, "transferGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferGroup:Ljava/lang/String;

    return-object p0
.end method

.method public final setTransferGroup$public_release(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->transferGroup:Ljava/lang/String;

    return-void
.end method
