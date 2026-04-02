.class public final Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BBPOSConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/BBPOSConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/BBPOSConfig;",
        "()V",
        "aid_order",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;",
        "config_spec",
        "Lcom/stripe/proto/model/common/ClientVersionSpecPb;",
        "firmware_spec",
        "key_profile_id",
        "",
        "key_profile_name",
        "key_profile_pek0",
        "key_profile_upgrade_arg",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "minimum_required_config_spec",
        "minimum_required_firmware_spec",
        "pinpad_image_assets",
        "Lcom/stripe/proto/model/config/PinpadImageAssets;",
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
.field public aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

.field public config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field public firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field public key_profile_id:Ljava/lang/String;

.field public key_profile_name:Ljava/lang/String;

.field public key_profile_pek0:Ljava/lang/String;

.field public key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

.field public minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field public minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

.field public pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_id:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_name:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_pek0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final aid_order(Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->build()Lcom/stripe/proto/model/config/BBPOSConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/BBPOSConfig;
    .locals 12

    .line 285
    new-instance v0, Lcom/stripe/proto/model/config/BBPOSConfig;

    .line 286
    iget-object v1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    .line 287
    iget-object v2, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 288
    iget-object v3, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 289
    iget-object v4, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_id:Ljava/lang/String;

    .line 290
    iget-object v5, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_name:Ljava/lang/String;

    .line 291
    iget-object v6, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_pek0:Ljava/lang/String;

    .line 292
    iget-object v7, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    .line 293
    iget-object v8, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->aid_order:Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;

    .line 294
    iget-object v9, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 295
    iget-object v10, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    .line 296
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 285
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/config/BBPOSConfig;-><init>(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V

    return-object v0
.end method

.method public final config_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final firmware_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final key_profile_id(Ljava/lang/String;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 1

    const-string v0, "key_profile_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_id:Ljava/lang/String;

    return-object p0
.end method

.method public final key_profile_name(Ljava/lang/String;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 1

    const-string v0, "key_profile_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_name:Ljava/lang/String;

    return-object p0
.end method

.method public final key_profile_pek0(Ljava/lang/String;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 1

    const-string v0, "key_profile_pek0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_pek0:Ljava/lang/String;

    return-object p0
.end method

.method public final key_profile_upgrade_arg(Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->key_profile_upgrade_arg:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    return-object p0
.end method

.method public final minimum_required_config_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_config_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final minimum_required_firmware_spec(Lcom/stripe/proto/model/common/ClientVersionSpecPb;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->minimum_required_firmware_spec:Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    return-object p0
.end method

.method public final pinpad_image_assets(Lcom/stripe/proto/model/config/PinpadImageAssets;)Lcom/stripe/proto/model/config/BBPOSConfig$Builder;
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/config/BBPOSConfig$Builder;->pinpad_image_assets:Lcom/stripe/proto/model/config/PinpadImageAssets;

    return-object p0
.end method
