.class Lcom/stripe/bbpos/bbdevice/aaa096zz;
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

    .line 5
    :try_start_0
    const-string v1, "numOfReceipt"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    const-string v2, "DF19"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, v0

    .line 16
    :goto_0
    const-string v2, "reprintTimeout"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    const-string v2, "DF62"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 31
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v0, 0x0

    iput v0, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    .line 32
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa039:[B

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v3, v0, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object v2, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 33
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa010zz;)V

    return-void

    .line 34
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method
