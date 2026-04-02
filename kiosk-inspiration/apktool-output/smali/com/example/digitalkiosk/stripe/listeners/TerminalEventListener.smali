.class public final Lcom/example/digitalkiosk/stripe/listeners/TerminalEventListener;
.super Ljava/lang/Object;
.source "TerminalEventListener.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/TerminalListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/example/digitalkiosk/stripe/listeners/TerminalEventListener;",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "<init>",
        "()V",
        "onConnectionStatusChange",
        "",
        "status",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "onPaymentStatusChange",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChange(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onConnectionStatusChange(Lcom/stripe/stripeterminal/external/models/ConnectionStatus;)V

    return-void
.end method

.method public onPaymentStatusChange(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/external/callable/TerminalListener;->onPaymentStatusChange(Lcom/stripe/stripeterminal/external/models/PaymentStatus;)V

    return-void
.end method
