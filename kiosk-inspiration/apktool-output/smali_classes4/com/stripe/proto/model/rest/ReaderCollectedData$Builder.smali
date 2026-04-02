.class public final Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderCollectedData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/ReaderCollectedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "()V",
        "created",
        "",
        "Ljava/lang/Long;",
        "id",
        "",
        "livemode",
        "",
        "Ljava/lang/Boolean;",
        "type",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;",
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
.field public created:Ljava/lang/Long;

.field public id:Ljava/lang/String;

.field public livemode:Ljava/lang/Boolean;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->build()Lcom/stripe/proto/model/rest/ReaderCollectedData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/ReaderCollectedData;
    .locals 6

    .line 168
    new-instance v0, Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->id:Ljava/lang/String;

    .line 170
    iget-object v2, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->created:Ljava/lang/Long;

    .line 171
    iget-object v3, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->livemode:Ljava/lang/Boolean;

    .line 172
    iget-object v4, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->type:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/rest/ReaderCollectedData;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final created(Ljava/lang/Long;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->created:Ljava/lang/Long;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Ljava/lang/Boolean;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->livemode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/model/rest/ReaderCollectedData$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
