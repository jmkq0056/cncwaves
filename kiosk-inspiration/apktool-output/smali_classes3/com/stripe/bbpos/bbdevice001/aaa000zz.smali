.class Lcom/stripe/bbpos/bbdevice001/aaa000zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;
    }
.end annotation


# direct methods
.method static aaa000()Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;
    .locals 7

    .line 1
    const-string v0, "persist.bbpos.product_id"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice001/aaa000zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v3, "SML0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa007:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 4
    :cond_0
    const-string v3, "WSC6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 5
    const-string v4, "WTH1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 6
    const-string v5, "WTP1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    const-string v6, "WGO1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 10
    :cond_2
    const-string v6, "WGP1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 13
    :cond_3
    const-string v6, "ro.product.model"

    invoke-static {v6, v1}, Lcom/stripe/bbpos/bbdevice001/aaa000zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    .line 20
    :cond_4
    const-string v3, "RK3326_GO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa006:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 25
    :cond_5
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "P1000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 26
    const-string v3, "WiseposPlus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 27
    const-string v3, "WiseposNeo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 28
    const-string v3, "WiseposTouch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 29
    const-string v3, " "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiseposE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 30
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiseposEPlus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 31
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WiseposE+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 32
    const-string v1, "WSC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 33
    const-string v1, "WSS5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 36
    :cond_6
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "mt6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 38
    :cond_7
    const-string v1, "MT6771"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa004:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 41
    :cond_8
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 42
    :cond_9
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa003:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 43
    :cond_a
    :goto_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa005:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0

    .line 44
    :cond_b
    :goto_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;->aaa005:Lcom/stripe/bbpos/bbdevice001/aaa000zz$aaa000zz;

    return-object v0
.end method

.method static aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 45
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 47
    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method
