.class public final Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "BindDeviceRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/attestation/BindDeviceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBindDeviceRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BindDeviceRequest.kt\ncom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1\n+ 2 ProtoReader.kt\ncom/squareup/wire/ProtoReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,203:1\n463#2,7:204\n1#3:211\n*S KotlinDebug\n*F\n+ 1 BindDeviceRequest.kt\ncom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1\n*L\n173#1:204,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
        "decode",
        "reader",
        "Lcom/squareup/wire/ProtoReader;",
        "encode",
        "",
        "writer",
        "Lcom/squareup/wire/ProtoWriter;",
        "value",
        "Lcom/squareup/wire/ReverseProtoWriter;",
        "encodedSize",
        "",
        "redact",
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


# direct methods
.method constructor <init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/FieldEncoding;",
            "Lkotlin/reflect/KClass<",
            "Lcom/stripe/proto/api/attestation/BindDeviceRequest;",
            ">;",
            "Lcom/squareup/wire/Syntax;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    .line 145
    const-string v6, "proto/modules/source-internal/src/main/proto/com/stripe/terminal/proto/api/attestation/attestation_service.proto"

    .line 139
    const-string v3, "type.googleapis.com/com.stripe.proto.api.attestation.BindDeviceRequest"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/attestation/BindDeviceRequest;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 178
    invoke-virtual {p1, v5}, Lcom/squareup/wire/ProtoReader;->readUnknownField(I)V

    goto :goto_0

    .line 177
    :cond_0
    sget-object v4, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 176
    :cond_1
    sget-object v3, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 175
    :cond_2
    sget-object v2, Lcom/stripe/proto/model/attestation/InstallationFingerprint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessageAndGetUnknownFields(J)Lokio/ByteString;

    move-result-object p1

    .line 181
    new-instance v0, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    .line 182
    check-cast v2, Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    .line 183
    check-cast v3, Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 184
    check-cast v4, Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 181
    invoke-direct {v0, v2, v3, v4, p1}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;-><init>(Lcom/stripe/proto/model/attestation/InstallationFingerprint;Lcom/stripe/proto/model/attestation/KeyAttestation;Lcom/stripe/proto/model/attestation/KeyAttestation;Lokio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/attestation/BindDeviceRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/attestation/InstallationFingerprint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 158
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 159
    :cond_2
    invoke-virtual {p2}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/stripe/proto/api/attestation/BindDeviceRequest;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/attestation/BindDeviceRequest;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->writeBytes(Lokio/ByteString;)V

    .line 164
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 165
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    .line 166
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stripe/proto/model/attestation/InstallationFingerprint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object p2, p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    invoke-virtual {v0, p1, v1, p2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p2, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;->encode(Lcom/squareup/wire/ReverseProtoWriter;Lcom/stripe/proto/api/attestation/BindDeviceRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/stripe/proto/api/attestation/BindDeviceRequest;)I
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    .line 149
    iget-object v1, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/stripe/proto/model/attestation/InstallationFingerprint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_0
    iget-object v1, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_1
    iget-object v1, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    invoke-virtual {v1, v2, p1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;->encodedSize(Lcom/stripe/proto/api/attestation/BindDeviceRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/stripe/proto/api/attestation/BindDeviceRequest;)Lcom/stripe/proto/api/attestation/BindDeviceRequest;
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->installation_fingerprint:Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/stripe/proto/model/attestation/InstallationFingerprint;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/attestation/InstallationFingerprint;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 191
    :goto_0
    iget-object v2, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->device_authentication_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/attestation/KeyAttestation;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 192
    :goto_1
    iget-object v3, p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->key_transport_key:Lcom/stripe/proto/model/attestation/KeyAttestation;

    if-eqz v3, :cond_2

    sget-object v1, Lcom/stripe/proto/model/attestation/KeyAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v3}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/attestation/KeyAttestation;

    .line 193
    :cond_2
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 189
    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/stripe/proto/api/attestation/BindDeviceRequest;->copy(Lcom/stripe/proto/model/attestation/InstallationFingerprint;Lcom/stripe/proto/model/attestation/KeyAttestation;Lcom/stripe/proto/model/attestation/KeyAttestation;Lokio/ByteString;)Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/proto/api/attestation/BindDeviceRequest$Companion$ADAPTER$1;->redact(Lcom/stripe/proto/api/attestation/BindDeviceRequest;)Lcom/stripe/proto/api/attestation/BindDeviceRequest;

    move-result-object p1

    return-object p1
.end method
