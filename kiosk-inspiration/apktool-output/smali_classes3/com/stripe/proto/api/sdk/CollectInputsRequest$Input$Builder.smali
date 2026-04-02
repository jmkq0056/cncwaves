.class public final Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectInputsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;",
        "()V",
        "custom_text",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;",
        "toggles",
        "",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;",
        "type",
        "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;",
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
.field public custom_text:Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;

.field public required:Z

.field public selection:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;

.field public toggles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 272
    sget-object v0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->type:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    .line 275
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->toggles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->build()Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;
    .locals 7

    .line 303
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;

    .line 305
    iget-boolean v2, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->required:Z

    .line 306
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->selection:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;

    .line 307
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->type:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    .line 308
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->toggles:Ljava/util/List;

    .line 309
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 303
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input;-><init>(Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;ZLcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final custom_text(Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;)Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->custom_text:Lcom/stripe/proto/api/sdk/CollectInputsRequest$CustomText;

    return-object p0
.end method

.method public final required(Z)Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->required:Z

    return-object p0
.end method

.method public final selection(Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;)Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->selection:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Selection;

    return-object p0
.end method

.method public final toggles(Ljava/util/List;)Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Toggle;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;"
        }
    .end annotation

    const-string v0, "toggles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->toggles:Ljava/util/List;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;)Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$Builder;->type:Lcom/stripe/proto/api/sdk/CollectInputsRequest$Input$InputType;

    return-object p0
.end method
