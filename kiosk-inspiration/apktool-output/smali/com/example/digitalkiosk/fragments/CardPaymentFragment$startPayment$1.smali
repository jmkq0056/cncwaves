.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->startPayment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\u0007\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        "onResponse",
        "",
        "p0",
        "Lretrofit2/Call;",
        "p1",
        "Lretrofit2/Response;",
        "onFailure",
        "",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-string p2, "Couldn\'t Start Payment"

    invoke-static {p1, p2}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/CreateIntentResponse;

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/CreateIntentResponse;->getIntent()Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 230
    sget-object p2, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object p2

    .line 231
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/CreateIntentResponse;->getIntent()Lcom/example/digitalkiosk/models/ServerPaymentIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ServerPaymentIntent;->getClient_secret()Ljava/lang/String;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getCreatePaymentIntentCallback(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;

    .line 230
    invoke-virtual {p2, v0, v1}, Lcom/stripe/stripeterminal/Terminal;->retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    .line 234
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/CreateIntentResponse;->getOrder()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->setOrder_id(Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method
