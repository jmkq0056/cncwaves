.class Lcom/stripe/bbpos/bbdevice/bbb003zz;
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
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DF74"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "42"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v2, 0x0

    iput v2, v1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ddd032:[B

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v2, v2, v0}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v3, v1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void
.end method
