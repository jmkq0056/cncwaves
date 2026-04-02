.class public final Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BbposKeyProfileMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "()V",
        "id",
        "",
        "is_dual_slot_pek",
        "",
        "is_test",
        "name",
        "p2pe_type",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;",
        "pek0_keyset_id",
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
.field public id:Ljava/lang/String;

.field public is_dual_slot_pek:Z

.field public is_test:Z

.field public name:Ljava/lang/String;

.field public p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

.field public pek0_keyset_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->name:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->id:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->pek0_keyset_id:Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .locals 8

    .line 223
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->name:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->id:Ljava/lang/String;

    .line 226
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->pek0_keyset_id:Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    .line 228
    iget-boolean v5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_dual_slot_pek:Z

    .line 229
    iget-boolean v6, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_test:Z

    .line 230
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 223
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final is_dual_slot_pek(Z)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_dual_slot_pek:Z

    return-object p0
.end method

.method public final is_test(Z)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_test:Z

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final p2pe_type(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 1

    const-string v0, "p2pe_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    return-object p0
.end method

.method public final pek0_keyset_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 1

    const-string v0, "pek0_keyset_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->pek0_keyset_id:Ljava/lang/String;

    return-object p0
.end method
