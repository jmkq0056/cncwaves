.class public final Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UberLanguagePackAssetMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;",
        "()V",
        "language_codes",
        "",
        "",
        "name",
        "version_code",
        "build",
        "common_release"
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
.field public language_codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public version_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->name:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->version_code:Ljava/lang/String;

    .line 126
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->language_codes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;
    .locals 5

    .line 151
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->name:Ljava/lang/String;

    .line 153
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->version_code:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->language_codes:Ljava/util/List;

    .line 155
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 151
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final language_codes(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;"
        }
    .end annotation

    const-string v0, "language_codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->language_codes:Ljava/util/List;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final version_code(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;
    .locals 1

    const-string v0, "version_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata$Builder;->version_code:Ljava/lang/String;

    return-object p0
.end method
