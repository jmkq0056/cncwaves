.class public final Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsKillAidlServerRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;",
        "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;",
        "()V",
        "delayMs",
        "",
        "build",
        "proto_release"
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
.field public delayMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;->build()Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;
    .locals 4

    .line 83
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;

    .line 84
    iget-wide v1, p0, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;->delayMs:J

    .line 85
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 83
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;-><init>(JLokio/ByteString;)V

    return-object v0
.end method

.method public final delayMs(J)Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest$Builder;->delayMs:J

    return-object p0
.end method
