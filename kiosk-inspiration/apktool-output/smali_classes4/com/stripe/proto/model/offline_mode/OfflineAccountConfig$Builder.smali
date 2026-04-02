.class public final Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineAccountConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;",
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;",
        "()V",
        "account_id",
        "",
        "account_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "id",
        "",
        "build",
        "internal_release"
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
.field public account_id:Ljava/lang/String;

.field public account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

.field public id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->account_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;
    .locals 1

    const-string v0, "account_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public final account_offline_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->build()Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;
    .locals 6

    .line 128
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    .line 129
    iget-wide v1, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->id:J

    .line 130
    iget-object v3, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->account_id:Ljava/lang/String;

    .line 131
    iget-object v4, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;-><init>(JLjava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final id(J)Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig$Builder;->id:J

    return-object p0
.end method
