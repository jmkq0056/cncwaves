.class public final Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;",
        "()V",
        "amount",
        "",
        "Ljava/lang/Integer;",
        "currency",
        "",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;",
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
.field public amount:Ljava/lang/Integer;

.field public currency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final amount(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->amount:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->build()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;
    .locals 4

    .line 636
    new-instance v0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;

    .line 637
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->amount:Ljava/lang/Integer;

    .line 638
    iget-object v2, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->currency:Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 636
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method
