.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/Order;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/Order;",
        "onResponse",
        "",
        "p0",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "p1",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 357
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
            "Lcom/example/digitalkiosk/models/Order;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-string p2, "Payment Capture Failed"

    invoke-static {p1, p2}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    const-string v1, "OrderTest"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc9

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->dismiss()V

    .line 372
    invoke-virtual {p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/Order;

    .line 361
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance p2, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    const/4 v0, 0x2

    invoke-direct {p2, p1, v2, v0, v2}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;-><init>(Lcom/example/digitalkiosk/models/Order;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    .line 364
    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->setCancelable(Z)V

    .line 365
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 367
    const-string v0, "Success Fragment"

    invoke-virtual {p2, p1, v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
