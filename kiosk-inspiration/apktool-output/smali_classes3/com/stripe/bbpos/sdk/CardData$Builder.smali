.class public final Lcom/stripe/bbpos/sdk/CardData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CardData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/CardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/CardData;",
        "Lcom/stripe/bbpos/sdk/CardData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/CardData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/CardData;",
        "()V",
        "encCvv",
        "",
        "encPan",
        "encTrack2",
        "expiryDate",
        "ksn",
        "maskedPan",
        "posEntryMode",
        "serviceCode",
        "build",
        "sdk-protos_release"
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
.field public encCvv:Ljava/lang/String;

.field public encPan:Ljava/lang/String;

.field public encTrack2:Ljava/lang/String;

.field public expiryDate:Ljava/lang/String;

.field public ksn:Ljava/lang/String;

.field public maskedPan:Ljava/lang/String;

.field public posEntryMode:Ljava/lang/String;

.field public serviceCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/CardData$Builder;->build()Lcom/stripe/bbpos/sdk/CardData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/CardData;
    .locals 10

    .line 232
    new-instance v0, Lcom/stripe/bbpos/sdk/CardData;

    .line 233
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encCvv:Ljava/lang/String;

    .line 234
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encPan:Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encTrack2:Ljava/lang/String;

    .line 236
    iget-object v4, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->expiryDate:Ljava/lang/String;

    .line 237
    iget-object v5, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->ksn:Ljava/lang/String;

    .line 238
    iget-object v6, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->maskedPan:Ljava/lang/String;

    .line 239
    iget-object v7, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->posEntryMode:Ljava/lang/String;

    .line 240
    iget-object v8, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->serviceCode:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/CardData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 232
    invoke-direct/range {v0 .. v9}, Lcom/stripe/bbpos/sdk/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final encCvv(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encCvv:Ljava/lang/String;

    return-object p0
.end method

.method public final encPan(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encPan:Ljava/lang/String;

    return-object p0
.end method

.method public final encTrack2(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->encTrack2:Ljava/lang/String;

    return-object p0
.end method

.method public final expiryDate(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->expiryDate:Ljava/lang/String;

    return-object p0
.end method

.method public final ksn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->ksn:Ljava/lang/String;

    return-object p0
.end method

.method public final maskedPan(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->maskedPan:Ljava/lang/String;

    return-object p0
.end method

.method public final posEntryMode(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->posEntryMode:Ljava/lang/String;

    return-object p0
.end method

.method public final serviceCode(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/CardData$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/CardData$Builder;->serviceCode:Ljava/lang/String;

    return-object p0
.end method
