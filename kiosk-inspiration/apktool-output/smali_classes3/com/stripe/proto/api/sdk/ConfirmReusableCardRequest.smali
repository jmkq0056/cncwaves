.class public final Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;
.super Lcom/squareup/wire/Message;
.source "ConfirmReusableCardRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;,
        Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B;\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ<\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;",
        "reusable_card_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "customer",
        "",
        "metadata",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.PaymentMethod#ADAPTER"
        jsonName = "reusableCardMethod"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->Companion:Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion;

    .line 162
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 161
    const-class v1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 161
    new-instance v3, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/sdk/PaymentMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "customer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    .line 68
    invoke-static {v0, p3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 54
    const-string p2, ""

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 55
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 56
    sget-object p4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 31
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 110
    iget-object p1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 111
    iget-object p2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 112
    iget-object p3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->unknownFields()Lokio/ByteString;

    move-result-object p4

    .line 109
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->copy(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/sdk/PaymentMethod;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;"
        }
    .end annotation

    const-string v0, "customer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;-><init>(Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 85
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 90
    iget v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->hashCode:I

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iput v0, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->newBuilder()Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;
    .locals 2

    .line 71
    new-instance v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 73
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->customer:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->metadata:Ljava/util/Map;

    .line 75
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reusable_card_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->customer:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ConfirmReusableCardRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ConfirmReusableCardRequest{"

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
