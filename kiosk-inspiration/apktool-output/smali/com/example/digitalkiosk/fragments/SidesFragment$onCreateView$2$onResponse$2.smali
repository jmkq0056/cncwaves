.class public final Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;
.super Landroid/os/CountDownTimer;
.source "SidesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/SidesFragment;)V
    .locals 4

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x3e8

    .line 122
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$getDisplayNav$p(Lcom/example/digitalkiosk/fragments/SidesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getSideIndicatorWrap()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-static {v1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/SidesFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "shakeAnimation"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
