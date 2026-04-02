.class Lcom/stripe/bbpos/bbdevice/bbb037zz;
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF27"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "DF3E"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 3
    const-string v2, "BF0C"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 19
    iget-object v3, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {v3, v4, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_0

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/util/ArrayList;Z)V

    return-void

    :cond_0
    const/16 v3, 0xc

    if-nez v1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 38
    :cond_2
    :try_start_0
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    .line 47
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    move v4, v2

    .line 55
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 57
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move v0, v2

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_9

    .line 60
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    .line 67
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 70
    :cond_6
    iget-object p1, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v5, v2

    .line 73
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_9

    .line 74
    aget-byte v6, p1, v5

    if-eqz v6, :cond_7

    .line 75
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 77
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 78
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_a

    .line 86
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 90
    :cond_a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_b

    .line 92
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/util/ArrayList;Z)V

    :cond_b
    return-void

    .line 93
    :catch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa068:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void
.end method
