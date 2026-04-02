.class public final Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportedReaderConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ReportedReaderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ReportedReaderConfig;",
        "()V",
        "key_id",
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
.field public key_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;->build()Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ReportedReaderConfig;
    .locals 3

    .line 88
    new-instance v0, Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;->key_id:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 88
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/rest/ReportedReaderConfig;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final key_id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReportedReaderConfig$Builder;->key_id:Ljava/lang/String;

    return-object p0
.end method
