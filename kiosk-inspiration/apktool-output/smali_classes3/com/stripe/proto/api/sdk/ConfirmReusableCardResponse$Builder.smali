.class public final Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmReusableCardResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0012\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0012\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;",
        "()V",
        "confirm_error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "created_reusable_card",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "created_reusuable_card",
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

.field public created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

.field public created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

.field public request_id:Ljava/lang/String;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->request_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;
    .locals 7

    .line 213
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 215
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->request_id:Ljava/lang/String;

    .line 216
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 217
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    .line 218
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    .line 219
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 213
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethod;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/model/rest/PaymentMethod;Lokio/ByteString;)V

    return-object v0
.end method

.method public final confirm_error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    return-object p0
.end method

.method public final created_reusable_card(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->confirm_error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final created_reusuable_card(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "created_reusuable_card is deprecated"
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->created_reusuable_card:Lcom/stripe/proto/model/rest/PaymentMethod;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method
