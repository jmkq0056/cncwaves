.class public final Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;
.super Lcom/squareup/wire/Message;
.source "RegisterPublicKeyRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;,
        Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;,
        Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B9\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bJ:\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "device_public_key",
        "Lokio/ByteString;",
        "device_public_key_signature",
        "signature_algorithm",
        "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;",
        "unknownFields",
        "(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Algorithm",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final device_info:Lcom/stripe/proto/model/common/DeviceInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER"
        jsonName = "deviceInfo"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final device_public_key:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "devicePublicKey"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final device_public_key_signature:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        jsonName = "devicePublicKeySignature"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminalauth.pub.api.RegisterPublicKeyRequest$Algorithm#ADAPTER"
        jsonName = "signatureAlgorithm"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->Companion:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion;

    .line 166
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 165
    const-class v1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 165
    new-instance v3, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V
    .locals 1

    const-string v0, "device_public_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_public_key_signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature_algorithm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    .line 58
    iput-object p4, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 48
    sget-object p2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 57
    sget-object p3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 66
    sget-object p4, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;->ALGORITHM_INVALID:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 67
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 30
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 113
    iget-object p1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 114
    iget-object p2, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 115
    iget-object p3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 116
    iget-object p4, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 112
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->copy(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;
    .locals 7

    const-string v0, "device_public_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device_public_key_signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature_algorithm"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lokio/ByteString;Lokio/ByteString;Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    iget-object v3, p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    iget-object p1, p1, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget v0, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->hashCode:I

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/DeviceInfo;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 96
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 97
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    invoke-virtual {v1}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->newBuilder()Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;
    .locals 2

    .line 70
    new-instance v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 72
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key:Lokio/ByteString;

    .line 73
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->device_public_key_signature:Lokio/ByteString;

    .line 74
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    iput-object v1, v0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    .line 75
    invoke-virtual {p0}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_public_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_public_key_signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->device_public_key_signature:Lokio/ByteString;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature_algorithm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest;->signature_algorithm:Lcom/stripe/proto/terminalauth/pub/api/RegisterPublicKeyRequest$Algorithm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RegisterPublicKeyRequest{"

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
