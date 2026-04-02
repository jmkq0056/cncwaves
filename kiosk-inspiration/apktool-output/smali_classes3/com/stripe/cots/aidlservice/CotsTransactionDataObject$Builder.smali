.class public final Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsTransactionDataObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;",
        "()V",
        "tag",
        "",
        "value_",
        "Lokio/ByteString;",
        "build",
        "proto_release"
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
.field public tag:I

.field public value_:Lokio/ByteString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 92
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->value_:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->build()Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;
    .locals 4

    .line 104
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;

    .line 105
    iget v1, p0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->tag:I

    .line 106
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->value_:Lokio/ByteString;

    .line 107
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 104
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;-><init>(ILokio/ByteString;Lokio/ByteString;)V

    return-object v0
.end method

.method public final tag(I)Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;
    .locals 0

    .line 95
    iput p1, p0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->tag:I

    return-object p0
.end method

.method public final value_(Lokio/ByteString;)Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;
    .locals 1

    const-string v0, "value_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject$Builder;->value_:Lokio/ByteString;

    return-object p0
.end method
