.class public final Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CheckCertificateStatusRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;",
        "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;",
        "()V",
        "certificate_chain",
        "",
        "",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
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
.field public certificate_chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->certificate_chain:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->build()Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;
    .locals 4

    .line 128
    new-instance v0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;

    .line 129
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 130
    iget-object v2, p0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->certificate_chain:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 128
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final certificate_chain(Ljava/util/List;)Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;"
        }
    .end annotation

    const-string v0, "certificate_chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->certificate_chain:Ljava/util/List;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CheckCertificateStatusRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method
