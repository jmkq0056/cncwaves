.class public final Lcom/stripe/ext/CellPinning$CellPinningSpec;
.super Lcom/squareup/wire/Message;
.source "CellPinning.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellPinningSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;,
        Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;",
        "type",
        "Lcom/stripe/ext/CellPinning$CellType;",
        "entity_id_field",
        "",
        "routing_preference",
        "Lcom/stripe/ext/CellPinning$RoutingPreference;",
        "enforcement_mode",
        "Lcom/stripe/ext/CellPinning$EnforcementMode;",
        "routing_fallback",
        "Lcom/stripe/ext/CellPinning$RoutingFallback;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V",
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
        "common_release"
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
            "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.ext.CellPinning$EnforcementMode#ADAPTER"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final entity_id_field:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.ext.CellPinning$RoutingFallback#ADAPTER"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.ext.CellPinning$RoutingPreference#ADAPTER"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final type:Lcom/stripe/ext/CellPinning$CellType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.ext.CellPinning$CellType#ADAPTER"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->Companion:Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;

    .line 530
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 529
    const-class v1, Lcom/stripe/ext/CellPinning$CellPinningSpec;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 533
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    .line 529
    new-instance v3, Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/ext/CellPinning$CellPinningSpec;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/stripe/ext/CellPinning$CellPinningSpec;-><init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p6}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 383
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    .line 390
    iput-object p2, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    .line 397
    iput-object p3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    .line 404
    iput-object p4, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    .line 411
    iput-object p5, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 418
    sget-object p6, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 382
    invoke-direct/range {p1 .. p7}, Lcom/stripe/ext/CellPinning$CellPinningSpec;-><init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/ext/CellPinning$CellPinningSpec;Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/ext/CellPinning$CellPinningSpec;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 468
    iget-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    .line 469
    iget-object p2, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    .line 470
    iget-object p3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    .line 471
    iget-object p4, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    .line 472
    iget-object p5, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    .line 473
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->unknownFields()Lokio/ByteString;

    move-result-object p6

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 467
    invoke-virtual/range {p2 .. p8}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->copy(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)Lcom/stripe/ext/CellPinning$CellPinningSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)Lcom/stripe/ext/CellPinning$CellPinningSpec;
    .locals 8

    const-string v0, "unknownFields"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    new-instance v1, Lcom/stripe/ext/CellPinning$CellPinningSpec;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/ext/CellPinning$CellPinningSpec;-><init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 433
    :cond_0
    instance-of v1, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;

    invoke-virtual {p1}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    iget-object v3, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    if-eq v1, v3, :cond_3

    return v2

    .line 436
    :cond_3
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 437
    :cond_4
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    iget-object v3, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    if-eq v1, v3, :cond_5

    return v2

    .line 438
    :cond_5
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    iget-object v3, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    if-eq v1, v3, :cond_6

    return v2

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    iget-object p1, p1, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 444
    iget v0, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->hashCode:I

    if-nez v0, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 447
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/ext/CellPinning$CellType;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 448
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 449
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/ext/CellPinning$RoutingPreference;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 450
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/ext/CellPinning$EnforcementMode;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 451
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/ext/CellPinning$RoutingFallback;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    .line 452
    iput v0, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->hashCode:I

    :cond_5
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->newBuilder()Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 2

    .line 421
    new-instance v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;

    invoke-direct {v0}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    iput-object v1, v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->type:Lcom/stripe/ext/CellPinning$CellType;

    .line 423
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->entity_id_field:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    iput-object v1, v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    .line 425
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    iput-object v1, v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    .line 426
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    iput-object v1, v0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    .line 427
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 459
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->type:Lcom/stripe/ext/CellPinning$CellType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "entity_id_field="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->entity_id_field:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "routing_preference="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_2
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enforcement_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "routing_fallback="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CellPinningSpec{"

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
