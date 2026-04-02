.class public final Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportConfigRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/ReportConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/ReportConfigRequest;",
        "Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u0016\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/ReportConfigRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "reported_config",
        "",
        "Lcom/stripe/proto/model/common/ReportedConfigFile;",
        "build",
        "terminal_release"
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
.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public reported_config:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ReportedConfigFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->reported_config:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->build()Lcom/stripe/proto/api/armada/ReportConfigRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/ReportConfigRequest;
    .locals 4

    .line 136
    new-instance v0, Lcom/stripe/proto/api/armada/ReportConfigRequest;

    .line 137
    iget-object v1, p0, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 138
    iget-object v2, p0, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->reported_config:Ljava/util/List;

    .line 139
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 136
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/armada/ReportConfigRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "device_info is deprecated"
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final reported_config(Ljava/util/List;)Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/common/ReportedConfigFile;",
            ">;)",
            "Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "reported_config is deprecated"
    .end annotation

    const-string v0, "reported_config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/api/armada/ReportConfigRequest$Builder;->reported_config:Ljava/util/List;

    return-object p0
.end method
