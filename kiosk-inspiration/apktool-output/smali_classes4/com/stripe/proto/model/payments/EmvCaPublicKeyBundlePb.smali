.class public final Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;
.super Lcom/squareup/wire/Message;
.source "EmvCaPublicKeyBundlePb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;,
        Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;,
        Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0016\u0017\u0018B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ4\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;",
        "bundle_checksum",
        "",
        "last_modified_ms",
        "",
        "cap_keys",
        "",
        "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V",
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
        "EmvCaPublicKeyPb",
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
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bundle_checksum:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "bundleChecksum"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final cap_keys:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb#ADAPTER"
        jsonName = "capKeys"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
            ">;"
        }
    .end annotation
.end field

.field public final last_modified_ms:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "lastModifiedMs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->Companion:Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion;

    .line 170
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 169
    const-class v1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 169
    new-instance v3, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;-><init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "bundle_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cap_keys"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    .line 52
    iput-wide p2, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    .line 75
    invoke-static {v0, p4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 48
    const-string p1, ""

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 62
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_3
    move-object p6, p4

    move-object p7, p5

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 36
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;-><init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 117
    iget-object p1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 118
    iget-wide p2, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 119
    iget-object p4, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_3
    move-object p6, p4

    move-object p7, p5

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    .line 116
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->copy(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$EmvCaPublicKeyPb;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;"
        }
    .end annotation

    const-string v0, "bundle_checksum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cap_keys"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;-><init>(Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;

    invoke-virtual {p1}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 91
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    iget-wide v5, p1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 97
    iget v0, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->hashCode:I

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 100
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 101
    iget-wide v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 102
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    iput v0, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->newBuilder()Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;
    .locals 3

    .line 78
    new-instance v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->bundle_checksum:Ljava/lang/String;

    .line 80
    iget-wide v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    iput-wide v1, v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->last_modified_ms:J

    .line 81
    iget-object v1, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->cap_keys:Ljava/util/List;

    .line 82
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 110
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle_checksum="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->bundle_checksum:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "last_modified_ms="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->last_modified_ms:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cap_keys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/payments/EmvCaPublicKeyBundlePb;->cap_keys:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "EmvCaPublicKeyBundlePb{"

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
