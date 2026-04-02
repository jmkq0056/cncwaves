.class public final Lcom/stripe/proto/model/monitor/HealthSummary;
.super Lcom/squareup/wire/Message;
.source "HealthSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/monitor/HealthSummary$Builder;,
        Lcom/stripe/proto/model/monitor/HealthSummary$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/monitor/HealthSummary;",
        "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ4\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/proto/model/monitor/HealthSummary;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;",
        "role",
        "",
        "health_voters",
        "",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "health_status",
        "Lcom/stripe/proto/model/monitor/HealthStatus;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "common_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/monitor/HealthSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/monitor/HealthSummary$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final health_status:Lcom/stripe/proto/model/monitor/HealthStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.monitor.HealthStatus#ADAPTER"
        jsonName = "healthStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final health_voters:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.monitor.HealthVoterStatus#ADAPTER"
        jsonName = "healthVoters"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final role:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/monitor/HealthSummary$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/monitor/HealthSummary$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/monitor/HealthSummary;->Companion:Lcom/stripe/proto/model/monitor/HealthSummary$Companion;

    .line 167
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 166
    const-class v1, Lcom/stripe/proto/model/monitor/HealthSummary;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 170
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 166
    new-instance v3, Lcom/stripe/proto/model/monitor/HealthSummary$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/monitor/HealthSummary$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/monitor/HealthSummary;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/model/monitor/HealthSummary;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;",
            "Lcom/stripe/proto/model/monitor/HealthStatus;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health_voters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "health_status"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/stripe/proto/model/monitor/HealthSummary;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 73
    invoke-static {v0, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 45
    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 58
    sget-object p3, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 59
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 34
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/monitor/HealthSummary;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/monitor/HealthSummary;Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/monitor/HealthSummary;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 115
    iget-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 116
    iget-object p2, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 117
    iget-object p3, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 114
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/model/monitor/HealthSummary;->copy(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)Lcom/stripe/proto/model/monitor/HealthSummary;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)Lcom/stripe/proto/model/monitor/HealthSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;",
            "Lcom/stripe/proto/model/monitor/HealthStatus;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/monitor/HealthSummary;"
        }
    .end annotation

    const-string v0, "role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health_voters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health_status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/stripe/proto/model/monitor/HealthSummary;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/model/monitor/HealthSummary;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/monitor/HealthSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/monitor/HealthSummary;

    invoke-virtual {p1}, Lcom/stripe/proto/model/monitor/HealthSummary;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 90
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    iget-object p1, p1, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 95
    iget v0, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->hashCode:I

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/model/monitor/HealthStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    iput v0, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary;->newBuilder()Lcom/stripe/proto/model/monitor/HealthSummary$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/monitor/HealthSummary$Builder;
    .locals 2

    .line 76
    new-instance v0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->role:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_voters:Ljava/util/List;

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 80
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 108
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "role="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->role:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v2, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "health_voters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_voters:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "health_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthSummary;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "HealthSummary{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
