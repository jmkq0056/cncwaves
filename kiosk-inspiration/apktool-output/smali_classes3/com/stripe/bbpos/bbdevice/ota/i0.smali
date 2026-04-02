.class final Lcom/stripe/bbpos/bbdevice/ota/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ota/i0$a;
    }
.end annotation


# instance fields
.field a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lorg/json/JSONObject;

.field f:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/i0$a;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->e:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->f:I

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/i0$a;->b:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->d:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->c:Ljava/lang/String;

    .line 19
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/i0$a;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    .line 20
    const-string p1, "[WebServiceStatus] [setEnd] return true"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    const-string p1, "[WebServiceStatus] [setEnd] return false"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/i0$a;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/i0$a;->b:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    .line 3
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->e:Lorg/json/JSONObject;

    .line 5
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->f:I

    const/4 p1, 0x1

    if-ltz p3, :cond_0

    if-le p3, p1, :cond_1

    .line 7
    :cond_0
    iput v2, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->f:I

    .line 9
    :cond_1
    const-string p2, ""

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->d:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->c:Ljava/lang/String;

    .line 11
    const-string p2, "[WebServiceStatus] [setBegin] return true"

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return p1

    .line 14
    :cond_2
    const-string p1, "[WebServiceStatus] [setBegin] return false"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/r;->c(Ljava/lang/String;)V

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebServiceStatus{state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->a:Lcom/stripe/bbpos/bbdevice/ota/i0$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', completedService=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', jsonObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", part="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/i0;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
