.class public final Lcom/example/digitalkiosk/MainActivity$initialize$1;
.super Landroid/os/CountDownTimer;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/MainActivity;->initialize()V
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
        "com/example/digitalkiosk/MainActivity$initialize$1",
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
.field final synthetic $home:Landroid/content/Intent;

.field final synthetic $login:Landroid/content/Intent;

.field final synthetic this$0:Lcom/example/digitalkiosk/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/MainActivity;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iput-object p2, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->$login:Landroid/content/Intent;

    iput-object p3, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->$home:Landroid/content/Intent;

    const-wide/16 p1, 0x2710

    const-wide/16 v0, 0x3e8

    .line 240
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->this$0:Lcom/example/digitalkiosk/MainActivity;

    iget-object v1, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->$login:Landroid/content/Intent;

    iget-object v2, p0, Lcom/example/digitalkiosk/MainActivity$initialize$1;->$home:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/example/digitalkiosk/MainActivity;->access$tryConnection(Lcom/example/digitalkiosk/MainActivity;Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
