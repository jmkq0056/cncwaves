.class public final Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;",
        "()V",
        "accepted_at",
        "",
        "offline",
        "",
        "",
        "online",
        "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;",
        "type",
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
.field public accepted_at:J

.field public offline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 439
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->type:Ljava/lang/String;

    .line 447
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accepted_at(J)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;
    .locals 0

    .line 464
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->accepted_at:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;
    .locals 7

    .line 484
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;

    .line 485
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->type:Ljava/lang/String;

    .line 486
    iget-wide v2, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->accepted_at:J

    .line 487
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    .line 488
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    .line 489
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 484
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance;-><init>(Ljava/lang/String;JLjava/util/Map;Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;Lokio/ByteString;)V

    return-object v0
.end method

.method public final offline(Ljava/util/Map;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;"
        }
    .end annotation

    const-string v0, "offline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->offline:Ljava/util/Map;

    return-object p0
.end method

.method public final online(Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->online:Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest$Mandate$MandateCustomerAcceptance$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
