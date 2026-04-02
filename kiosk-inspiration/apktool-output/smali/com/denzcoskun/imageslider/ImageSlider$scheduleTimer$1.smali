.class public final Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$1;
.super Ljava/util/TimerTask;
.source "ImageSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/denzcoskun/imageslider/ImageSlider;->scheduleTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/denzcoskun/imageslider/ImageSlider$scheduleTimer$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "imageslider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $handler:Landroid/os/Handler;

.field final synthetic $update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$1;->$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$1;->$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$1;->$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$1;->$update:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
