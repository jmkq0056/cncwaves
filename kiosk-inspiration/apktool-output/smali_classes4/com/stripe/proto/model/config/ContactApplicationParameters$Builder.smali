.class public final Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ContactApplicationParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ContactApplicationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ContactApplicationParameters;",
        "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ContactApplicationParameters;",
        "()V",
        "aid",
        "",
        "asi",
        "Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;",
        "probable_oda_afls",
        "",
        "Lcom/stripe/proto/model/config/Afl;",
        "tac_default",
        "tac_denial",
        "tac_online",
        "tlvs",
        "Lcom/stripe/proto/model/config/Tlv;",
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
.field public aid:Ljava/lang/String;

.field public asi:Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;

.field public probable_oda_afls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Afl;",
            ">;"
        }
    .end annotation
.end field

.field public tac_default:Ljava/lang/String;

.field public tac_denial:Ljava/lang/String;

.field public tac_online:Ljava/lang/String;

.field public tlvs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->aid:Ljava/lang/String;

    .line 175
    sget-object v1, Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;->PARTIAL_MATCH:Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;

    iput-object v1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->asi:Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;

    .line 178
    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_denial:Ljava/lang/String;

    .line 181
    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_online:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_default:Ljava/lang/String;

    .line 187
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tlvs:Ljava/util/List;

    .line 190
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->probable_oda_afls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final aid(Ljava/lang/String;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1

    const-string v0, "aid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->aid:Ljava/lang/String;

    return-object p0
.end method

.method public final asi(Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1

    const-string v0, "asi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->asi:Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->build()Lcom/stripe/proto/model/config/ContactApplicationParameters;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ContactApplicationParameters;
    .locals 9

    .line 235
    new-instance v0, Lcom/stripe/proto/model/config/ContactApplicationParameters;

    .line 236
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->aid:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->asi:Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;

    .line 238
    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_denial:Ljava/lang/String;

    .line 239
    iget-object v4, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_online:Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_default:Ljava/lang/String;

    .line 241
    iget-object v6, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tlvs:Ljava/util/List;

    .line 242
    iget-object v7, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->probable_oda_afls:Ljava/util/List;

    .line 243
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 235
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/config/ContactApplicationParameters;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final probable_oda_afls(Ljava/util/List;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Afl;",
            ">;)",
            "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;"
        }
    .end annotation

    const-string v0, "probable_oda_afls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->probable_oda_afls:Ljava/util/List;

    return-object p0
.end method

.method public final tac_default(Ljava/lang/String;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1

    const-string v0, "tac_default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_default:Ljava/lang/String;

    return-object p0
.end method

.method public final tac_denial(Ljava/lang/String;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1

    const-string v0, "tac_denial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_denial:Ljava/lang/String;

    return-object p0
.end method

.method public final tac_online(Ljava/lang/String;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1

    const-string v0, "tac_online"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tac_online:Ljava/lang/String;

    return-object p0
.end method

.method public final tlvs(Ljava/util/List;)Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;)",
            "Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;"
        }
    .end annotation

    const-string v0, "tlvs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactApplicationParameters$Builder;->tlvs:Ljava/util/List;

    return-object p0
.end method
