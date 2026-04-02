.class public final Lcom/stripe/stripeterminal/external/models/CollectConfiguration;
.super Ljava/lang/Object;
.source "CollectConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001+BK\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010\"\u001a\u00020\rH\u00c6\u0003J]\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010$\u001a\u00020\u00032\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\'H\u00d6\u0001J\u0006\u0010(\u001a\u00020)J\t\u0010*\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;",
        "",
        "skipTipping",
        "",
        "moto",
        "updatePaymentIntent",
        "tippingConfiguration",
        "Lcom/stripe/stripeterminal/external/models/TippingConfiguration;",
        "enableCustomerCancellation",
        "requestDynamicCurrencyConversion",
        "surchargeNotice",
        "",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "getAllowRedisplay",
        "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "getEnableCustomerCancellation",
        "()Z",
        "getMoto",
        "getRequestDynamicCurrencyConversion",
        "getSkipTipping",
        "getSurchargeNotice",
        "()Ljava/lang/String;",
        "getTippingConfiguration",
        "()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;",
        "getUpdatePaymentIntent",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toBuilder",
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;",
        "toString",
        "Builder",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private final enableCustomerCancellation:Z

.field private final moto:Z

.field private final requestDynamicCurrencyConversion:Z

.field private final skipTipping:Z

.field private final surchargeNotice:Ljava/lang/String;

.field private final tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

.field private final updatePaymentIntent:Z


# direct methods
.method private constructor <init>(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    .line 14
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    .line 15
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    .line 16
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    .line 17
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    .line 18
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    .line 19
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    .line 20
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-void
.end method

.method public synthetic constructor <init>(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;-><init>(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/CollectConfiguration;ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/CollectConfiguration;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-boolean p5, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->copy(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/models/CollectConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    return v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final copy(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/models/CollectConfiguration;
    .locals 10

    const-string v0, "allowRedisplay"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;-><init>(ZZZLcom/stripe/stripeterminal/external/models/TippingConfiguration;ZZLjava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getMoto()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    return v0
.end method

.method public final getRequestDynamicCurrencyConversion()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    return v0
.end method

.method public final getSkipTipping()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    return v0
.end method

.method public final getSurchargeNotice()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final getTippingConfiguration()Lcom/stripe/stripeterminal/external/models/TippingConfiguration;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    return-object v0
.end method

.method public final getUpdatePaymentIntent()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/TippingConfiguration;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toBuilder()Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;
    .locals 2

    .line 137
    new-instance v0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;-><init>()V

    .line 138
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->skipTipping(Z)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 139
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->setMoto(Z)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 140
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->updatePaymentIntent(Z)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->setTippingConfiguration(Lcom/stripe/stripeterminal/external/models/TippingConfiguration;)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->setEnableCustomerCancellation(Z)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 143
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->setRequestDynamicCurrencyConversion(Z)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->setSurchargeNotice(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CollectConfiguration(skipTipping="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->skipTipping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->moto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatePaymentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->updatePaymentIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tippingConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->tippingConfiguration:Lcom/stripe/stripeterminal/external/models/TippingConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestDynamicCurrencyConversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->requestDynamicCurrencyConversion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surchargeNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->surchargeNotice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowRedisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CollectConfiguration;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
