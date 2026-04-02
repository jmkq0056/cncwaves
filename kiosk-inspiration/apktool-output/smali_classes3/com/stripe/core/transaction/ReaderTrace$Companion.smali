.class public final Lcom/stripe/core/transaction/ReaderTrace$Companion;
.super Ljava/lang/Object;
.source "ReaderTrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/transaction/ReaderTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0006\u0010\u0008\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\u0004J\u0006\u0010\n\u001a\u00020\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/core/transaction/ReaderTrace$Companion;",
        "",
        "()V",
        "startDisplayCart",
        "Lcom/stripe/core/transaction/ReaderTrace;",
        "startInteracRefund",
        "startPaymentMethod",
        "startReusableCard",
        "startSetupIntent",
        "startSetupIntentPaymentMethod",
        "startTipSelection",
        "transaction_release"
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/transaction/ReaderTrace$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startDisplayCart()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 36
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startDisplayCart"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startInteracRefund()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 16
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startInteracRefund"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startPaymentMethod()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 28
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startPaymentMethod"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startReusableCard()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 20
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startReusableCard"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startSetupIntent()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 40
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startSetupIntent"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startSetupIntentPaymentMethod()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 32
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startSetupIntentPaymentMethod"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final startTipSelection()Lcom/stripe/core/transaction/ReaderTrace;
    .locals 4

    .line 24
    new-instance v0, Lcom/stripe/core/transaction/ReaderTrace;

    const-string v1, "startTipSelection"

    const/4 v2, 0x0

    const-string v3, "ReaderTrace"

    invoke-direct {v0, v3, v1, v2}, Lcom/stripe/core/transaction/ReaderTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
