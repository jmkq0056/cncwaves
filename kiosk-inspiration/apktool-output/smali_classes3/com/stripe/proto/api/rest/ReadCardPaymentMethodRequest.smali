.class public final Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
.super Lcom/squareup/wire/Message;
.source "ReadCardPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;,
        Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BM\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJN\u0010\u000e\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0005H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;",
        "expand",
        "",
        "",
        "customer",
        "payment_method_data",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "metadata",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final expand:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x3
        tag = 0x4
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

.field public final payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.rest.RequestedPaymentMethod#ADAPTER"
        jsonName = "paymentMethodData"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->Companion:Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion;

    .line 196
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 195
    const-class v1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 199
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 195
    new-instance v3, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadata"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 72
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    .line 84
    invoke-static {v1, p4}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 59
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 60
    sget-object p5, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 35
    invoke-direct/range {p2 .. p7}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 130
    iget-object p1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 131
    iget-object p2, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 132
    iget-object p3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 133
    iget-object p4, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object p5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 129
    invoke-virtual/range {p2 .. p7}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->copy(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/util/Map;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 102
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 103
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 108
    iget v0, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->hashCode:I

    if-nez v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 111
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    iput v0, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->newBuilder()Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;
    .locals 2

    .line 87
    new-instance v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->expand:Ljava/util/List;

    .line 89
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->customer:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 91
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->metadata:Ljava/util/Map;

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expand="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->expand:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_data="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->payment_method_data:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReadCardPaymentMethodRequest{"

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
