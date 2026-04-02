.class Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc028zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aaa001zz"
.end annotation


# instance fields
.field final synthetic aaa000:Lcom/stripe/bbpos/bbdevice/ccc028zz;


# direct methods
.method private constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa000zz;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc028zz;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x40

    .line 5
    :try_start_0
    new-array v0, v0, [B

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc028zz;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc028zz;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc028zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v2, v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
