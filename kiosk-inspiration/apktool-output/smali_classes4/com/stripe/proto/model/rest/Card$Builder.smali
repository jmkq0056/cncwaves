.class public final Lcom/stripe/proto/model/rest/Card$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Card.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Card;",
        "Lcom/stripe/proto/model/rest/Card$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Card$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Card;",
        "()V",
        "brand",
        "",
        "country",
        "exp_month",
        "",
        "Ljava/lang/Integer;",
        "exp_year",
        "fingerprint",
        "funding",
        "last4",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Card$Builder;",
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

.field public country:Ljava/lang/String;

.field public exp_month:Ljava/lang/Integer;

.field public exp_year:Ljava/lang/Integer;

.field public fingerprint:Ljava/lang/String;

.field public funding:Ljava/lang/String;

.field public last4:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final brand(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Card$Builder;->build()Lcom/stripe/proto/model/rest/Card;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Card;
    .locals 9

    .line 251
    new-instance v0, Lcom/stripe/proto/model/rest/Card;

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->last4:Ljava/lang/String;

    .line 253
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Card$Builder;->brand:Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Card$Builder;->country:Ljava/lang/String;

    .line 255
    iget-object v4, p0, Lcom/stripe/proto/model/rest/Card$Builder;->exp_month:Ljava/lang/Integer;

    .line 256
    iget-object v5, p0, Lcom/stripe/proto/model/rest/Card$Builder;->exp_year:Ljava/lang/Integer;

    .line 257
    iget-object v6, p0, Lcom/stripe/proto/model/rest/Card$Builder;->fingerprint:Ljava/lang/String;

    .line 258
    iget-object v7, p0, Lcom/stripe/proto/model/rest/Card$Builder;->funding:Ljava/lang/String;

    .line 259
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Card$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 251
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/rest/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public final exp_month(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->exp_month:Ljava/lang/Integer;

    return-object p0
.end method

.method public final exp_year(Ljava/lang/Integer;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->exp_year:Ljava/lang/Integer;

    return-object p0
.end method

.method public final fingerprint(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->fingerprint:Ljava/lang/String;

    return-object p0
.end method

.method public final funding(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->funding:Ljava/lang/String;

    return-object p0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Card$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Card$Builder;->last4:Ljava/lang/String;

    return-object p0
.end method
