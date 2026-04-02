.class Lcom/stripe/bbpos/bbdevice/aaa098zz;
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
.method aaa000(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa025()Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    if-ne v1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "nfcCardRemovalTimeout"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    const-string v1, "DF60"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 25
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput v1, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    .line 26
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb016:[B

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v2, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 27
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void

    .line 28
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method
