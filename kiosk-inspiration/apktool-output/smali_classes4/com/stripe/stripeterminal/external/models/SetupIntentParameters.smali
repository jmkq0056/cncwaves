.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;
.super Ljava/lang/Object;
.source "SetupIntentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;,
        Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u001f\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0008R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;)V",
        "customer",
        "",
        "getCustomer",
        "()Ljava/lang/String;",
        "description",
        "getDescription",
        "metadata",
        "",
        "getMetadata",
        "()Ljava/util/Map;",
        "onBehalfOf",
        "getOnBehalfOf",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getPaymentMethodTypes",
        "()Ljava/util/List;",
        "usage",
        "getUsage",
        "Builder",
        "Companion",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;

.field private static final NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;


# instance fields
.field private final customer:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final metadata:Ljava/util/Map;
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

.field private final paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final usage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Companion;

    .line 102
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->build()Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    return-void
.end method

.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getCustomer$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->customer:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getDescription$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->description:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getMetadata$public_release()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->metadata:Ljava/util/Map;

    .line 18
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getUsage$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->usage:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getOnBehalfOf$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->onBehalfOf:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->getPaymentMethodTypes$public_release()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;)V

    return-void
.end method

.method public static final synthetic access$getNULL$cp()Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;
    .locals 1

    .line 14
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->NULL:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    return-object v0
.end method


# virtual methods
.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->description:Ljava/lang/String;

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

    .line 17
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnBehalfOf()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->onBehalfOf:Ljava/lang/String;

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

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getUsage()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;->usage:Ljava/lang/String;

    return-object v0
.end method
