.class public final Lcom/stripe/proto/model/common/ApplicationStatus$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/ApplicationStatus;",
        "Lcom/stripe/proto/model/common/ApplicationStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/ApplicationStatus$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/ApplicationStatus;",
        "()V",
        "health_summary",
        "Lcom/stripe/proto/model/monitor/HealthSummary;",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
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
.field public health_summary:Lcom/stripe/proto/model/monitor/HealthSummary;

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->build()Lcom/stripe/proto/model/common/ApplicationStatus;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/ApplicationStatus;
    .locals 4

    .line 118
    new-instance v0, Lcom/stripe/proto/model/common/ApplicationStatus;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 120
    iget-object v2, p0, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->health_summary:Lcom/stripe/proto/model/monitor/HealthSummary;

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/common/ApplicationStatus;-><init>(Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/monitor/HealthSummary;Lokio/ByteString;)V

    return-object v0
.end method

.method public final health_summary(Lcom/stripe/proto/model/monitor/HealthSummary;)Lcom/stripe/proto/model/common/ApplicationStatus$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->health_summary:Lcom/stripe/proto/model/monitor/HealthSummary;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/model/common/ApplicationStatus$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/stripe/proto/model/common/ApplicationStatus$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
