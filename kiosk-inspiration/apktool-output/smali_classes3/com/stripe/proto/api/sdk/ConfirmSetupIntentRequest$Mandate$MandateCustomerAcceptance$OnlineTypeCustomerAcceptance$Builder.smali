.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;",
        "()V",
        "ip_address",
        "",
        "user_agent",
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
.field public ip_address:Ljava/lang/String;

.field public user_agent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 638
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 640
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->ip_address:Ljava/lang/String;

    .line 643
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->user_agent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;
    .locals 4

    .line 661
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    .line 662
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->ip_address:Ljava/lang/String;

    .line 663
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->user_agent:Ljava/lang/String;

    .line 664
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 661
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;
    .locals 1

    const-string v0, "ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final user_agent(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;
    .locals 1

    const-string v0, "user_agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance$Builder;->user_agent:Ljava/lang/String;

    return-object p0
.end method
