.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;",
        "()V",
        "failure_code",
        "",
        "failure_message",
        "generated_card",
        "id",
        "inputs",
        "",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
        "payment_method_id",
        "refund_id",
        "routing_info",
        "status",
        "surcharge",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;",
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
.field public failure_code:Ljava/lang/String;

.field public failure_message:Ljava/lang/String;

.field public generated_card:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public payment_method_id:Ljava/lang/String;

.field public refund_id:Ljava/lang/String;

.field public routing_info:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 228
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->inputs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;
    .locals 12

    .line 290
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;

    .line 291
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->id:Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->status:Ljava/lang/String;

    .line 293
    iget-object v3, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_code:Ljava/lang/String;

    .line 294
    iget-object v4, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_message:Ljava/lang/String;

    .line 295
    iget-object v5, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->generated_card:Ljava/lang/String;

    .line 296
    iget-object v6, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->refund_id:Ljava/lang/String;

    .line 297
    iget-object v7, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->payment_method_id:Ljava/lang/String;

    .line 298
    iget-object v8, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->inputs:Ljava/util/List;

    .line 299
    iget-object v9, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->routing_info:Ljava/lang/String;

    .line 300
    iget-object v10, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    .line 301
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 290
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;Lokio/ByteString;)V

    return-object v0
.end method

.method public final failure_code(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_code:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_message(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->failure_message:Ljava/lang/String;

    return-object p0
.end method

.method public final generated_card(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->generated_card:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final inputs(Ljava/util/List;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;",
            ">;)",
            "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->inputs:Ljava/util/List;

    return-object p0
.end method

.method public final payment_method_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->payment_method_id:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->refund_id:Ljava/lang/String;

    return-object p0
.end method

.method public final routing_info(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->routing_info:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final surcharge(Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Builder;->surcharge:Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;

    return-object p0
.end method
