.class Lcom/stripe/bbpos/bbdevice/ota/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:Ljava/lang/String; = "com.stripe.bbpos.bbdevice.ota.h0"


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->b:I

    .line 4
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const-string v0, "[resetTimeoutCnt]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/h0;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[run] cnt : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/h0;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
