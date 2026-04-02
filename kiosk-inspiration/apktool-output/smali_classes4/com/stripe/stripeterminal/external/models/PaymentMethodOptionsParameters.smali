.class public final Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;
.super Ljava/lang/Object;
.source "PaymentMethodOptionsParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;)V",
        "cardPresentParameters",
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
        "getCardPresentParameters",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
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
.field private final cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;->getCardPresentParameters$public_release()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getCardPresentParameters()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;->cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    return-object v0
.end method
