.class public final Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/CardPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
        "()V",
        "brand",
        "",
        "checks",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;",
        "country",
        "exp_month",
        "",
        "Ljava/lang/Integer;",
        "exp_year",
        "fingerprint",
        "funding",
        "generated_from",
        "Lcom/stripe/proto/model/rest/GeneratedFrom;",
        "last4",
        "three_d_secure_usage",
        "Lcom/stripe/proto/model/rest/ThreeDSecure;",
        "wallet",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;",
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

.field public checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

.field public country:Ljava/lang/String;

.field public exp_month:Ljava/lang/Integer;

.field public exp_year:Ljava/lang/Integer;

.field public fingerprint:Ljava/lang/String;

.field public funding:Ljava/lang/String;

.field public generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

.field public last4:Ljava/lang/String;

.field public three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

.field public wallet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final brand(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->build()Lcom/stripe/proto/model/rest/CardPaymentMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/CardPaymentMethod;
    .locals 13

    .line 357
    new-instance v0, Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 358
    iget-object v1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->brand:Ljava/lang/String;

    .line 359
    iget-object v2, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    .line 360
    iget-object v3, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->country:Ljava/lang/String;

    .line 361
    iget-object v4, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->exp_month:Ljava/lang/Integer;

    .line 362
    iget-object v5, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->exp_year:Ljava/lang/Integer;

    .line 363
    iget-object v6, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->fingerprint:Ljava/lang/String;

    .line 364
    iget-object v7, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->funding:Ljava/lang/String;

    .line 365
    iget-object v8, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    .line 366
    iget-object v9, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->last4:Ljava/lang/String;

    .line 367
    iget-object v10, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    .line 368
    iget-object v11, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->wallet:Ljava/lang/String;

    .line 369
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 357
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/rest/CardPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/GeneratedFrom;Ljava/lang/String;Lcom/stripe/proto/model/rest/ThreeDSecure;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final checks(Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->checks:Lcom/stripe/proto/model/rest/CardPaymentMethod$Checks;

    return-object p0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final exp_month(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->exp_month:Ljava/lang/Integer;

    return-object p0
.end method

.method public final exp_year(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->exp_year:Ljava/lang/Integer;

    return-object p0
.end method

.method public final fingerprint(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final funding(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->funding:Ljava/lang/String;

    return-object p0
.end method

.method public final generated_from(Lcom/stripe/proto/model/rest/GeneratedFrom;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->generated_from:Lcom/stripe/proto/model/rest/GeneratedFrom;

    return-object p0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->last4:Ljava/lang/String;

    return-object p0
.end method

.method public final three_d_secure_usage(Lcom/stripe/proto/model/rest/ThreeDSecure;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->three_d_secure_usage:Lcom/stripe/proto/model/rest/ThreeDSecure;

    return-object p0
.end method

.method public final wallet(Ljava/lang/String;)Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/stripe/proto/model/rest/CardPaymentMethod$Builder;->wallet:Ljava/lang/String;

    return-object p0
.end method
