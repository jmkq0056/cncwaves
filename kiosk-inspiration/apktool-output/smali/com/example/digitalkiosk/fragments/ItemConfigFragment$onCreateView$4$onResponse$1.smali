.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;
.super Landroid/os/CountDownTimer;
.source "ItemConfigFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1",
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
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 2

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    const-wide/16 p1, 0x7d0

    const-wide/16 v0, 0x3e8

    .line 282
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getDisplayNav$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/view/animation/Animation;

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
