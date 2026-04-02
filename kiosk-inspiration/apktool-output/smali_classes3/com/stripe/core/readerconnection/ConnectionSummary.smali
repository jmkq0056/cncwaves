.class public final Lcom/stripe/core/readerconnection/ConnectionSummary;
.super Ljava/lang/Object;
.source "ConnectionSummary.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0017\u0010\u0017\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\n0\tH\u00c6\u0003JC\u0010\u0018\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\n0\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001f\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "state",
        "Lcom/stripe/core/readerconnection/ConnectionState;",
        "device",
        "Lcom/stripe/core/hardware/Reader;",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)V",
        "getConnectionType",
        "()Lcom/stripe/core/hardware/ConnectionType;",
        "getDevice",
        "()Lcom/stripe/core/hardware/Reader;",
        "getReaderClasses",
        "()Ljava/util/List;",
        "getState",
        "()Lcom/stripe/core/readerconnection/ConnectionState;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "readerconnection_release"
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
.field private final connectionType:Lcom/stripe/core/hardware/ConnectionType;

.field private final device:Lcom/stripe/core/hardware/Reader;

.field private final readerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lcom/stripe/core/readerconnection/ConnectionState;


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/ConnectionType;",
            "Lcom/stripe/core/readerconnection/ConnectionState;",
            "Lcom/stripe/core/hardware/Reader;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerClasses"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    .line 14
    iput-object p2, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    .line 16
    iput-object p3, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    .line 18
    iput-object p4, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/core/readerconnection/ConnectionSummary;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerconnection/ConnectionSummary;->copy(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/hardware/ConnectionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    return-object v0
.end method

.method public final component2()Lcom/stripe/core/readerconnection/ConnectionState;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    return-object v0
.end method

.method public final component3()Lcom/stripe/core/hardware/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)Lcom/stripe/core/readerconnection/ConnectionSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/hardware/ConnectionType;",
            "Lcom/stripe/core/readerconnection/ConnectionState;",
            "Lcom/stripe/core/hardware/Reader;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)",
            "Lcom/stripe/core/readerconnection/ConnectionSummary;"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerClasses"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/readerconnection/ConnectionSummary;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/core/readerconnection/ConnectionSummary;-><init>(Lcom/stripe/core/hardware/ConnectionType;Lcom/stripe/core/readerconnection/ConnectionState;Lcom/stripe/core/hardware/Reader;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/readerconnection/ConnectionSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/readerconnection/ConnectionSummary;

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    iget-object v3, p1, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    iget-object v3, p1, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    iget-object v3, p1, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConnectionType()Lcom/stripe/core/hardware/ConnectionType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    return-object v0
.end method

.method public final getDevice()Lcom/stripe/core/hardware/Reader;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    return-object v0
.end method

.method public final getReaderClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    return-object v0
.end method

.method public final getState()Lcom/stripe/core/readerconnection/ConnectionState;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/core/hardware/ConnectionType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    invoke-virtual {v2}, Lcom/stripe/core/readerconnection/ConnectionState;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/core/hardware/Reader;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectionSummary(connectionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->connectionType:Lcom/stripe/core/hardware/ConnectionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->state:Lcom/stripe/core/readerconnection/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->device:Lcom/stripe/core/hardware/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readerClasses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/core/readerconnection/ConnectionSummary;->readerClasses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
