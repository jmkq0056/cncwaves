.class final Lcom/stripe/jvmcore/restclient/DefaultRestConfig;
.super Ljava/lang/Object;
.source "RestConfig.kt"

# interfaces
.implements Lcom/stripe/jvmcore/restclient/RestConfig;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestConfig.kt\ncom/stripe/jvmcore/restclient/DefaultRestConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J$\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0010\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/DefaultRestConfig;",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "timeoutMs",
        "",
        "maxAttempts",
        "",
        "(Ljava/lang/Long;I)V",
        "getMaxAttempts",
        "()I",
        "getTimeoutMs",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Long;I)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "withMaxAttempts",
        "withTimeoutMs",
        "base"
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
.field private final maxAttempts:I

.field private final timeoutMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;-><init>(Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    .line 28
    iput p2, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    .line 31
    invoke-virtual {p0}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->getMaxAttempts()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxAttempts must be greater than zero."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;-><init>(Ljava/lang/Long;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/restclient/DefaultRestConfig;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->copy(Ljava/lang/Long;I)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    return v0
.end method

.method public final copy(Ljava/lang/Long;I)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;-><init>(Ljava/lang/Long;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    iget p1, p1, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getMaxAttempts()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    return v0
.end method

.method public getTimeoutMs()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultRestConfig(timeoutMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->timeoutMs:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxAttempts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->maxAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 35
    invoke-static {p0, v0, p1, v1, v0}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->copy$default(Lcom/stripe/jvmcore/restclient/DefaultRestConfig;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object p1
.end method

.method public withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 2

    .line 34
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/stripe/jvmcore/restclient/DefaultRestConfig;->copy$default(Lcom/stripe/jvmcore/restclient/DefaultRestConfig;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/DefaultRestConfig;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object p1
.end method
