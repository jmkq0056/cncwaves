.class Lcom/stripe/bbpos/bbdevice/bbb092zz;
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
.method aaa000(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF52"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/16 v0, 0xc

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa048:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 24
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 25
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 26
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 27
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 28
    :cond_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa048:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_5

    .line 49
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;)V

    .line 50
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa070()V

    :cond_5
    return-void

    .line 53
    :cond_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa048:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void
.end method

.method aaa001(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF52"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 21
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 22
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 23
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    goto :goto_0

    .line 24
    :cond_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    :goto_0
    if-nez p2, :cond_5

    .line 43
    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;

    if-eq p1, p2, :cond_5

    .line 44
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;)V

    .line 45
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa070()V

    :cond_5
    :goto_1
    return-void
.end method
