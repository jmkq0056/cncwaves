.class Lcom/stripe/bbpos/bbdevice/bbb060zz;
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
.method aaa000(Ljava/util/List;ZLcom/stripe/bbpos/bbdevice/aaa010zz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z",
            "Lcom/stripe/bbpos/bbdevice/aaa010zz;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Ljava/util/Hashtable;Ljava/util/HashMap;)Ljava/util/Hashtable;

    move-result-object p1

    .line 2
    const-string p2, "bID"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    const-string p2, "bootloaderVersion"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    const-string p2, "hardwareID"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    const-string p2, "DF8645"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "deviceTamperStatus"

    invoke-virtual {p1, p3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    .line 19
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 20
    array-length p3, p2

    :goto_0
    if-ge v0, p3, :cond_6

    aget-object v1, p2, v0

    .line 21
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v3, "mcuInfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_6
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011(Ljava/util/Hashtable;)V

    return-void
.end method
