.class Lcom/stripe/bbpos/bbdevice/ccc015zz;
.super Lcom/stripe/bbpos/bbdevice/ccc011zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Ljava/io/InputStream;

.field private aaa002:Z


# direct methods
.method public static synthetic $r8$lambda$TpWkOzz5oiNIDe5NThFw7HEnbxs(Lcom/stripe/bbpos/bbdevice/ccc015zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa002()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc011zz;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa002:Z

    .line 16
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 17
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa001:Ljava/io/InputStream;

    return-void
.end method

.method private synthetic aaa002()V
    .locals 4

    const/16 v0, -0x10

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa002:Z

    if-nez v0, :cond_2

    const/16 v0, 0x1770

    .line 4
    :try_start_0
    new-array v1, v0, [B

    .line 5
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa001:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 8
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa026:Z

    if-nez v2, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa007(Z)V

    .line 19
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa012(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa084()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc015zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc015zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc015zz;)V

    const-string v2, "Data-Receiver-Test-Channel-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method aaa001()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc015zz;->aaa002:Z

    return-void
.end method
