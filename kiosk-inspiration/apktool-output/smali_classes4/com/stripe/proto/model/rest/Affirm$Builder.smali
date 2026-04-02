.class public final Lcom/stripe/proto/model/rest/Affirm$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Affirm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Affirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "Lcom/stripe/proto/model/rest/Affirm$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Affirm$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "()V",
        "location",
        "",
        "reader_",
        "transaction_id",
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
.field public location:Ljava/lang/String;

.field public reader_:Ljava/lang/String;

.field public transaction_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Affirm$Builder;->build()Lcom/stripe/proto/model/rest/Affirm;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Affirm;
    .locals 5

    .line 123
    new-instance v0, Lcom/stripe/proto/model/rest/Affirm;

    .line 124
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->location:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->reader_:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->transaction_id:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Affirm$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 123
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/rest/Affirm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final location(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Affirm$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Affirm$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->reader_:Ljava/lang/String;

    return-object p0
.end method

.method public final transaction_id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Affirm$Builder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Affirm$Builder;->transaction_id:Ljava/lang/String;

    return-object p0
.end method
