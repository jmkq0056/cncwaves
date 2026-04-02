.class public final Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsCollectPinResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
        "()V",
        "clientPublicKey",
        "",
        "pinBlock",
        "result",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;",
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

.field public result:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

.field public serverPublicKeyHash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 118
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->FAILURE:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->result:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->pinBlock:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->clientPublicKey:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->serverPublicKeyHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->build()Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;
    .locals 6

    .line 149
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;

    .line 150
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->result:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    .line 151
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->pinBlock:Ljava/lang/String;

    .line 152
    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->clientPublicKey:Ljava/lang/String;

    .line 153
    iget-object v4, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->serverPublicKeyHash:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 149
    invoke-direct/range {v0 .. v5}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;-><init>(Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final clientPublicKey(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;
    .locals 1

    const-string v0, "clientPublicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->clientPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public final pinBlock(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;
    .locals 1

    const-string v0, "pinBlock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->pinBlock:Ljava/lang/String;

    return-object p0
.end method

.method public final result(Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;)Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->result:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    return-object p0
.end method

.method public final serverPublicKeyHash(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;
    .locals 1

    const-string v0, "serverPublicKeyHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Builder;->serverPublicKeyHash:Ljava/lang/String;

    return-object p0
.end method
