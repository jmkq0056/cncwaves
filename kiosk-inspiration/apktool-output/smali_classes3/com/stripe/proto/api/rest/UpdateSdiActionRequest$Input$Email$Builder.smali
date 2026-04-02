.class public final Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateSdiActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;",
        "()V",
        "value_",
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
.field public value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1351
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1351
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;->build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;
    .locals 3

    .line 1360
    new-instance v0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;

    .line 1361
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;->value_:Ljava/lang/String;

    .line 1362
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 1360
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final value_(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;
    .locals 0

    .line 1356
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email$Builder;->value_:Ljava/lang/String;

    return-object p0
.end method
