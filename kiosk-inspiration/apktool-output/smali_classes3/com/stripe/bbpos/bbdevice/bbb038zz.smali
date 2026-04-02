.class Lcom/stripe/bbpos/bbdevice/bbb038zz;
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF851E"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb005:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iput v2, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005:I

    .line 6
    new-instance p2, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa063:[B

    iget-object v3, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p2, v0, v2, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    iput-object p2, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa010zz;

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iput-object v1, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa038()V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa011:Z

    if-nez p2, :cond_4

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa058()V

    return-void

    .line 15
    :cond_1
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->CASHBACK_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V

    return-void

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 19
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->TIPS_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V

    return-void

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa058()V

    :cond_4
    return-void
.end method
