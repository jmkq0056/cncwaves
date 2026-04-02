.class Lcom/stripe/bbpos/bbdevice/ccc048zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:Z

.field private aaa001:Z

.field private aaa002:Ljava/lang/String;

.field private aaa003:Ljava/lang/String;

.field private aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;


# direct methods
.method constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa000:Z

    .line 3
    iput-boolean p2, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa001:Z

    .line 4
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa002:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa003:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void

    .line 9
    :cond_0
    iput-object p5, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void
.end method


# virtual methods
.method aaa000()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa003:Ljava/lang/String;

    return-object v0
.end method

.method aaa000(ZZLjava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa000:Z

    .line 2
    iput-boolean p2, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa001:Z

    .line 3
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa002:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa003:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void

    .line 8
    :cond_0
    iput-object p5, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    return-void
.end method

.method aaa001()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa001:Z

    return v0
.end method

.method public aaa002()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa000:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BB_Result{valid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa000:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa001:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa003:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', errorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc048zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
