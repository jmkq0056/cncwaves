.class public final Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateCardReaderTokenRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;",
        "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "merchant_display_name",
        "",
        "on_behalf_of",
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

.field public merchant_display_name:Ljava/lang/String;

.field public on_behalf_of:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->merchant_display_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->build()Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;
    .locals 5

    .line 143
    new-instance v0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 145
    iget-object v2, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->on_behalf_of:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->merchant_display_name:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 143
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final merchant_display_name(Ljava/lang/String;)Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;
    .locals 1

    const-string v0, "merchant_display_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->merchant_display_name:Ljava/lang/String;

    return-object p0
.end method

.method public final on_behalf_of(Ljava/lang/String;)Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;
    .locals 1

    const-string v0, "on_behalf_of"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CreateCardReaderTokenRequest$Builder;->on_behalf_of:Ljava/lang/String;

    return-object p0
.end method
