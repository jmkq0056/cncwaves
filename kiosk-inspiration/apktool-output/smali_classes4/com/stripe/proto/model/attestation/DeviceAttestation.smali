.class public final Lcom/stripe/proto/model/attestation/DeviceAttestation;
.super Lcom/squareup/wire/Message;
.source "DeviceAttestation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;,
        Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation;",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019BA\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJB\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\tH\u0016R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/model/attestation/DeviceAttestation;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;",
        "local_attestation",
        "Lcom/stripe/proto/model/attestation/LocalAttestation;",
        "timestamp",
        "",
        "dak_certificates",
        "",
        "",
        "play_integrity_attestation",
        "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/attestation/DeviceAttestation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final dak_certificates:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "dakCertificates"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.attestation.LocalAttestation#ADAPTER"
        jsonName = "localAttestation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x2
    .end annotation
.end field

.field public final play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.attestation.PlayIntegrityAttestation#ADAPTER"
        jsonName = "playIntegrityAttestation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final timestamp:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->Companion:Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion;

    .line 173
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 172
    const-class v1, Lcom/stripe/proto/model/attestation/DeviceAttestation;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 176
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 172
    new-instance v3, Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/attestation/DeviceAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/attestation/DeviceAttestation;-><init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/attestation/LocalAttestation;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "dak_certificates"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/stripe/proto/model/attestation/DeviceAttestation;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    .line 40
    iput-wide p2, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    .line 49
    iput-object p5, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    .line 71
    invoke-static {v0, p4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    .line 58
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p7}, Lcom/stripe/proto/model/attestation/DeviceAttestation;-><init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/attestation/DeviceAttestation;Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/attestation/DeviceAttestation;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 117
    iget-object p1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 118
    iget-wide p2, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 119
    iget-object p4, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 120
    iget-object p5, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_4
    move-object p7, p5

    move-object p8, p6

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 116
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->copy(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)Lcom/stripe/proto/model/attestation/DeviceAttestation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)Lcom/stripe/proto/model/attestation/DeviceAttestation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/attestation/LocalAttestation;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/attestation/DeviceAttestation;"
        }
    .end annotation

    const-string v0, "dak_certificates"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/stripe/proto/model/attestation/DeviceAttestation;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/attestation/DeviceAttestation;-><init>(Lcom/stripe/proto/model/attestation/LocalAttestation;JLjava/util/List;Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;

    invoke-virtual {p1}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    iget-object v3, p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 88
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    iget-wide v5, p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    iget-object p1, p1, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 95
    iget v0, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->hashCode:I

    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/attestation/LocalAttestation;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 99
    iget-wide v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 101
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 102
    iput v0, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->newBuilder()Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;
    .locals 3

    .line 74
    new-instance v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    .line 76
    iget-wide v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    iput-wide v1, v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->timestamp:J

    .line 77
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->dak_certificates:Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    iput-object v1, v0, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    .line 79
    invoke-virtual {p0}, Lcom/stripe/proto/model/attestation/DeviceAttestation;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/attestation/DeviceAttestation$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local_attestation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->local_attestation:Lcom/stripe/proto/model/attestation/LocalAttestation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timestamp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->timestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dak_certificates="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->dak_certificates:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "play_integrity_attestation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/attestation/DeviceAttestation;->play_integrity_attestation:Lcom/stripe/proto/model/attestation/PlayIntegrityAttestation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "DeviceAttestation{"

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
