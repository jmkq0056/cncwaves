.class public final Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
.super Ljava/lang/Object;
.source "RefundConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "",
        "enableCustomerCancellation",
        "",
        "(Z)V",
        "getEnableCustomerCancellation",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toBuilder",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;",
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


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/RefundConfiguration;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->copy(Z)Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final copy(Z)Lcom/stripe/stripeterminal/external/models/RefundConfiguration;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    iget-boolean p1, p1, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    return v0
.end method

.method public final toBuilder()Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;
    .locals 2

    .line 30
    new-instance v0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;-><init>()V

    .line 31
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;->setEnableCustomerCancellation(Z)Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RefundConfiguration(enableCustomerCancellation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/RefundConfiguration;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
