.class public final Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "VectorRegionalConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0010J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "()V",
        "allow_quick_chip",
        "",
        "contact_parameters",
        "Lcom/stripe/proto/model/config/ContactApplicationParametersList;",
        "contact_public_keys",
        "Lcom/stripe/proto/model/config/CaPublicKeyList;",
        "contactless_combinations",
        "Lcom/stripe/proto/model/config/ContactlessCombinationsList;",
        "contactless_public_keys",
        "disable_oda",
        "enable_emv_tone",
        "hash",
        "",
        "region",
        "require_signature_on_swipe",
        "build",
        "terminal_release"
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
.field public allow_quick_chip:Z

.field public contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

.field public contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

.field public contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

.field public contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

.field public disable_oda:Z

.field public enable_emv_tone:Z

.field public hash:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public require_signature_on_swipe:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->region:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allow_quick_chip(Z)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->allow_quick_chip:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->build()Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .locals 12

    .line 285
    new-instance v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    .line 286
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    .line 287
    iget-object v2, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 288
    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    .line 289
    iget-object v4, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 290
    iget-boolean v5, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->allow_quick_chip:Z

    .line 291
    iget-boolean v6, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->require_signature_on_swipe:Z

    .line 292
    iget-boolean v7, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->disable_oda:Z

    .line 293
    iget-object v8, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->region:Ljava/lang/String;

    .line 294
    iget-object v9, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->hash:Ljava/lang/String;

    .line 295
    iget-boolean v10, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->enable_emv_tone:Z

    .line 296
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 285
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;-><init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v0
.end method

.method public final contact_parameters(Lcom/stripe/proto/model/config/ContactApplicationParametersList;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    return-object p0
.end method

.method public final contact_public_keys(Lcom/stripe/proto/model/config/CaPublicKeyList;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    return-object p0
.end method

.method public final contactless_combinations(Lcom/stripe/proto/model/config/ContactlessCombinationsList;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    return-object p0
.end method

.method public final contactless_public_keys(Lcom/stripe/proto/model/config/CaPublicKeyList;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    return-object p0
.end method

.method public final disable_oda(Z)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->disable_oda:Z

    return-object p0
.end method

.method public final enable_emv_tone(Z)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->enable_emv_tone:Z

    return-object p0
.end method

.method public final hash(Ljava/lang/String;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 1

    const-string v0, "hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final region(Ljava/lang/String;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 1

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final require_signature_on_swipe(Z)Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 0

    .line 261
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->require_signature_on_swipe:Z

    return-object p0
.end method
