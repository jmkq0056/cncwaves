.class public final Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CotsContactlessResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/aidlservice/CotsContactlessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "()V",
        "cryptogram",
        "",
        "emvBlob",
        "encryptedTrack2",
        "outcome",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;",
        "ttpaPinData",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;",
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
.field public cryptogram:Ljava/lang/String;

.field public emvBlob:Ljava/lang/String;

.field public encryptedTrack2:Ljava/lang/String;

.field public outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

.field public ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 133
    sget-object v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->emvBlob:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->encryptedTrack2:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->cryptogram:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->build()Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/cots/aidlservice/CotsContactlessResult;
    .locals 7

    .line 172
    new-instance v0, Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    .line 173
    iget-object v1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    .line 174
    iget-object v2, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->emvBlob:Ljava/lang/String;

    .line 175
    iget-object v3, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->encryptedTrack2:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->cryptogram:Ljava/lang/String;

    .line 177
    iget-object v5, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    .line 178
    invoke-virtual {p0}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult;-><init>(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cryptogram(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 1

    const-string v0, "cryptogram"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->cryptogram:Ljava/lang/String;

    return-object p0
.end method

.method public final emvBlob(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 1

    const-string v0, "emvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->emvBlob:Ljava/lang/String;

    return-object p0
.end method

.method public final encryptedTrack2(Ljava/lang/String;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 1

    const-string v0, "encryptedTrack2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->encryptedTrack2:Ljava/lang/String;

    return-object p0
.end method

.method public final outcome(Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->outcome:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    return-object p0
.end method

.method public final ttpaPinData(Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;)Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/stripe/cots/aidlservice/CotsContactlessResult$Builder;->ttpaPinData:Lcom/stripe/cots/aidlservice/CotsContactlessResult$TtpaPinData;

    return-object p0
.end method
