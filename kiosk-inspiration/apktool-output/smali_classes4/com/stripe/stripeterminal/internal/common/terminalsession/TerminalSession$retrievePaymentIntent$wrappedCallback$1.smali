.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;
.super Ljava/lang/Object;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
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
        "com/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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
.field final synthetic $callback:Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 3

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLogger$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    const-string v2, "sdk_operation"

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 843
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$retrievePaymentIntent$wrappedCallback$1;->$callback:Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void
.end method
