.class final Lcom/stripe/bbpos/bbdevice/ccc014zz;
.super Lcom/stripe/bbpos/bbdevice/ccc011zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Ljava/io/InputStream;

.field private aaa002:Z

.field private aaa003:I


# direct methods
.method public static synthetic $r8$lambda$6sYLrN_7JQY_21SxWs_F6zo8VaE(Lcom/stripe/bbpos/bbdevice/ccc014zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa002()V

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
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa002:Z

    const/16 v0, 0x78

    .line 7
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa003:I

    .line 20
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 21
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa001:Ljava/io/InputStream;

    return-void
.end method

.method private synthetic aaa002()V
    .locals 7

    const/16 v0, -0x10

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa002:Z

    if-nez v0, :cond_6

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa001:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/16 v3, 0x1770

    .line 6
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7
    new-array v3, v0, [B

    .line 8
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa001:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 9
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa003:I

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    const/16 v6, 0xc8

    .line 15
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v6, v5, [B

    .line 16
    invoke-static {v3, v4, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 18
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v5, v6}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    add-int/lit16 v4, v4, 0xc8

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    if-ne v0, v4, :cond_5

    .line 22
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc025zz;->aaa000([B)V

    goto :goto_2

    .line 29
    :cond_2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa003:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 30
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa003:I

    .line 31
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    goto :goto_2

    :cond_4
    const/16 v0, 0xa

    .line 37
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    .line 40
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa050()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa004(Z)V

    .line 42
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa003:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const/16 v0, 0x64

    .line 46
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc014zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc014zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc014zz;)V

    const-string v2, "Data-Receiver-Serial-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method aaa000(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa001:Ljava/io/InputStream;

    return-void
.end method

.method aaa001()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc014zz;->aaa002:Z

    return-void
.end method
