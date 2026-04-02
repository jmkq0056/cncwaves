.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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


# instance fields
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-string v0, "Unable to Collect Payment"

    invoke-static {p1, v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 7

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$removeCancellation(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    .line 315
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v1

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getProcessPaymentCallback(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/Terminal;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-void
.end method
