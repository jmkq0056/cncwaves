.class public interface abstract Lcom/stripe/stripeterminal/external/callable/OfflineListener;
.super Ljava/lang/Object;
.source "OfflineListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001a\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000f\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "",
        "onForwardingFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onOfflineStatusChange",
        "offlineStatus",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "onPaymentIntentForwarded",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "onSetupIntentForwarded",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
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


# virtual methods
.method public abstract onForwardingFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
.end method

.method public abstract onOfflineStatusChange(Lcom/stripe/stripeterminal/external/models/OfflineStatus;)V
.end method

.method public abstract onPaymentIntentForwarded(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
.end method

.method public onSetupIntentForwarded(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 7

    const-string p2, "setupIntent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 51
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 50
    const-string v2, "Forwarded a SetupIntent but callback not implemented in OfflineListener."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
