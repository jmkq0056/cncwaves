.class Lcom/stripe/bbpos/bbdevice/bbb009zz;
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, ""

    .line 1
    const-string v0, "DE"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    :try_start_0
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;)V

    .line 21
    const-string v0, "DF822D"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa002(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 29
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa000zz;)V

    .line 30
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
