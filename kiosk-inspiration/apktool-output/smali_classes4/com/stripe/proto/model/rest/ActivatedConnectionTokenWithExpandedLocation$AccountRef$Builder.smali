.class public final Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ActivatedConnectionTokenWithExpandedLocation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;",
        "()V",
        "store_id",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
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
.field public store_id:Lcom/stripe/proto/model/merchant/ApiLocationPb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;->build()Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;
    .locals 3

    .line 498
    new-instance v0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    .line 499
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;->store_id:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 500
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 498
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;-><init>(Lcom/stripe/proto/model/merchant/ApiLocationPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final store_id(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef$Builder;->store_id:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object p0
.end method
