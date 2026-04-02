.class public final Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;
.super Ljava/lang/Object;
.source "PaymentMethodOptionsParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;",
        "",
        "()V",
        "cardPresentParameters",
        "Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
        "getCardPresentParameters$public_release",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;",
        "setCardPresentParameters$public_release",
        "(Lcom/stripe/stripeterminal/external/models/CardPresentParameters;)V",
        "build",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;",
        "setCardPresentParameters",
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
.field private synthetic cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;
    .locals 2

    .line 41
    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getCardPresentParameters$public_release()Lcom/stripe/stripeterminal/external/models/CardPresentParameters;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;->cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    return-object v0
.end method

.method public final setCardPresentParameters(Lcom/stripe/stripeterminal/external/models/CardPresentParameters;)Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;
    .locals 1

    const-string v0, "cardPresentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;->cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    return-object p0
.end method

.method public final setCardPresentParameters$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentParameters;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptionsParameters$Builder;->cardPresentParameters:Lcom/stripe/stripeterminal/external/models/CardPresentParameters;

    return-void
.end method
