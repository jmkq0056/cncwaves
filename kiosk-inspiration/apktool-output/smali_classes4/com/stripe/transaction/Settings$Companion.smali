.class public final Lcom/stripe/transaction/Settings$Companion;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0007\u001a\u00020\u0004*\u00020\u0008R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/transaction/Settings$Companion;",
        "",
        "()V",
        "DEFAULT",
        "Lcom/stripe/transaction/Settings;",
        "getDEFAULT",
        "()Lcom/stripe/transaction/Settings;",
        "toSettings",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/transaction/Settings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 12
    invoke-static {}, Lcom/stripe/transaction/Settings;->access$getDEFAULT$cp()Lcom/stripe/transaction/Settings;

    move-result-object v0

    return-object v0
.end method

.method public final toSettings(Lcom/stripe/proto/model/config/ClientCheckoutOptions;)Lcom/stripe/transaction/Settings;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/stripe/transaction/Settings;

    .line 16
    iget-object v1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 17
    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    .line 21
    :goto_0
    iget-object p1, p1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 15
    :goto_1
    invoke-direct {v0, v1, p1}, Lcom/stripe/transaction/Settings;-><init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V

    return-object v0
.end method
