.class public final Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeployGroupRelation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeployGroupRelation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DeployGroupRelation;",
        "Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DeployGroupRelation;",
        "()V",
        "deploy_group_id",
        "",
        "deploy_group_snapshot_id",
        "deploy_group_type",
        "Lcom/stripe/proto/model/common/DeployGroupType;",
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
.field public deploy_group_id:Ljava/lang/String;

.field public deploy_group_snapshot_id:Ljava/lang/String;

.field public deploy_group_type:Lcom/stripe/proto/model/common/DeployGroupType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_id:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_snapshot_id:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/stripe/proto/model/common/DeployGroupType;->DEPLOY_GROUP_TYPE_INVALID:Lcom/stripe/proto/model/common/DeployGroupType;

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_type:Lcom/stripe/proto/model/common/DeployGroupType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->build()Lcom/stripe/proto/model/common/DeployGroupRelation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DeployGroupRelation;
    .locals 5

    .line 128
    new-instance v0, Lcom/stripe/proto/model/common/DeployGroupRelation;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_id:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_snapshot_id:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_type:Lcom/stripe/proto/model/common/DeployGroupType;

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/common/DeployGroupRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/DeployGroupType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final deploy_group_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;
    .locals 1

    const-string v0, "deploy_group_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_id:Ljava/lang/String;

    return-object p0
.end method

.method public final deploy_group_snapshot_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;
    .locals 1

    const-string v0, "deploy_group_snapshot_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_snapshot_id:Ljava/lang/String;

    return-object p0
.end method

.method public final deploy_group_type(Lcom/stripe/proto/model/common/DeployGroupType;)Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;
    .locals 1

    const-string v0, "deploy_group_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployGroupRelation$Builder;->deploy_group_type:Lcom/stripe/proto/model/common/DeployGroupType;

    return-object p0
.end method
