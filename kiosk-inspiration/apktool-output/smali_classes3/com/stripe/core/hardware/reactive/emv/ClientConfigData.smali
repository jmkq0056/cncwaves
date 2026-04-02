.class public final Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;
.super Ljava/lang/Object;
.source "ClientConfigData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClientConfigData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientConfigData.kt\ncom/stripe/core/hardware/reactive/emv/ClientConfigData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0000J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010\u0014\u001a\u00020\u0003R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
        "",
        "configHash",
        "",
        "imageId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getConfigHash",
        "()Ljava/lang/String;",
        "getImageId",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "merge",
        "newData",
        "toString",
        "toTagValue",
        "Companion",
        "hardware-reactive_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLIENT_CONFIG_DELIMITER:Ljava/lang/String; = "20"

.field public static final Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

.field private static final TAG:Ljava/lang/String; = "ConfigurationHandler"


# instance fields
.field private final configHash:Ljava/lang/String;

.field private final imageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfigHash()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final merge(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;
    .locals 5

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/4 v4, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    .line 24
    :cond_3
    iget-object p1, p1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    move-object v4, p1

    :cond_6
    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    .line 22
    :cond_7
    invoke-virtual {p0, v0, v4}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientConfigData(configHash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toTagValue()Ljava/lang/String;
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->configHash:Ljava/lang/String;

    const-string v1, "toUpperCase(...)"

    const-string v2, "US"

    if-eqz v0, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 15
    :cond_1
    iget-object v3, p0, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->imageId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/stripe/core/bytearray/Extensions;->INSTANCE:Lcom/stripe/core/bytearray/Extensions;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "getBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/stripe/core/bytearray/Extensions;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method
