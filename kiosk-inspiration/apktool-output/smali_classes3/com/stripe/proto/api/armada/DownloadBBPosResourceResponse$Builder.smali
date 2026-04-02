.class public final Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DownloadBBPosResourceResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;",
        "()V",
        "encrypted_resource_hex",
        "",
        "resource_type",
        "Lcom/stripe/proto/api/armada/BBPosResourceType;",
        "version",
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
.field public encrypted_resource_hex:Ljava/lang/String;

.field public resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->encrypted_resource_hex:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/stripe/proto/api/armada/BBPosResourceType;->FIRMWARE:Lcom/stripe/proto/api/armada/BBPosResourceType;

    iput-object v1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    .line 119
    iput-object v0, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->build()Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;
    .locals 5

    .line 145
    new-instance v0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->encrypted_resource_hex:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    .line 148
    iget-object v3, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->version:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 145
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/armada/BBPosResourceType;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final encrypted_resource_hex(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;
    .locals 1

    const-string v0, "encrypted_resource_hex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->encrypted_resource_hex:Ljava/lang/String;

    return-object p0
.end method

.method public final resource_type(Lcom/stripe/proto/api/armada/BBPosResourceType;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;
    .locals 1

    const-string v0, "resource_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->resource_type:Lcom/stripe/proto/api/armada/BBPosResourceType;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/api/armada/DownloadBBPosResourceResponse$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
