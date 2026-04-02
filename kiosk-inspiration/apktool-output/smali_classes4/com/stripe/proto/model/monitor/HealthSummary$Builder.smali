.class public final Lcom/stripe/proto/model/monitor/HealthSummary$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HealthSummary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/monitor/HealthSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/monitor/HealthSummary;",
        "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/monitor/HealthSummary;",
        "()V",
        "health_status",
        "Lcom/stripe/proto/model/monitor/HealthStatus;",
        "health_voters",
        "",
        "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
        "role",
        "",
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
.field public health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

.field public health_voters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;"
        }
    .end annotation
.end field

.field public role:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->role:Ljava/lang/String;

    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_voters:Ljava/util/List;

    .line 129
    sget-object v0, Lcom/stripe/proto/model/monitor/HealthStatus;->HEALTH_STATUS_INVALID:Lcom/stripe/proto/model/monitor/HealthStatus;

    iput-object v0, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->build()Lcom/stripe/proto/model/monitor/HealthSummary;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/monitor/HealthSummary;
    .locals 5

    .line 156
    new-instance v0, Lcom/stripe/proto/model/monitor/HealthSummary;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->role:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_voters:Ljava/util/List;

    .line 159
    iget-object v3, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    .line 160
    invoke-virtual {p0}, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 156
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/monitor/HealthSummary;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/stripe/proto/model/monitor/HealthStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final health_status(Lcom/stripe/proto/model/monitor/HealthStatus;)Lcom/stripe/proto/model/monitor/HealthSummary$Builder;
    .locals 1

    const-string v0, "health_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_status:Lcom/stripe/proto/model/monitor/HealthStatus;

    return-object p0
.end method

.method public final health_voters(Ljava/util/List;)Lcom/stripe/proto/model/monitor/HealthSummary$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/monitor/HealthVoterStatus;",
            ">;)",
            "Lcom/stripe/proto/model/monitor/HealthSummary$Builder;"
        }
    .end annotation

    const-string v0, "health_voters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->health_voters:Ljava/util/List;

    return-object p0
.end method

.method public final role(Ljava/lang/String;)Lcom/stripe/proto/model/monitor/HealthSummary$Builder;
    .locals 1

    const-string v0, "role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/model/monitor/HealthSummary$Builder;->role:Ljava/lang/String;

    return-object p0
.end method
