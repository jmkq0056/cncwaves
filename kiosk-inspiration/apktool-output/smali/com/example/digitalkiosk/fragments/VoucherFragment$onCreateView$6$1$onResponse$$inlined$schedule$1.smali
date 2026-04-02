.class public final Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 VoucherFragment.kt\ncom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1\n*L\n1#1,148:1\n128#2,2:149\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/concurrent/TimersKt$timerTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "kotlin-stdlib"
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;


# direct methods
.method public constructor <init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    move-object v0, p0

    check-cast v0, Ljava/util/TimerTask;

    .line 149
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherWarning:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
