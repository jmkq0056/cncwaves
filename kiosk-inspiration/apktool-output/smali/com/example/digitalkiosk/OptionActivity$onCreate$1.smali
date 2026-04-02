.class public final Lcom/example/digitalkiosk/OptionActivity$onCreate$1;
.super Landroid/os/CountDownTimer;
.source "OptionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/OptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionActivity.kt\ncom/example/digitalkiosk/OptionActivity$onCreate$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/OptionActivity$onCreate$1",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/OptionActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/OptionActivity;)V
    .locals 4

    iput-object p1, p0, Lcom/example/digitalkiosk/OptionActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/OptionActivity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    .line 44
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/example/digitalkiosk/OptionActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/OptionActivity;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity;->getOptionsTimer()Landroid/os/CountDownTimer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/example/digitalkiosk/fragments/InactivityFragment;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/example/digitalkiosk/fragments/InactivityFragment;-><init>(Landroid/os/CountDownTimer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2, v1}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->setCancelable(Z)V

    .line 52
    iget-object v0, p0, Lcom/example/digitalkiosk/OptionActivity$onCreate$1;->this$0:Lcom/example/digitalkiosk/OptionActivity;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "beginTransaction(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v1, "Inactivity Warning"

    invoke-virtual {v2, v0, v1}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimerRun"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
