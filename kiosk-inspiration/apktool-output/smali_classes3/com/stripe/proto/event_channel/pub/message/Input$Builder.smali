.class public final Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/Input;",
        "Lcom/stripe/proto/event_channel/pub/message/Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Input$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/Input;",
        "()V",
        "custom_text",
        "Lcom/stripe/proto/event_channel/pub/message/CustomText;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/event_channel/pub/message/Selection;",
        "toggles",
        "",
        "Lcom/stripe/proto/event_channel/pub/message/Toggle;",
        "type",
        "Lcom/stripe/proto/event_channel/pub/message/Input$InputType;",
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
.field public custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

.field public required:Z

.field public selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

.field public toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/event_channel/pub/message/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 137
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 149
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/Input;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/Input;
    .locals 7

    .line 177
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Input;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    .line 179
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    .line 180
    iget-boolean v3, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->required:Z

    .line 181
    iget-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    .line 182
    iget-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->toggles:Ljava/util/List;

    .line 183
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/event_channel/pub/message/Input;-><init>(Lcom/stripe/proto/event_channel/pub/message/Input$InputType;Lcom/stripe/proto/event_channel/pub/message/CustomText;ZLcom/stripe/proto/event_channel/pub/message/Selection;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_text(Lcom/stripe/proto/event_channel/pub/message/CustomText;)Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->custom_text:Lcom/stripe/proto/event_channel/pub/message/CustomText;

    return-object p0
.end method

.method public final required(Z)Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->required:Z

    return-object p0
.end method

.method public final selection(Lcom/stripe/proto/event_channel/pub/message/Selection;)Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->selection:Lcom/stripe/proto/event_channel/pub/message/Selection;

    return-object p0
.end method

.method public final toggles(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/event_channel/pub/message/Toggle;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/Input$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/event_channel/pub/message/Input$InputType;)Lcom/stripe/proto/event_channel/pub/message/Input$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Input$Builder;->type:Lcom/stripe/proto/event_channel/pub/message/Input$InputType;

    return-object p0
.end method
