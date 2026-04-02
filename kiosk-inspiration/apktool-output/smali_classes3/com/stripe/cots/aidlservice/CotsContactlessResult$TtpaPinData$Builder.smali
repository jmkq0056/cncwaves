.class public final Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsContactlessResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
        "()V",
        "clientPublicKey",
        "",
        "pinBlock",
        "serverPublicKeyHash",
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
.field public clientPublicKey:Ljava/lang/String;

.field public pinBlock:Ljava/lang/String;

.field public serverPublicKeyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 442
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 444
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->clientPublicKey:Ljava/lang/String;

    .line 447
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->serverPublicKeyHash:Ljava/lang/String;

    .line 450
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->pinBlock:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->build()Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;
    .locals 5

    .line 467
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    .line 468
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->clientPublicKey:Ljava/lang/String;

    .line 469
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->serverPublicKeyHash:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->pinBlock:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 467
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final clientPublicKey(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;
    .locals 1

    const-string v0, "clientPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->clientPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public final pinBlock(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;
    .locals 1

    const-string v0, "pinBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->pinBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final serverPublicKeyHash(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;
    .locals 1

    const-string v0, "serverPublicKeyHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData$Builder;->serverPublicKeyHash:Ljava/lang/String;

    return-object p0
.end method
