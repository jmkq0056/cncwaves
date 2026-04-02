.class public final Lcom/stripe/proto/model/config/Afl$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Afl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/Afl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/Afl;",
        "Lcom/stripe/proto/model/config/Afl$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/Afl$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/Afl;",
        "()V",
        "end_record",
        "",
        "sfi",
        "start_record",
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
.field public end_record:I

.field public sfi:I

.field public start_record:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/Afl$Builder;->build()Lcom/stripe/proto/model/config/Afl;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/Afl;
    .locals 5

    .line 147
    new-instance v0, Lcom/stripe/proto/model/config/Afl;

    .line 148
    iget v1, p0, Lcom/stripe/proto/model/config/Afl$Builder;->sfi:I

    .line 149
    iget v2, p0, Lcom/stripe/proto/model/config/Afl$Builder;->start_record:I

    .line 150
    iget v3, p0, Lcom/stripe/proto/model/config/Afl$Builder;->end_record:I

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/Afl$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 147
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/config/Afl;-><init>(IIILokio/ByteString;)V

    return-object v0
.end method

.method public final end_record(I)Lcom/stripe/proto/model/config/Afl$Builder;
    .locals 0

    .line 143
    iput p1, p0, Lcom/stripe/proto/model/config/Afl$Builder;->end_record:I

    return-object p0
.end method

.method public final sfi(I)Lcom/stripe/proto/model/config/Afl$Builder;
    .locals 0

    .line 127
    iput p1, p0, Lcom/stripe/proto/model/config/Afl$Builder;->sfi:I

    return-object p0
.end method

.method public final start_record(I)Lcom/stripe/proto/model/config/Afl$Builder;
    .locals 0

    .line 135
    iput p1, p0, Lcom/stripe/proto/model/config/Afl$Builder;->start_record:I

    return-object p0
.end method
