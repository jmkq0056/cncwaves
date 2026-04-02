.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;",
        "()V",
        "customer_acceptance",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
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
.field public customer_acceptance:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;
    .locals 3

    .line 277
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;

    .line 278
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;->customer_acceptance:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    .line 279
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 277
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate;-><init>(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;Lokio/ByteString;)V

    return-object v0
.end method

.method public final customer_acceptance(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$Builder;->customer_acceptance:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    return-object p0
.end method
