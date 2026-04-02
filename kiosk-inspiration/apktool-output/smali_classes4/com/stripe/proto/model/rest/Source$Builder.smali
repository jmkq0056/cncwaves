.class public final Lcom/stripe/proto/model/rest/Source$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/rest/Source;",
        "Lcom/stripe/proto/model/rest/Source$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\nJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Source$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/rest/Source;",
        "()V",
        "card_present",
        "Lcom/stripe/proto/model/rest/Source$CardPresent;",
        "id",
        "",
        "interac_present",
        "metadata",
        "",
        "owner",
        "Lcom/stripe/proto/model/rest/Owner;",
        "type",
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
.field public card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

.field public id:Ljava/lang/String;

.field public interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public owner:Lcom/stripe/proto/model/rest/Owner;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 185
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/rest/Source$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source$Builder;->build()Lcom/stripe/proto/model/rest/Source;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/rest/Source;
    .locals 8

    .line 240
    new-instance v0, Lcom/stripe/proto/model/rest/Source;

    .line 241
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->id:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/stripe/proto/model/rest/Source$Builder;->type:Ljava/lang/String;

    .line 243
    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source$Builder;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 244
    iget-object v4, p0, Lcom/stripe/proto/model/rest/Source$Builder;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 245
    iget-object v5, p0, Lcom/stripe/proto/model/rest/Source$Builder;->metadata:Ljava/util/Map;

    .line 246
    iget-object v6, p0, Lcom/stripe/proto/model/rest/Source$Builder;->owner:Lcom/stripe/proto/model/rest/Owner;

    .line 247
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 240
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/rest/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_present(Lcom/stripe/proto/model/rest/Source$CardPresent;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final interac_present(Lcom/stripe/proto/model/rest/Source$CardPresent;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    const/4 p1, 0x0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/rest/Source$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final owner(Lcom/stripe/proto/model/rest/Owner;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->owner:Lcom/stripe/proto/model/rest/Owner;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
