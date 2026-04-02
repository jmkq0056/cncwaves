.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;
.super Ljava/lang/Object;
.source "SetupIntentConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0012B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "",
        "enableCustomerCancellation",
        "",
        "moto",
        "(ZZ)V",
        "getEnableCustomerCancellation",
        "()Z",
        "getMoto",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final enableCustomerCancellation:Z

.field private final moto:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    .line 13
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;ZZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->copy(ZZ)Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    return v0
.end method

.method public final copy(ZZ)Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;-><init>(ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    iget-boolean p1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getMoto()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupIntentConfiguration(enableCustomerCancellation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;->moto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
