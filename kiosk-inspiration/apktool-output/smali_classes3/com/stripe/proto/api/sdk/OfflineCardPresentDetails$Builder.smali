.class public final Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineCardPresentDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000b\u001a\u00020\u00002\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;",
        "()V",
        "brand",
        "",
        "cardholder_name",
        "exp_month",
        "",
        "exp_year",
        "last4",
        "preferred_locales",
        "",
        "read_method",
        "receipt_details",
        "Lcom/stripe/proto/api/sdk/ReceiptDetails;",
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
.field public brand:Ljava/lang/String;

.field public cardholder_name:Ljava/lang/String;

.field public exp_month:I

.field public exp_year:I

.field public last4:Ljava/lang/String;

.field public preferred_locales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public read_method:Ljava/lang/String;

.field public receipt_details:Lcom/stripe/proto/api/sdk/ReceiptDetails;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 225
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->preferred_locales:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final brand(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->build()Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;
    .locals 10

    .line 295
    new-instance v0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    .line 296
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->brand:Ljava/lang/String;

    .line 297
    iget v2, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->exp_month:I

    .line 298
    iget v3, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->exp_year:I

    .line 299
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->last4:Ljava/lang/String;

    .line 300
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->read_method:Ljava/lang/String;

    .line 301
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->cardholder_name:Ljava/lang/String;

    .line 302
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->receipt_details:Lcom/stripe/proto/api/sdk/ReceiptDetails;

    .line 303
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->preferred_locales:Ljava/util/List;

    .line 304
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 295
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/sdk/ReceiptDetails;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cardholder_name(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->cardholder_name:Ljava/lang/String;

    return-object p0
.end method

.method public final exp_month(I)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 240
    iput p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->exp_month:I

    return-object p0
.end method

.method public final exp_year(I)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 248
    iput p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->exp_year:I

    return-object p0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->last4:Ljava/lang/String;

    return-object p0
.end method

.method public final preferred_locales(Ljava/util/List;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;"
        }
    .end annotation

    const-string v0, "preferred_locales"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->preferred_locales:Ljava/util/List;

    return-object p0
.end method

.method public final read_method(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->read_method:Ljava/lang/String;

    return-object p0
.end method

.method public final receipt_details(Lcom/stripe/proto/api/sdk/ReceiptDetails;)Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails$Builder;->receipt_details:Lcom/stripe/proto/api/sdk/ReceiptDetails;

    return-object p0
.end method
