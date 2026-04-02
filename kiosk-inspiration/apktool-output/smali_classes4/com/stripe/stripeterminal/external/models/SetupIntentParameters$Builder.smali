.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
.super Ljava/lang/Object;
.source "SetupIntentParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004J\u001c\u0010#\u001a\u00020\u00002\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\rJ\u0010\u0010$\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004J\u0014\u0010%\u001a\u00020\u00002\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R(\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;",
        "",
        "()V",
        "customer",
        "",
        "getCustomer$public_release",
        "()Ljava/lang/String;",
        "setCustomer$public_release",
        "(Ljava/lang/String;)V",
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
        "paymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getPaymentMethodTypes$public_release",
        "()Ljava/util/List;",
        "setPaymentMethodTypes$public_release",
        "(Ljava/util/List;)V",
        "usage",
        "getUsage$public_release",
        "setUsage$public_release",
        "build",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "setCustomer",
        "setDescription",
        "setMetadata",
        "setOnBehalfOf",
        "setPaymentMethodTypes",
        "setUsage",
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
.field private customer:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onBehalfOf:Ljava/lang/String;

.field private paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->CARD_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;-><init>(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "paymentMethodTypes cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCustomer$public_release()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription$public_release()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->description:Ljava/lang/String;

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

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnBehalfOf$public_release()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

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

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getUsage$public_release()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public final setCustomer(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1

    .line 37
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->customer:Ljava/lang/String;

    return-object p0
.end method

.method public final setCustomer$public_release(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->customer:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1

    .line 45
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 46
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final setDescription$public_release(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->description:Ljava/lang/String;

    return-void
.end method

.method public final setMetadata(Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;"
        }
    .end annotation

    .line 55
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 56
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->metadata:Ljava/util/Map;

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

    .line 25
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->metadata:Ljava/util/Map;

    return-void
.end method

.method public final setOnBehalfOf(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1

    .line 69
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 70
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

    return-object p0
.end method

.method public final setOnBehalfOf$public_release(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->onBehalfOf:Ljava/lang/String;

    return-void
.end method

.method public final setPaymentMethodTypes(Ljava/util/List;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 78
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-object p0
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

    .line 28
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->paymentMethodTypes:Ljava/util/List;

    return-void
.end method

.method public final setUsage(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;
    .locals 1

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;

    .line 63
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->usage:Ljava/lang/String;

    return-object p0
.end method

.method public final setUsage$public_release(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentParameters$Builder;->usage:Ljava/lang/String;

    return-void
.end method
