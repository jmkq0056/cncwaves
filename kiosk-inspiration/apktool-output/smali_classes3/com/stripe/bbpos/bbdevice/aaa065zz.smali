.class Lcom/stripe/bbpos/bbdevice/aaa065zz;
.super Lcom/stripe/bbpos/bbdevice/aaa012zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa012zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    .line 2
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa004:[B

    new-array v4, v1, [B

    invoke-direct {v2, v3, v1, v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v2, "Command powerDown is called (3053)"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v2, "Command powerDown is called (3153)"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
