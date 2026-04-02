.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;
.super Ljava/lang/Object;
.source "ApiRequestFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiRequestFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiRequestFactory.kt\ncom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,807:1\n1#2:808\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R*\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f*\u00020\u00108BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;",
        "",
        "()V",
        "CARD_TYPE",
        "",
        "EMV_TYPE",
        "ENCRYPTED_EMV_TYPE",
        "ENCRYPTED_TRACK_DATA_TYPE",
        "IF_AVAILABLE",
        "INVALID_CLIENT_SECRET",
        "NEVER",
        "SECRET_DELIMITER",
        "STRIPE_ACCOUNT_HEADER",
        "WEB",
        "headers",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "getHeaders$annotations",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V",
        "getHeaders",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;",
        "withStripeAccountId",
        "",
        "stripeAccountId",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHeaders(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;
    .locals 0

    .line 779
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->getHeaders(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$withStripeAccountId(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->withStripeAccountId(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getHeaders(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$Companion;->withStripeAccountId(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic getHeaders$annotations(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 0

    return-void
.end method

.method private final withStripeAccountId(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 799
    const-string v0, "Stripe-Account"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method
