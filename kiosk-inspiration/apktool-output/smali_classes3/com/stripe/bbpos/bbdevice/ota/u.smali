.class Lcom/stripe/bbpos/bbdevice/ota/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/stripe/bbpos/bbdevice/ota/c;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->c:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->c:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->d()Lcom/stripe/bbpos/bbdevice/ota/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->k0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/c;->b()Lcom/stripe/bbpos/bbdevice/ota/s;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ota/s;->f(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->c:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "No response (6002)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/c;->b(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/u;->a:Lcom/stripe/bbpos/bbdevice/ota/c;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ota/c;->k:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
