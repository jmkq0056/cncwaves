.class Lcom/stripe/bbpos/bbdevice/aaa041zz;
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
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v2, 0x1

    iput v2, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015:I

    .line 4
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa016:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DF824A"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb044:[B

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v3, v2, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iput v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015:I

    .line 10
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa016:Ljava/util/List;

    .line 11
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb044:[B

    new-array v4, v1, [B

    invoke-direct {v2, v3, v1, v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void
.end method
