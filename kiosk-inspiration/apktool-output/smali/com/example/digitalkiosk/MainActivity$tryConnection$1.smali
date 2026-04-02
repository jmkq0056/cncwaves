.class public final Lcom/example/digitalkiosk/MainActivity$tryConnection$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/MainActivity;->tryConnection(Landroid/content/Intent;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/Kiosk;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/MainActivity$tryConnection$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/Kiosk;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
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
.field final synthetic $home:Landroid/content/Intent;

.field final synthetic $login:Landroid/content/Intent;

.field final synthetic this$0:Lcom/example/digitalkiosk/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/MainActivity;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iput-object p2, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->$home:Landroid/content/Intent;

    iput-object p3, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->$login:Landroid/content/Intent;

    .line 260
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
            "Lcom/example/digitalkiosk/models/Kiosk;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTries$p(Lcom/example/digitalkiosk/MainActivity;)I

    move-result p1

    if-lez p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTimer$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectingText$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    const-string p1, "connectingText"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getFailedConnection$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "failedConnection"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Kiosk;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/Kiosk;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 263
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTimer$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 264
    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/Kiosk;

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Kiosk;->getKiosk_id()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 266
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iget-object p2, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->$home:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    :cond_2
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/MainActivity$Companion;->deleteToken()V

    .line 269
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iget-object p2, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->$login:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/MainActivity;->finish()V

    return-void

    .line 272
    :cond_3
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p1

    const/16 p2, 0x191

    if-ne p1, p2, :cond_5

    .line 273
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/MainActivity$Companion;->deleteToken()V

    .line 274
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTimer$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 275
    :cond_4
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iget-object p2, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->$login:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/MainActivity;->finish()V

    return-void

    .line 278
    :cond_5
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTries$p(Lcom/example/digitalkiosk/MainActivity;)I

    move-result p1

    if-lez p1, :cond_7

    .line 279
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectionTimer$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_6
    return-void

    .line 281
    :cond_7
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getConnectingText$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "connectingText"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_8
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    iget-object p1, p0, Lcom/example/digitalkiosk/MainActivity$tryConnection$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/MainActivity;->access$getFailedConnection$p(Lcom/example/digitalkiosk/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "failedConnection"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v1, p1

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
