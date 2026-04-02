.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "()V",
        "card_present",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;",
        "interac_present",
        "type",
        "",
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
.field public card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

.field public interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1798
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1798
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
    .locals 5

    .line 1832
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 1833
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    .line 1834
    iget-object v2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    .line 1835
    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    .line 1836
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 1832
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_present(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    return-object p0
.end method

.method public final interac_present(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;
    .locals 0

    .line 1828
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$CardPresent;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;
    .locals 0

    .line 1812
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
