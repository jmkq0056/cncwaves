.class public final Lcom/stripe/proto/api/armada/EchoRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EchoRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/EchoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/EchoRequest;",
        "Lcom/stripe/proto/api/armada/EchoRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/EchoRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/EchoRequest;",
        "()V",
        "country",
        "",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "is_factory_build",
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
.field public country:Ljava/lang/String;

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public is_factory_build:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->country:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->build()Lcom/stripe/proto/api/armada/EchoRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/EchoRequest;
    .locals 5

    .line 149
    new-instance v0, Lcom/stripe/proto/api/armada/EchoRequest;

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 151
    iget-object v2, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->country:Ljava/lang/String;

    .line 152
    iget-boolean v3, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->is_factory_build:Z

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 149
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/armada/EchoRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/api/armada/EchoRequest$Builder;
    .locals 1

    const-string v0, "country"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p1, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/EchoRequest$Builder;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final is_factory_build(Z)Lcom/stripe/proto/api/armada/EchoRequest$Builder;
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/stripe/proto/api/armada/EchoRequest$Builder;->is_factory_build:Z

    return-object p0
.end method
