.class public final Lcom/stripe/proto/model/config/JcbParameters$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "JcbParameters.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/JcbParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/JcbParameters;",
        "Lcom/stripe/proto/model/config/JcbParameters$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/JcbParameters$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/JcbParameters;",
        "()V",
        "contactless_cvm_required_limit",
        "",
        "contactless_floor_limit",
        "contactless_transaction_limit",
        "tac_default",
        "tac_denial",
        "tac_online",
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
.field public contactless_cvm_required_limit:Ljava/lang/String;

.field public contactless_floor_limit:Ljava/lang/String;

.field public contactless_transaction_limit:Ljava/lang/String;

.field public tac_default:Ljava/lang/String;

.field public tac_denial:Ljava/lang/String;

.field public tac_online:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_transaction_limit:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_default:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_denial:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_online:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/JcbParameters$Builder;->build()Lcom/stripe/proto/model/config/JcbParameters;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/JcbParameters;
    .locals 8

    .line 233
    new-instance v0, Lcom/stripe/proto/model/config/JcbParameters;

    .line 234
    iget-object v1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_transaction_limit:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    .line 237
    iget-object v4, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_default:Ljava/lang/String;

    .line 238
    iget-object v5, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_denial:Ljava/lang/String;

    .line 239
    iget-object v6, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_online:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/JcbParameters$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 233
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/config/JcbParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final contactless_cvm_required_limit(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "contactless_cvm_required_limit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_cvm_required_limit:Ljava/lang/String;

    return-object p0
.end method

.method public final contactless_floor_limit(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "contactless_floor_limit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_floor_limit:Ljava/lang/String;

    return-object p0
.end method

.method public final contactless_transaction_limit(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "contactless_transaction_limit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->contactless_transaction_limit:Ljava/lang/String;

    return-object p0
.end method

.method public final tac_default(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "tac_default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_default:Ljava/lang/String;

    return-object p0
.end method

.method public final tac_denial(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "tac_denial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_denial:Ljava/lang/String;

    return-object p0
.end method

.method public final tac_online(Ljava/lang/String;)Lcom/stripe/proto/model/config/JcbParameters$Builder;
    .locals 1

    const-string v0, "tac_online"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/model/config/JcbParameters$Builder;->tac_online:Ljava/lang/String;

    return-object p0
.end method
