.class public final Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;
.super Ljava/lang/Object;
.source "PaymentIntentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u00013B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013R\u001f\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0013R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0013R\u0013\u0010)\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0013R\u0013\u0010+\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0013R\u0013\u0010-\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0013R\u0013\u0010/\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u0013R\u0013\u00101\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u0013\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;)V",
        "amount",
        "",
        "getAmount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "applicationFeeAmount",
        "getApplicationFeeAmount",
        "captureMethod",
        "Lcom/stripe/stripeterminal/external/models/CaptureMethod;",
        "getCaptureMethod",
        "()Lcom/stripe/stripeterminal/external/models/CaptureMethod;",
        "currency",
        "",
        "getCurrency",
        "()Ljava/lang/String;",
        "customer",
        "getCustomer",
        "description",
        "getDescription",
        "metadata",
        "",
        "getMetadata",
        "()Ljava/util/Map;",
        "onBehalfOf",
        "getOnBehalfOf",
        "paymentMethodOptionsParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "getPaymentMethodOptionsParameters",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getPaymentMethodTypes",
        "()Ljava/util/List;",
        "receiptEmail",
        "getReceiptEmail",
        "setupFutureUsage",
        "getSetupFutureUsage",
        "statementDescriptor",
        "getStatementDescriptor",
        "statementDescriptorSuffix",
        "getStatementDescriptorSuffix",
        "transferDataDestination",
        "getTransferDataDestination",
        "transferGroup",
        "getTransferGroup",
        "Builder",
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
.field private final amount:Ljava/lang/Long;

.field private final applicationFeeAmount:Ljava/lang/Long;

.field private final captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

.field private final currency:Ljava/lang/String;

.field private final customer:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final transient metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onBehalfOf:Ljava/lang/String;

.field private final paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

.field private final transient synthetic paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final receiptEmail:Ljava/lang/String;

.field private final setupFutureUsage:Ljava/lang/String;

.field private final statementDescriptor:Ljava/lang/String;

.field private final statementDescriptorSuffix:Ljava/lang/String;

.field private final transferDataDestination:Ljava/lang/String;

.field private final transferGroup:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getAmount$public_release()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->amount:Ljava/lang/Long;

    .line 34
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getApplicationFeeAmount$public_release()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->applicationFeeAmount:Ljava/lang/Long;

    .line 41
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getCaptureMethod$public_release()Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    .line 48
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getCurrency$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->currency:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getCustomer$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->customer:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getDescription$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->description:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getOnBehalfOf$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->onBehalfOf:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getReceiptEmail$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->receiptEmail:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getSetupFutureUsage$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->setupFutureUsage:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getStatementDescriptor$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->statementDescriptor:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getStatementDescriptorSuffix$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->statementDescriptorSuffix:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getTransferDataDestination$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->transferDataDestination:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getTransferGroup$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->transferGroup:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getPaymentMethodOptionsParameters$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    .line 143
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getPaymentMethodTypes$public_release()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->paymentMethodTypes:Ljava/util/List;

    .line 150
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;->getMetadata$public_release()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/Long;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->amount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getApplicationFeeAmount()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->applicationFeeAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getCaptureMethod()Lcom/stripe/stripeterminal/external/models/CaptureMethod;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->captureMethod:Lcom/stripe/stripeterminal/external/models/CaptureMethod;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
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

    .line 150
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnBehalfOf()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodOptionsParameters()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->paymentMethodOptionsParameters:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    return-object v0
.end method

.method public final getPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getReceiptEmail()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupFutureUsage()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->setupFutureUsage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptor()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptorSuffix()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferDataDestination()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->transferDataDestination:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferGroup()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;->transferGroup:Ljava/lang/String;

    return-object v0
.end method
