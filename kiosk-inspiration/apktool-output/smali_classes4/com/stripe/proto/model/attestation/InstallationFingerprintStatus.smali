.class public final Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;
.super Lcom/squareup/wire/Message;
.source "InstallationFingerprintStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;,
        Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ8\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;",
        "id",
        "",
        "attestation_status",
        "Lcom/stripe/proto/model/attestation/AttestationStatus;",
        "attestation_cryptogram",
        "working_nonce",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final attestation_cryptogram:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "attestationCryptogram"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.attestation.AttestationStatus#ADAPTER"
        jsonName = "attestationStatus"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final working_nonce:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "workingNonce"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->Companion:Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion;

    .line 186
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 185
    const-class v1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 185
    new-instance v3, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestation_status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestation_cryptogram"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "working_nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    .line 27
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 50
    sget-object p2, Lcom/stripe/proto/model/attestation/AttestationStatus;->ATTESTED:Lcom/stripe/proto/model/attestation/AttestationStatus;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 75
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 27
    invoke-direct/range {p1 .. p6}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 121
    iget-object p1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 122
    iget-object p2, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 123
    iget-object p3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 124
    iget-object p4, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 120
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->copy(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestation_status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestation_cryptogram"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "working_nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/attestation/AttestationStatus;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 89
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;

    invoke-virtual {p1}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    iget-object v3, p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    if-eq v1, v3, :cond_4

    return v2

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->hashCode:I

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    invoke-virtual {v1}, Lcom/stripe/proto/model/attestation/AttestationStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    iput v0, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->newBuilder()Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->id:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    .line 81
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->attestation_cryptogram:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->working_nonce:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 113
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attestation_status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_status:Lcom/stripe/proto/model/attestation/AttestationStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attestation_cryptogram="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->attestation_cryptogram:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "working_nonce="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/InstallationFingerprintStatus;->working_nonce:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "InstallationFingerprintStatus{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
