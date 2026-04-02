.class public final Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeclinedCharge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/DeclinedCharge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/DeclinedCharge;",
        "()V",
        "charge_id",
        "",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "source",
        "Lcom/stripe/proto/model/rest/Source;",
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
.field public charge_id:Ljava/lang/String;

.field public error:Lcom/stripe/proto/model/sdk/Error;

.field public source:Lcom/stripe/proto/model/rest/Source;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->charge_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->build()Lcom/stripe/proto/model/sdk/DeclinedCharge;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/DeclinedCharge;
    .locals 5

    .line 145
    new-instance v0, Lcom/stripe/proto/model/sdk/DeclinedCharge;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->charge_id:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    .line 148
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 145
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/sdk/DeclinedCharge;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge_id(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;
    .locals 1

    const-string v0, "charge_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->charge_id:Ljava/lang/String;

    return-object p0
.end method

.method public final error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final source(Lcom/stripe/proto/model/rest/Source;)Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;->source:Lcom/stripe/proto/model/rest/Source;

    return-object p0
.end method
