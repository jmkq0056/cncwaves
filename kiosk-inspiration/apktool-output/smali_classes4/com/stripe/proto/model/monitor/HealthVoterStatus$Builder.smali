.class public final Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HealthVoterStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/monitor/HealthVoterStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "()V",
        "detail",
        "",
        "health_status",
        "Lcom/stripe/proto/model/monitor/HealthStatus;",
        "metrics",
        "",
        "Lcom/stripe/proto/model/monitor/HealthMetric;",
        "name",
        "build",
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


# instance fields
.field public detail:Ljava/lang/String;

.field public health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

.field public metrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthMetric;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->name:Ljava/lang/String;

    .line 140
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->metrics:Ljava/util/List;

    .line 143
    sget-object v1, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    iput-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 146
    iput-object v0, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->detail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->build()Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/monitor/HealthVoterStatus;
    .locals 6

    .line 181
    new-instance v0, Lcom/stripe/proto/model/monitor/HealthVoterStatus;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->name:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->metrics:Ljava/util/List;

    .line 184
    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 185
    iget-object v4, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->detail:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/monitor/HealthVoterStatus;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final detail(Ljava/lang/String;)Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
    .locals 1

    const-string v0, "detail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->detail:Ljava/lang/String;

    return-object p0
.end method

.method public final health_status(Lcom/stripe/proto/model/monitor/HealthStatus;)Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
    .locals 1

    const-string v0, "health_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    return-object p0
.end method

.method public final metrics(Ljava/util/List;)Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthMetric;",
            ">;)",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;"
        }
    .end annotation

    const-string v0, "metrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->metrics:Ljava/util/List;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthVoterStatus$Builder;->name:Ljava/lang/String;

    return-object p0
.end method
