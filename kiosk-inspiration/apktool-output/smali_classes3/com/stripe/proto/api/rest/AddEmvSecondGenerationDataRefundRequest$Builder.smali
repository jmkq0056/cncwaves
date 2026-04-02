.class public final Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AddEmvSecondGenerationDataRefundRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0010J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006J\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;",
        "()V",
        "expand",
        "",
        "",
        "id",
        "is_approved",
        "",
        "Ljava/lang/Boolean;",
        "refund_application_fee",
        "rejection_reason",
        "reverse_transfer",
        "second_generation_data",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;",
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
.field public expand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public is_approved:Ljava/lang/Boolean;

.field public refund_application_fee:Ljava/lang/Boolean;

.field public rejection_reason:Ljava/lang/String;

.field public reverse_transfer:Ljava/lang/Boolean;

.field public second_generation_data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 182
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->expand:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->build()Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;
    .locals 9

    .line 259
    new-instance v0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->expand:Ljava/util/List;

    .line 261
    iget-object v2, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->is_approved:Ljava/lang/Boolean;

    .line 262
    iget-object v3, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->second_generation_data:Ljava/lang/String;

    .line 263
    iget-object v4, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->rejection_reason:Ljava/lang/String;

    .line 264
    iget-object v5, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->id:Ljava/lang/String;

    .line 265
    iget-object v6, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    .line 266
    iget-object v7, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    .line 267
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 259
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final is_approved(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->is_approved:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final refund_application_fee(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final rejection_reason(Ljava/lang/String;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->rejection_reason:Ljava/lang/String;

    return-object p0
.end method

.method public final reverse_transfer(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final second_generation_data(Ljava/lang/String;)Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest$Builder;->second_generation_data:Ljava/lang/String;

    return-object p0
.end method
