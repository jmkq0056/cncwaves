.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;
.super Ljava/lang/Object;
.source "UpdatePaymentIntentParamRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\r\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0012\u0010\u000f\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/UpdatePaymentIntentParamRepository;",
        "()V",
        "isUpdatePaymentIntentParamSet",
        "",
        "lastPaymentIntentId",
        "",
        "forceReset",
        "",
        "isLastPIEmpty",
        "isSamePI",
        "id",
        "resetIfNewPaymentIntent",
        "setIfNewPaymentIntent",
        "updatePaymentIntentParam",
        "setLastPI",
        "terminalsession_release"
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
.field private isUpdatePaymentIntentParamSet:Z

.field private lastPaymentIntentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isLastPIEmpty()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->lastPaymentIntentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isSamePI(Ljava/lang/String;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->lastPaymentIntentId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final setLastPI(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->lastPaymentIntentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public forceReset()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->lastPaymentIntentId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isUpdatePaymentIntentParamSet:Z

    return-void
.end method

.method public isUpdatePaymentIntentParamSet()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isUpdatePaymentIntentParamSet:Z

    return v0
.end method

.method public resetIfNewPaymentIntent(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isLastPIEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isSamePI(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->forceReset()V

    return-void
.end method

.method public setIfNewPaymentIntent(Ljava/lang/String;Z)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isLastPIEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isSamePI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 56
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->setLastPI(Ljava/lang/String;)V

    .line 57
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultUpdatePaymentIntentParamRepository;->isUpdatePaymentIntentParamSet:Z

    return-void
.end method
