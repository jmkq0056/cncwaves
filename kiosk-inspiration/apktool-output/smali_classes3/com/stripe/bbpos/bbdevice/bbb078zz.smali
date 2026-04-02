.class Lcom/stripe/bbpos/bbdevice/bbb078zz;
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
    const-string p2, "DE"

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p2

    .line 2
    const-string v0, "DF8666"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5
    :try_start_0
    iget-object p2, p2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(ZLjava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(ZLjava/lang/String;)V

    return-void

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 15
    :catch_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(ZLjava/lang/String;)V

    return-void
.end method
