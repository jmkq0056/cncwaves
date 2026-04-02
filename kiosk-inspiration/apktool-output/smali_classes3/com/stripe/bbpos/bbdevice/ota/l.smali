.class Lcom/stripe/bbpos/bbdevice/ota/l;
.super Lcom/stripe/bbpos/bbdevice/ota/h0;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field e:Lcom/stripe/bbpos/bbdevice/ota/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/h0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/l;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/ota/b;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/stripe/bbpos/bbdevice/ota/h0;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[run] state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoutCnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/ota/l;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    iput v3, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    move v0, v3

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->a0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    const/16 v4, 0x30

    if-ne v0, v1, :cond_1

    .line 8
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    if-le v0, v4, :cond_4

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->b0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/b;->d()Lcom/stripe/bbpos/bbdevice/ota/b$a;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/b$a;->c0:Lcom/stripe/bbpos/bbdevice/ota/b$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_4

    goto :goto_1

    .line 17
    :cond_3
    :goto_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    if-le v0, v4, :cond_4

    :goto_1
    move v0, v2

    move v3, v0

    goto :goto_2

    :cond_4
    move v0, v3

    move v3, v2

    :goto_2
    if-eqz v3, :cond_5

    .line 26
    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->c:I

    :cond_5
    if-eqz v0, :cond_6

    .line 29
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/l;->e:Lcom/stripe/bbpos/bbdevice/ota/b;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "No response (6003)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/b;->c(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V

    .line 36
    :cond_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/h0;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
