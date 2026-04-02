.class public final Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;
.super Ljava/lang/Object;
.source "BindDeviceRequestExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;",
        "",
        "()V",
        "addBindDeviceRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "codegen-terminalsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;->INSTANCE:Lcom/stripe/proto/api/attestation/BindDeviceRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addBindDeviceRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;

    const-string v2, "installation_fingerprint"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->addInstallationFingerprint(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/attestation/InstallationFingerprint;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 29
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_1

    .line 30
    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v2, "device_authentication_key"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 32
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz p2, :cond_2

    .line 33
    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v1, "key_transport_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_2
    return-object p1
.end method

.method public final addBindDeviceRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v0, :cond_0

    .line 14
    sget-object v1, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;

    const-string v2, "installation_fingerprint"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->addInstallationFingerprint(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/attestation/InstallationFingerprint;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 16
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_1

    .line 17
    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v2, "device_authentication_key"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 19
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz p2, :cond_2

    .line 20
    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v1, "key_transport_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_2
    return-object p1
.end method

.method public final addBindDeviceRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/attestation/BindDeviceRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->INSTANCE:Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;

    const-string v2, "installation_fingerprint"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;->addInstallationFingerprint(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/attestation/InstallationFingerprint;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 42
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_1

    .line 43
    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v2, "device_authentication_key"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 45
    :cond_1
    iget-object p2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz p2, :cond_2

    .line 46
    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->INSTANCE:Lcom/stripe/proto/model/attestation/KeyAttestationExt;

    const-string v1, "key_transport_key"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/proto/model/attestation/KeyAttestationExt;->addKeyAttestation(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/attestation/KeyAttestation;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    return-object p1
.end method
