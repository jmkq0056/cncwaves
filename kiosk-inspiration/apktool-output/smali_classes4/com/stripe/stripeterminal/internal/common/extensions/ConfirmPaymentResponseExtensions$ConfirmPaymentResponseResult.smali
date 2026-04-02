.class public abstract Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;
.super Ljava/lang/Object;
.source "ConfirmPaymentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConfirmPaymentResponseResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;,
        Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;",
        "",
        "()V",
        "offlineStats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "getOfflineStats",
        "()Lcom/stripe/proto/api/sdk/OfflineStats;",
        "Error",
        "Success",
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Error;",
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult$Success;",
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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmPaymentResponseExtensions$ConfirmPaymentResponseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOfflineStats()Lcom/stripe/proto/api/sdk/OfflineStats;
.end method
