.class public final Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmInteracRefundResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;",
        "()V",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "decline_response",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "interac_refund",
        "Lcom/stripe/proto/model/rest/Refund;",
        "request_id",
        "",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
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
.field public confirm_error:Lcom/stripe/proto/model/sdk/Error;

.field public decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

.field public interac_refund:Lcom/stripe/proto/model/rest/Refund;

.field public request_id:Ljava/lang/String;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->request_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;
    .locals 7

    .line 222
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 224
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->request_id:Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->interac_refund:Lcom/stripe/proto/model/rest/Refund;

    .line 226
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 227
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 228
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/Refund;Lcom/stripe/proto/model/rest/ErrorWrapper;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public final confirm_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->interac_refund:Lcom/stripe/proto/model/rest/Refund;

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    return-object p0
.end method

.method public final decline_response(Lcom/stripe/proto/model/rest/ErrorWrapper;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    const/4 p1, 0x0

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->interac_refund:Lcom/stripe/proto/model/rest/Refund;

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final interac_refund(Lcom/stripe/proto/model/rest/Refund;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->interac_refund:Lcom/stripe/proto/model/rest/Refund;

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->decline_response:Lcom/stripe/proto/model/rest/ErrorWrapper;

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmInteracRefundResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method
