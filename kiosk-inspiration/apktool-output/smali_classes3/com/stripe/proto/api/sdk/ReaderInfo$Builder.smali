.class public final Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ReaderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ReaderInfo;",
        "Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ReaderInfo;",
        "()V",
        "bootloaderVersion",
        "",
        "configVersion",
        "deviceSettingVersion",
        "emvKeyProfileId",
        "firmwareVersion",
        "macKeyProfileId",
        "pinKeyProfileId",
        "pinKeysetId",
        "serial",
        "trackKeyProfileId",
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
.field public bootloaderVersion:Ljava/lang/String;

.field public configVersion:Ljava/lang/String;

.field public deviceSettingVersion:Ljava/lang/String;

.field public emvKeyProfileId:Ljava/lang/String;

.field public firmwareVersion:Ljava/lang/String;

.field public macKeyProfileId:Ljava/lang/String;

.field public pinKeyProfileId:Ljava/lang/String;

.field public pinKeysetId:Ljava/lang/String;

.field public serial:Ljava/lang/String;

.field public trackKeyProfileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->configVersion:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->deviceSettingVersion:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->bootloaderVersion:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->emvKeyProfileId:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->firmwareVersion:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->macKeyProfileId:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeyProfileId:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeysetId:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->serial:Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->trackKeyProfileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bootloaderVersion(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "bootloaderVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->bootloaderVersion:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->build()Lcom/stripe/proto/api/sdk/ReaderInfo;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ReaderInfo;
    .locals 12

    .line 275
    new-instance v0, Lcom/stripe/proto/api/sdk/ReaderInfo;

    .line 276
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->configVersion:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->deviceSettingVersion:Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->bootloaderVersion:Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->emvKeyProfileId:Ljava/lang/String;

    .line 280
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->firmwareVersion:Ljava/lang/String;

    .line 281
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->macKeyProfileId:Ljava/lang/String;

    .line 282
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeyProfileId:Ljava/lang/String;

    .line 283
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeysetId:Ljava/lang/String;

    .line 284
    iget-object v9, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->serial:Ljava/lang/String;

    .line 285
    iget-object v10, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->trackKeyProfileId:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 275
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/api/sdk/ReaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final configVersion(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "configVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->configVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final deviceSettingVersion(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "deviceSettingVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->deviceSettingVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final emvKeyProfileId(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "emvKeyProfileId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->emvKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final firmwareVersion(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "firmwareVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->firmwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final macKeyProfileId(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "macKeyProfileId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->macKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final pinKeyProfileId(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "pinKeyProfileId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final pinKeysetId(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "pinKeysetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->pinKeysetId:Ljava/lang/String;

    return-object p0
.end method

.method public final serial(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "serial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->serial:Ljava/lang/String;

    return-object p0
.end method

.method public final trackKeyProfileId(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;
    .locals 1

    const-string v0, "trackKeyProfileId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ReaderInfo$Builder;->trackKeyProfileId:Ljava/lang/String;

    return-object p0
.end method
