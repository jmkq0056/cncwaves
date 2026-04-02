.class public final Lcom/stripe/proto/model/monitor/HealthVoterStatus;
.super Lcom/squareup/wire/Message;
.source "HealthVoterStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;,
        Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B=\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;",
        "name",
        "",
        "metrics",
        "",
        "Lcom/stripe/proto/model/monitor/HealthMetric;",
        "health_status",
        "Lcom/stripe/proto/model/monitor/HealthStatus;",
        "detail",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final detail:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final health_status:Lcom/stripe/proto/model/monitor/HealthStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.monitor.HealthStatus#ADAPTER"
        jsonName = "healthStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final metrics:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.monitor.HealthMetric#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthMetric;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;
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

    new-instance v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->Companion:Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion;

    .line 193
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 192
    const-class v1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 196
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 192
    new-instance v3, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthMetric;",
            ">;",
            "Lcom/stripe/proto/model/monitor/HealthStatus;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "health_status"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "detail"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 62
    iput-object p4, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    .line 82
    invoke-static {v0, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 34
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 58
    sget-object p3, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 70
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/monitor/HealthVoterStatus;Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 128
    iget-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 129
    iget-object p2, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 130
    iget-object p3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 131
    iget-object p4, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 127
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->copy(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/monitor/HealthVoterStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthMetric;",
            ">;",
            "Lcom/stripe/proto/model/monitor/HealthStatus;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "health_status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 96
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    invoke-virtual {p1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    iget-object v3, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    if-eq v1, v3, :cond_5

    return v2

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->hashCode:I

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 110
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 111
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/model/monitor/HealthStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->newBuilder()Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
    .locals 2

    .line 85
    new-instance v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->name:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->metrics:Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->detail:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 120
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metrics="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->metrics:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "health_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detail="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;->detail:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "HealthVoterStatus{"

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
