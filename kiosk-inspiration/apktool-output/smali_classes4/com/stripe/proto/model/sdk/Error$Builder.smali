.class public final Lcom/stripe/proto/model/sdk/Error$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Error.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/Error;",
        "Lcom/stripe/proto/model/sdk/Error$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/Error$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/Error;",
        "()V",
        "code",
        "",
        "code_enum",
        "Lcom/stripe/proto/model/sdk/ReaderErrorCode;",
        "message",
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
.field public code:Ljava/lang/String;

.field public code_enum:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->message:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/stripe/proto/model/sdk/ReaderErrorCode;->READER_ERROR_CODE_UNSPECIFIED:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code_enum:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/Error$Builder;->build()Lcom/stripe/proto/model/sdk/Error;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/Error;
    .locals 5

    .line 144
    new-instance v0, Lcom/stripe/proto/model/sdk/Error;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->message:Ljava/lang/String;

    .line 147
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code_enum:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/Error$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 144
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/sdk/Error;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderErrorCode;Lokio/ByteString;)V

    return-object v0
.end method

.method public final code(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/Error$Builder;
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final code_enum(Lcom/stripe/proto/model/sdk/ReaderErrorCode;)Lcom/stripe/proto/model/sdk/Error$Builder;
    .locals 1

    const-string v0, "code_enum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->code_enum:Lcom/stripe/proto/model/sdk/ReaderErrorCode;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/Error$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/Error$Builder;->message:Ljava/lang/String;

    return-object p0
.end method
