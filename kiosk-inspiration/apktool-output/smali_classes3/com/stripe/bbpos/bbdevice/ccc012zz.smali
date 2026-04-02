.class final Lcom/stripe/bbpos/bbdevice/ccc012zz;
.super Lcom/stripe/bbpos/bbdevice/ccc011zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Ljava/io/InputStream;

.field private aaa002:Z

.field private aaa003:I


# direct methods
.method public static synthetic $r8$lambda$k2MeHOIvMlhF57DrkGTsSfPPNf4(Lcom/stripe/bbpos/bbdevice/ccc012zz;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa002()V

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
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa002:Z

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa003:I

    .line 17
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 18
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa001:Ljava/io/InputStream;

    return-void
.end method

.method private synthetic aaa002()V
    .locals 2

    const/16 v0, -0x10

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa002:Z

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa001:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    new-array v0, v0, [B

    .line 10
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa001:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    const/16 v1, 0x64

    .line 11
    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa003:I

    .line 13
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 14
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa000([B)V

    .line 15
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc025zz;->aaa000([B)V

    goto :goto_0

    .line 17
    :cond_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa003:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 18
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa003:I

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 21
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc012zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/stripe/bbpos/bbdevice/ccc012zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/ccc012zz;)V

    const-string v2, "Data-Receiver-Bluetooth-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method aaa001()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc012zz;->aaa002:Z

    return-void
.end method
