.class public final Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/Input;",
        "Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/Input;",
        "()V",
        "custom_text",
        "Lcom/stripe/proto/iot_relay/pub/api/CustomText;",
        "id",
        "",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/iot_relay/pub/api/Selection;",
        "toggles",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
        "type",
        "Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;",
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
.field public custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

.field public id:Ljava/lang/String;

.field public required:Z

.field public selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

.field public toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 160
    sget-object v0, Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->id:Ljava/lang/String;

    .line 166
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/Input;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/Input;
    .locals 8

    .line 199
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/Input;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    .line 201
    iget-boolean v2, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->required:Z

    .line 202
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    .line 203
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    .line 204
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->id:Ljava/lang/String;

    .line 205
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->toggles:Ljava/util/List;

    .line 206
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 199
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/iot_relay/pub/api/Input;-><init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_text(Lcom/stripe/proto/iot_relay/pub/api/CustomText;)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final required(Z)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->required:Z

    return-object p0
.end method

.method public final selection(Lcom/stripe/proto/iot_relay/pub/api/Selection;)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    return-object p0
.end method

.method public final toggles(Ljava/util/List;)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;)Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    return-object p0
.end method
