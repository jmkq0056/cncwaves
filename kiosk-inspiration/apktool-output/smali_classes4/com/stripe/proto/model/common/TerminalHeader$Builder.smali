.class public final Lcom/stripe/proto/model/common/TerminalHeader$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TerminalHeader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/TerminalHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/TerminalHeader;",
        "Lcom/stripe/proto/model/common/TerminalHeader$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0006R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/TerminalHeader$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/TerminalHeader;",
        "()V",
        "authenticated_compartment_ids",
        "",
        "",
        "controlling_platform_id",
        "livemode",
        "",
        "merchant_id",
        "operator_id",
        "platform_id",
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
.field public authenticated_compartment_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public controlling_platform_id:Ljava/lang/String;

.field public livemode:Z

.field public merchant_id:Ljava/lang/String;

.field public operator_id:Ljava/lang/String;

.field public platform_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->merchant_id:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->platform_id:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->operator_id:Ljava/lang/String;

    .line 176
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->authenticated_compartment_ids:Ljava/util/List;

    .line 179
    iput-object v0, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->controlling_platform_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final authenticated_compartment_ids(Ljava/util/List;)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/common/TerminalHeader$Builder;"
        }
    .end annotation

    const-string v0, "authenticated_compartment_ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->authenticated_compartment_ids:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->build()Lcom/stripe/proto/model/common/TerminalHeader;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/TerminalHeader;
    .locals 8

    .line 221
    new-instance v0, Lcom/stripe/proto/model/common/TerminalHeader;

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->merchant_id:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->platform_id:Ljava/lang/String;

    .line 224
    iget-boolean v3, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->livemode:Z

    .line 225
    iget-object v4, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->operator_id:Ljava/lang/String;

    .line 226
    iget-object v5, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->authenticated_compartment_ids:Ljava/util/List;

    .line 227
    iget-object v6, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->controlling_platform_id:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 221
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/common/TerminalHeader;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final controlling_platform_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 1

    const-string v0, "controlling_platform_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->controlling_platform_id:Ljava/lang/String;

    return-object p0
.end method

.method public final livemode(Z)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->livemode:Z

    return-object p0
.end method

.method public final merchant_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 1

    const-string v0, "merchant_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->merchant_id:Ljava/lang/String;

    return-object p0
.end method

.method public final operator_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 1

    const-string v0, "operator_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->operator_id:Ljava/lang/String;

    return-object p0
.end method

.method public final platform_id(Ljava/lang/String;)Lcom/stripe/proto/model/common/TerminalHeader$Builder;
    .locals 1

    const-string v0, "platform_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/model/common/TerminalHeader$Builder;->platform_id:Ljava/lang/String;

    return-object p0
.end method
