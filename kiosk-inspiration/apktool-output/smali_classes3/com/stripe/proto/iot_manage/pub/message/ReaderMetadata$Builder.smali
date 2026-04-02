.class public final Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;",
        "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;",
        "()V",
        "deploy_group_id",
        "",
        "device_id",
        "device_type",
        "location_id",
        "merchant_id",
        "platform_id",
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
.field public deploy_group_id:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field public location_id:Ljava/lang/String;

.field public merchant_id:Ljava/lang/String;

.field public platform_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_id:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->location_id:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->merchant_id:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->platform_id:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_type:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->deploy_group_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->build()Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;
    .locals 8

    .line 205
    new-instance v0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_id:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->location_id:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->merchant_id:Ljava/lang/String;

    .line 209
    iget-object v4, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->platform_id:Ljava/lang/String;

    .line 210
    iget-object v5, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_type:Ljava/lang/String;

    .line 211
    iget-object v6, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->deploy_group_id:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final deploy_group_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "deploy_group_id is deprecated"
    .end annotation

    const-string v0, "deploy_group_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->deploy_group_id:Ljava/lang/String;

    return-object p0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1

    const-string v0, "device_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final location_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1

    const-string v0, "location_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->location_id:Ljava/lang/String;

    return-object p0
.end method

.method public final merchant_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1

    const-string v0, "merchant_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->merchant_id:Ljava/lang/String;

    return-object p0
.end method

.method public final platform_id(Ljava/lang/String;)Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;
    .locals 1

    const-string v0, "platform_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/iot_manage/pub/message/ReaderMetadata$Builder;->platform_id:Ljava/lang/String;

    return-object p0
.end method
