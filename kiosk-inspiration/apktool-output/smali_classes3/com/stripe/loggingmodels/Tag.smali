.class public abstract Lcom/stripe/loggingmodels/Tag;
.super Ljava/lang/Object;
.source "Tag.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Tag$BuildVariant;,
        Lcom/stripe/loggingmodels/Tag$CotsTag;,
        Lcom/stripe/loggingmodels/Tag$HealthTag;,
        Lcom/stripe/loggingmodels/Tag$HttpTimingTag;,
        Lcom/stripe/loggingmodels/Tag$IotStateMachineTag;,
        Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;,
        Lcom/stripe/loggingmodels/Tag$StripeErrorCode;,
        Lcom/stripe/loggingmodels/Tag$StripeErrorType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0008\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006\u0082\u0001\t\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Tag;",
        "",
        "key",
        "",
        "(Ljava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "value",
        "getValue",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "BuildVariant",
        "CotsTag",
        "HealthTag",
        "HttpTimingTag",
        "IotStateMachineTag",
        "StripeDeclineCode",
        "StripeErrorCode",
        "StripeErrorType",
        "Lcom/stripe/loggingmodels/Tag$BuildVariant;",
        "Lcom/stripe/loggingmodels/Tag$CotsTag;",
        "Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;",
        "Lcom/stripe/loggingmodels/Tag$HealthTag;",
        "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;",
        "Lcom/stripe/loggingmodels/Tag$IotStateMachineTag;",
        "Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;",
        "Lcom/stripe/loggingmodels/Tag$StripeErrorCode;",
        "Lcom/stripe/loggingmodels/Tag$StripeErrorType;",
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
.field private final key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/loggingmodels/Tag;->key:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/loggingmodels/Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/stripe/loggingmodels/Tag;->key:Ljava/lang/String;

    check-cast p1, Lcom/stripe/loggingmodels/Tag;

    iget-object v3, p1, Lcom/stripe/loggingmodels/Tag;->key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/loggingmodels/Tag;->key:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/stripe/loggingmodels/Tag;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    invoke-virtual {p0}, Lcom/stripe/loggingmodels/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
