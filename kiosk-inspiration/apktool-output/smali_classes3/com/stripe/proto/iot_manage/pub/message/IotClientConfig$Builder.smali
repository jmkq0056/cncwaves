.class public final Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IotClientConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;",
        "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;",
        "()V",
        "certificate_id",
        "",
        "client_name",
        "iot_endpoint",
        "topic_filters",
        "",
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
.field public certificate_id:Ljava/lang/String;

.field public client_name:Ljava/lang/String;

.field public iot_endpoint:Ljava/lang/String;

.field public topic_filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->client_name:Ljava/lang/String;

    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->topic_filters:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->iot_endpoint:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->certificate_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->build()Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;
    .locals 6

    .line 156
    new-instance v0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;

    .line 157
    iget-object v1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->client_name:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->topic_filters:Ljava/util/List;

    .line 159
    iget-object v3, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->iot_endpoint:Ljava/lang/String;

    .line 160
    iget-object v4, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->certificate_id:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final certificate_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;
    .locals 1

    const-string v0, "certificate_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->certificate_id:Ljava/lang/String;

    return-object p0
.end method

.method public final client_name(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;
    .locals 1

    const-string v0, "client_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->client_name:Ljava/lang/String;

    return-object p0
.end method

.method public final iot_endpoint(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;
    .locals 1

    const-string v0, "iot_endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->iot_endpoint:Ljava/lang/String;

    return-object p0
.end method

.method public final topic_filters(Ljava/util/List;)Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;"
        }
    .end annotation

    const-string v0, "topic_filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/IotClientConfig$Builder;->topic_filters:Ljava/util/List;

    return-object p0
.end method
