.class public final Lcom/stripe/proto/model/rest/Source;
.super Lcom/squareup/wire/Message;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/Source$Builder;,
        Lcom/stripe/proto/model/rest/Source$CardPresent;,
        Lcom/stripe/proto/model/rest/Source$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/Source;",
        "Lcom/stripe/proto/model/rest/Source$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0019\u001a\u001bBa\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJb\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0014\u0008\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/Source;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/Source$Builder;",
        "id",
        "",
        "type",
        "card_present",
        "Lcom/stripe/proto/model/rest/Source$CardPresent;",
        "interac_present",
        "metadata",
        "",
        "owner",
        "Lcom/stripe/proto/model/rest/Owner;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V",
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
        "CardPresent",
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
            "Lcom/stripe/proto/model/rest/Source;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/Source$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Source$CardPresent#ADAPTER"
        jsonName = "cardPresent"
        oneofName = "source_object"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Source$CardPresent#ADAPTER"
        jsonName = "interacPresent"
        oneofName = "source_object"
        schemaIndex = 0x3
        tag = 0x6
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x4
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

.field public final owner:Lcom/stripe/proto/model/rest/Owner;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Owner#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/Source$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/Source$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/Source;->Companion:Lcom/stripe/proto/model/rest/Source$Companion;

    .line 254
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 253
    const-class v1, Lcom/stripe/proto/model/rest/Source;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 257
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 253
    new-instance v3, Lcom/stripe/proto/model/rest/Source$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/Source$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/rest/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Source$CardPresent;",
            "Lcom/stripe/proto/model/rest/Source$CardPresent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Owner;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/stripe/proto/model/rest/Source;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 37
    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 69
    iput-object p4, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 82
    iput-object p6, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    .line 102
    invoke-static {v0, p5}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    .line 105
    invoke-static {p3, p4}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of card_present, interac_present may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 78
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 90
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/model/rest/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/Source;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 162
    iget-object p1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 163
    iget-object p2, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 164
    iget-object p3, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 165
    iget-object p4, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 166
    iget-object p5, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 167
    iget-object p6, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 161
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/model/rest/Source;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Source;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)Lcom/stripe/proto/model/rest/Source;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/Source$CardPresent;",
            "Lcom/stripe/proto/model/rest/Source$CardPresent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/model/rest/Owner;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/Source;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/stripe/proto/model/rest/Source;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/rest/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source$CardPresent;Lcom/stripe/proto/model/rest/Source$CardPresent;Ljava/util/Map;Lcom/stripe/proto/model/rest/Owner;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 124
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/Source;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/Source;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/Source;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 126
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 129
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 130
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 131
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 136
    iget v0, p0, Lcom/stripe/proto/model/rest/Source;->hashCode:I

    if-nez v0, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 139
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

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

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Source$CardPresent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Source$CardPresent;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Owner;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 145
    iput v0, p0, Lcom/stripe/proto/model/rest/Source;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source;->newBuilder()Lcom/stripe/proto/model/rest/Source$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/Source$Builder;
    .locals 2

    .line 111
    new-instance v0, Lcom/stripe/proto/model/rest/Source$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/Source$Builder;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->id:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->type:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->metadata:Ljava/util/Map;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/Source$Builder;->owner:Lcom/stripe/proto/model/rest/Owner;

    .line 118
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/Source;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/Source$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->card_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interac_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->interac_present:Lcom/stripe/proto/model/rest/Source$CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "owner="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/Source;->owner:Lcom/stripe/proto/model/rest/Owner;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Source{"

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
