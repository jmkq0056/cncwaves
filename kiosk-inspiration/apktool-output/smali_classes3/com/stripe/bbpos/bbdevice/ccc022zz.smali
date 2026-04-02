.class Lcom/stripe/bbpos/bbdevice/ccc022zz;
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
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    .line 3
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa001:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 0

    return-void
.end method

.method aaa000([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa063()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa004()Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa004(Z)V

    if-eqz p1, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc022zz;->aaa001:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
