.class public final Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceAssetVersionMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000fJ\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;",
        "()V",
        "android_package_metadata",
        "Lcom/stripe/proto/model/common/AndroidPackageMetadata;",
        "bbpos_configuration_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;",
        "bbpos_key_profile_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "firmware_metadata",
        "Lcom/stripe/proto/model/common/FirmwareMetadata;",
        "language_pack_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;",
        "md5_checksum",
        "",
        "semantic_versioned_metadata",
        "Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;",
        "sha256_checksum",
        "uber_language_pack_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;",
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
.field public android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

.field public bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

.field public bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

.field public firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

.field public language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

.field public md5_checksum:Ljava/lang/String;

.field public semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

.field public sha256_checksum:Ljava/lang/String;

.field public uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->md5_checksum:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->sha256_checksum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final android_package_metadata(Lcom/stripe/proto/model/common/AndroidPackageMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    const/4 p1, 0x0

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 252
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 254
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method

.method public final bbpos_configuration_metadata(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 295
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method

.method public final bbpos_key_profile_metadata(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    const/4 p1, 0x0

    .line 304
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 305
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->build()Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;
    .locals 11

    .line 324
    new-instance v0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;

    .line 325
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->md5_checksum:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->sha256_checksum:Ljava/lang/String;

    .line 327
    iget-object v3, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 328
    iget-object v4, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 329
    iget-object v5, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 330
    iget-object v6, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 331
    iget-object v7, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 332
    iget-object v8, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 333
    iget-object v9, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    .line 334
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 324
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/AndroidPackageMetadata;Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;Lcom/stripe/proto/model/common/FirmwareMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final firmware_metadata(Lcom/stripe/proto/model/common/FirmwareMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method

.method public final language_pack_metadata(Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    const/4 p1, 0x0

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 318
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 319
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 320
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    return-object p0
.end method

.method public final md5_checksum(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 1

    const-string v0, "md5_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->md5_checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final semantic_versioned_metadata(Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    .line 263
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 264
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method

.method public final sha256_checksum(Ljava/lang/String;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 1

    const-string v0, "sha256_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->sha256_checksum:Ljava/lang/String;

    return-object p0
.end method

.method public final uber_language_pack_metadata(Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;)Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->uber_language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/UberLanguagePackAssetMetadata;

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->android_package_metadata:Lcom/stripe/proto/model/common/AndroidPackageMetadata;

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->semantic_versioned_metadata:Lcom/stripe/proto/model/common/SemanticVersionedAssetMetadata;

    .line 284
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->firmware_metadata:Lcom/stripe/proto/model/common/FirmwareMetadata;

    .line 285
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_configuration_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposConfigurationMetadata;

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->bbpos_key_profile_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    .line 287
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeviceAssetVersionMetadata$Builder;->language_pack_metadata:Lcom/stripe/proto/terminal/terminal/pub/message/core/LanguagePackAssetMetadata;

    return-object p0
.end method
