.class public final Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1;
.super Ljava/lang/Object;
.source "PaymentCollectionExternalModule.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule;->providesPaymentCollectionLocaleManager(Lcom/stripe/core/locale/LocaleManager;)Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1",
        "Lcom/stripe/paymentcollection/PaymentCollectionLocaleManager;",
        "getFirstSupportedISO6391Code",
        "",
        "isoCodes",
        "",
        "sdkmanager_publish"
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
.field final synthetic $localeManager:Lcom/stripe/core/locale/LocaleManager;


# direct methods
.method constructor <init>(Lcom/stripe/core/locale/LocaleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1;->$localeManager:Lcom/stripe/core/locale/LocaleManager;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstSupportedISO6391Code(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "isoCodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PaymentCollectionExternalModule$providesPaymentCollectionLocaleManager$1;->$localeManager:Lcom/stripe/core/locale/LocaleManager;

    invoke-interface {v0, p1}, Lcom/stripe/core/locale/LocaleManager;->getFirstSupportedISO6391Code(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
