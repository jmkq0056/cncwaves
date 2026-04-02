.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;
.super Ljava/lang/Object;
.source "OnlineDirectResourceRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\r2\u0006\u0010\u000c\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\t*\u0004\u0018\u00010\u000e2\u0006\u0010\u000c\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;",
        "",
        "()V",
        "ACTION_REQUIRED_INITIAL_POLLING_DELAY_MS",
        "",
        "ACTION_REQUIRED_POLLING_INTERVAL_MS",
        "ACTION_REQUIRED_TIMEOUT_MS",
        "serverProcessingErrors",
        "",
        "",
        "authData",
        "Lcom/stripe/proto/model/rest/Charges;",
        "defaultValue",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "resourcerepository_release"
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

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final authData(Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1212
    iget-object v0, p1, Lcom/stripe/proto/model/rest/Charges;->data_:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1213
    iget-object p1, p1, Lcom/stripe/proto/model/rest/Charges;->data_:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/rest/Charge;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Charge;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final authData(Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1222
    iget-object v0, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/stripe/proto/model/rest/CardPresent;->emv_auth_data:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final authData(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1228
    iget-object v0, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;->emv_auth_data:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-object p2

    :cond_3
    return-object p1
.end method
