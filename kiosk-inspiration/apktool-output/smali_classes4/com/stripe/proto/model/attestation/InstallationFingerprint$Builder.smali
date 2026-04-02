.class public final Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "InstallationFingerprint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/attestation/InstallationFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprint;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprint;",
        "()V",
        "android_api_level",
        "",
        "android_patch_level",
        "",
        "device_manufacturer",
        "device_model",
        "installation_uuid",
        "package_name",
        "package_signature",
        "package_version",
        "sdk_signature",
        "sdk_version",
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
.field public android_api_level:I

.field public android_patch_level:Ljava/lang/String;

.field public device_manufacturer:Ljava/lang/String;

.field public device_model:Ljava/lang/String;

.field public installation_uuid:Ljava/lang/String;

.field public package_name:Ljava/lang/String;

.field public package_signature:Ljava/lang/String;

.field public package_version:Ljava/lang/String;

.field public sdk_signature:Ljava/lang/String;

.field public sdk_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->installation_uuid:Ljava/lang/String;

    .line 239
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_name:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_version:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_signature:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_version:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_signature:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_manufacturer:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_model:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->android_patch_level:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final android_api_level(I)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 0

    .line 333
    iput p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->android_api_level:I

    return-object p0
.end method

.method public final android_patch_level(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "android_patch_level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->android_patch_level:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->build()Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/attestation/InstallationFingerprint;
    .locals 12

    .line 345
    new-instance v0, Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    .line 346
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->installation_uuid:Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_name:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_version:Ljava/lang/String;

    .line 349
    iget-object v4, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_signature:Ljava/lang/String;

    .line 350
    iget-object v5, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_version:Ljava/lang/String;

    .line 351
    iget-object v6, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_signature:Ljava/lang/String;

    .line 352
    iget-object v7, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_manufacturer:Ljava/lang/String;

    .line 353
    iget-object v8, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_model:Ljava/lang/String;

    .line 354
    iget v9, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->android_api_level:I

    .line 355
    iget-object v10, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->android_patch_level:Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 345
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/attestation/InstallationFingerprint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_manufacturer(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "device_manufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_manufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public final device_model(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "device_model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->device_model:Ljava/lang/String;

    return-object p0
.end method

.method public final installation_uuid(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "installation_uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->installation_uuid:Ljava/lang/String;

    return-object p0
.end method

.method public final package_name(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final package_signature(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "package_signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_signature:Ljava/lang/String;

    return-object p0
.end method

.method public final package_version(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "package_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->package_version:Ljava/lang/String;

    return-object p0
.end method

.method public final sdk_signature(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "sdk_signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_signature:Ljava/lang/String;

    return-object p0
.end method

.method public final sdk_version(Ljava/lang/String;)Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;
    .locals 1

    const-string v0, "sdk_version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprint$Builder;->sdk_version:Ljava/lang/String;

    return-object p0
.end method
