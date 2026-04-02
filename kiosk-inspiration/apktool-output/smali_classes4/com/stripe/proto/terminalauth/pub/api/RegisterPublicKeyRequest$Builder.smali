.class public final Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RegisterPublicKeyRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "device_public_key",
        "Lokio/ByteString;",
        "device_public_key_signature",
        "signature_algorithm",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;",
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

.field public device_public_key:Lokio/ByteString;

.field public device_public_key_signature:Lokio/ByteString;

.field public signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 125
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key:Lokio/ByteString;

    .line 128
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key_signature:Lokio/ByteString;

    .line 131
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;->ALGORITHM_INVALID:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    iput-object v0, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->build()Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;
    .locals 6

    .line 153
    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 155
    iget-object v2, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key:Lokio/ByteString;

    .line 156
    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key_signature:Lokio/ByteString;

    .line 157
    iget-object v4, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    .line 158
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final device_public_key(Lokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
    .locals 1

    const-string v0, "device_public_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key:Lokio/ByteString;

    return-object p0
.end method

.method public final device_public_key_signature(Lokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
    .locals 1

    const-string v0, "device_public_key_signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key_signature:Lokio/ByteString;

    return-object p0
.end method

.method public final signature_algorithm(Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
    .locals 1

    const-string v0, "signature_algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    return-object p0
.end method
