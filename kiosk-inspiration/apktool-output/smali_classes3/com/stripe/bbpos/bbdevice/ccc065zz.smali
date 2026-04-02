.class final Lcom/stripe/bbpos/bbdevice/ccc065zz;
.super Lcom/stripe/bbpos/bbdevice/ccc062zz;
.source "SourceFile"


# direct methods
.method constructor <init>(BB)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc062zz;-><init>(BB)V

    return-void
.end method


# virtual methods
.method protected aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;
    .locals 3

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc065zz;

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v1

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa003()B

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc065zz;-><init>(BB)V

    return-object v0
.end method

.method protected aaa001()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v0

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa003()B

    move-result v1

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc058zz;->aaa000(BB)[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc065zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v0

    return-object v0
.end method
