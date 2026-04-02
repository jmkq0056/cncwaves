.class public final Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;",
        "()V",
        "address_line1_check",
        "",
        "address_postal_code_check",
        "cvc_check",
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
.field public address_line1_check:Ljava/lang/String;

.field public address_postal_code_check:Ljava/lang/String;

.field public cvc_check:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final address_line1_check(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->address_line1_check:Ljava/lang/String;

    return-object p0
.end method

.method public final address_postal_code_check(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->address_postal_code_check:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->build()Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;
    .locals 5

    .line 611
    new-instance v0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    .line 612
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->address_line1_check:Ljava/lang/String;

    .line 613
    iget-object v2, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->address_postal_code_check:Ljava/lang/String;

    .line 614
    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->cvc_check:Ljava/lang/String;

    .line 615
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 611
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cvc_check(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks$Builder;->cvc_check:Ljava/lang/String;

    return-object p0
.end method
