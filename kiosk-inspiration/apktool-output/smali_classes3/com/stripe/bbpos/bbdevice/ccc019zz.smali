.class final Lcom/stripe/bbpos/bbdevice/ccc019zz;
.super Lcom/stripe/bbpos/bbdevice/ccc018zz;
.source "SourceFile"


# instance fields
.field private aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

.field private aaa001:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa009zz;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/ccc018zz;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa001:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method aaa000([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa001:Ljava/io/OutputStream;

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v2, "Connection drop (3061)"

    invoke-virtual {v1, v2, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc019zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 14
    :catch_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
