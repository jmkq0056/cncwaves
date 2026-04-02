.class public final Lcom/stripe/proto/api/attestation/AttestationRequest;
.super Lcom/squareup/wire/Message;
.source "AttestationRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;,
        Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B1\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ2\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tJ\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0008\u0010\u0013\u001a\u00020\u0006H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/proto/api/attestation/AttestationRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;",
        "signed_request",
        "Lcom/stripe/proto/api/attestation/SignedRequest;",
        "signature",
        "",
        "id",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/attestation/AttestationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final signature:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.attestation.SignedRequest#ADAPTER"
        jsonName = "signedRequest"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/attestation/AttestationRequest;->Companion:Lcom/stripe/proto/api/attestation/AttestationRequest$Companion;

    .line 137
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 136
    const-class v1, Lcom/stripe/proto/api/attestation/AttestationRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 140
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 136
    new-instance v3, Lcom/stripe/proto/api/attestation/AttestationRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/attestation/AttestationRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/attestation/AttestationRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/attestation/AttestationRequest;-><init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/stripe/proto/api/attestation/AttestationRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 28
    iput-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    .line 37
    iput-object p2, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 44
    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 52
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 27
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/attestation/AttestationRequest;-><init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/attestation/AttestationRequest;Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/attestation/AttestationRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 94
    iget-object p1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 95
    iget-object p2, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 96
    iget-object p3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 93
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/attestation/AttestationRequest;->copy(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/attestation/AttestationRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/api/attestation/AttestationRequest;
    .locals 1

    const-string v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/stripe/proto/api/attestation/AttestationRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/attestation/AttestationRequest;-><init>(Lcom/stripe/proto/api/attestation/SignedRequest;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 65
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/attestation/AttestationRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/attestation/AttestationRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    iget-object v3, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget v0, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->hashCode:I

    if-nez v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 77
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/api/attestation/SignedRequest;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 78
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    .line 80
    iput v0, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest;->newBuilder()Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;
    .locals 2

    .line 55
    new-instance v0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    iput-object v1, v0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    .line 57
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->signature:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->id:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/stripe/proto/api/attestation/AttestationRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/attestation/AttestationRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 87
    iget-object v1, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signed_request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signed_request:Lcom/stripe/proto/api/attestation/SignedRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "signature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->signature:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/attestation/AttestationRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "AttestationRequest{"

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
