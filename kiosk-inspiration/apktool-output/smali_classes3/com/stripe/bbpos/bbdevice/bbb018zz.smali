.class Lcom/stripe/bbpos/bbdevice/bbb018zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa038()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v1, "Received onPowerDown callback (3055)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v1, "Received onPowerDown callback (3155)"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa049()V

    return-void
.end method

.method aaa000(Z)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb070:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onPowerDown callback (3055)"

    invoke-virtual {p1, v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_1

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onPowerDown callback (3155)"

    invoke-virtual {p1, v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 17
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa049()V

    :cond_2
    return-void
.end method
