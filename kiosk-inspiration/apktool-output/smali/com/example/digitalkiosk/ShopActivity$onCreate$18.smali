.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$18;
.super Landroid/os/CountDownTimer;
.source "ShopActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopActivity.kt\ncom/example/digitalkiosk/ShopActivity$onCreate$18\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,711:1\n1#2:712\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$18",
        "Landroid/os/CountDownTimer;",
        "onTick",
        "",
        "millisUntilFinished",
        "",
        "onFinish",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 4

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$18;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    const-wide/32 v0, 0x2bf20

    const-wide/16 v2, 0x3e8

    .line 509
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$18;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity;->getPaymentTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/example/digitalkiosk/fragments/InactivityFragment;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/example/digitalkiosk/fragments/InactivityFragment;-><init>(Landroid/os/CountDownTimer;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 514
    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->setCancelable(Z)V

    .line 515
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$18;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "beginTransaction(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    const-string v2, "Inactivity Warning"

    invoke-virtual {v1, v0, v2}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
