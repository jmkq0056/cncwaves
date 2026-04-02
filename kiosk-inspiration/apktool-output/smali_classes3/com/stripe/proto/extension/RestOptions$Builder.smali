.class public final Lcom/stripe/proto/extension/RestOptions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RestOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/extension/RestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/extension/RestOptions;",
        "Lcom/stripe/proto/extension/RestOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/extension/RestOptions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/extension/RestOptions;",
        "()V",
        "error_type",
        "",
        "method",
        "Lcom/stripe/proto/extension/Method;",
        "post_content_type",
        "Lcom/stripe/proto/extension/PostContentType;",
        "url",
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
.field public error_type:Ljava/lang/String;

.field public method:Lcom/stripe/proto/extension/Method;

.field public post_content_type:Lcom/stripe/proto/extension/PostContentType;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 129
    sget-object v0, Lcom/stripe/proto/extension/Method;->UNKNOWN:Lcom/stripe/proto/extension/Method;

    iput-object v0, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->method:Lcom/stripe/proto/extension/Method;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->url:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->error_type:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/stripe/proto/extension/PostContentType;->NONE:Lcom/stripe/proto/extension/PostContentType;

    iput-object v0, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->post_content_type:Lcom/stripe/proto/extension/PostContentType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/stripe/proto/extension/RestOptions$Builder;->build()Lcom/stripe/proto/extension/RestOptions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/extension/RestOptions;
    .locals 6

    .line 172
    new-instance v0, Lcom/stripe/proto/extension/RestOptions;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->method:Lcom/stripe/proto/extension/Method;

    .line 174
    iget-object v2, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->url:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->error_type:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->post_content_type:Lcom/stripe/proto/extension/PostContentType;

    .line 177
    invoke-virtual {p0}, Lcom/stripe/proto/extension/RestOptions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/extension/RestOptions;-><init>(Lcom/stripe/proto/extension/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/extension/PostContentType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final error_type(Ljava/lang/String;)Lcom/stripe/proto/extension/RestOptions$Builder;
    .locals 1

    const-string v0, "error_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->error_type:Ljava/lang/String;

    return-object p0
.end method

.method public final method(Lcom/stripe/proto/extension/Method;)Lcom/stripe/proto/extension/RestOptions$Builder;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->method:Lcom/stripe/proto/extension/Method;

    return-object p0
.end method

.method public final post_content_type(Lcom/stripe/proto/extension/PostContentType;)Lcom/stripe/proto/extension/RestOptions$Builder;
    .locals 1

    const-string v0, "post_content_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->post_content_type:Lcom/stripe/proto/extension/PostContentType;

    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/stripe/proto/extension/RestOptions$Builder;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/extension/RestOptions$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
