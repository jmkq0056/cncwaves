.class public final Lcom/stripe/proto/model/common/TamperState$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TamperState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/TamperState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/TamperState;",
        "Lcom/stripe/proto/model/common/TamperState$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0016\u0010\u0006\u001a\u00020\u00002\u000e\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u0008R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0007j\u0004\u0018\u0001`\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/TamperState$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/TamperState;",
        "()V",
        "tamper_type",
        "Lcom/stripe/proto/model/common/TamperType;",
        "tampered_time",
        "Ljava/time/Instant;",
        "Lcom/squareup/wire/Instant;",
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
.field public tamper_type:Lcom/stripe/proto/model/common/TamperType;

.field public tampered_time:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 94
    sget-object v0, Lcom/stripe/proto/model/common/TamperType;->TAMPER_TYPE_INVALID:Lcom/stripe/proto/model/common/TamperType;

    iput-object v0, p0, Lcom/stripe/proto/model/common/TamperState$Builder;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState$Builder;->build()Lcom/stripe/proto/model/common/TamperState;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/TamperState;
    .locals 4

    .line 106
    new-instance v0, Lcom/stripe/proto/model/common/TamperState;

    .line 107
    iget-object v1, p0, Lcom/stripe/proto/model/common/TamperState$Builder;->tampered_time:Ljava/time/Instant;

    .line 108
    iget-object v2, p0, Lcom/stripe/proto/model/common/TamperState$Builder;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/TamperState$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/common/TamperState;-><init>(Ljava/time/Instant;Lcom/stripe/proto/model/common/TamperType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final tamper_type(Lcom/stripe/proto/model/common/TamperType;)Lcom/stripe/proto/model/common/TamperState$Builder;
    .locals 1

    const-string v0, "tamper_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/stripe/proto/model/common/TamperState$Builder;->tamper_type:Lcom/stripe/proto/model/common/TamperType;

    return-object p0
.end method

.method public final tampered_time(Ljava/time/Instant;)Lcom/stripe/proto/model/common/TamperState$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/stripe/proto/model/common/TamperState$Builder;->tampered_time:Ljava/time/Instant;

    return-object p0
.end method
