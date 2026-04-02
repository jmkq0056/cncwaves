.class public final Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CompleteCertificateOrderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u0012\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;",
        "()V",
        "certificate_chain",
        "",
        "",
        "retry_after",
        "",
        "retry_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "status",
        "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;",
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

.field public retry_after:J

.field public retry_at:Lcom/stripe/proto/model/common/InstantPb;

.field public status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 142
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->certificate_chain:Ljava/util/List;

    .line 145
    sget-object v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;->PENDING:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->build()Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;
    .locals 7

    .line 187
    new-instance v0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->certificate_chain:Ljava/util/List;

    .line 189
    iget-object v2, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    .line 190
    iget-object v3, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 191
    iget-wide v4, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_after:J

    .line 192
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse;-><init>(Ljava/util/List;Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;Lcom/stripe/proto/model/common/InstantPb;JLokio/ByteString;)V

    return-object v0
.end method

.method public final certificate_chain(Ljava/util/List;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;"
        }
    .end annotation

    const-string v0, "certificate_chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->certificate_chain:Ljava/util/List;

    return-object p0
.end method

.method public final retry_after(J)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
    .locals 0

    .line 183
    iput-wide p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_after:J

    return-object p0
.end method

.method public final retry_at(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "retry_at is deprecated"
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->retry_at:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final status(Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;)Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Builder;->status:Lcom/stripe/proto/api/armada/CompleteCertificateOrderResponse$Status;

    return-object p0
.end method
