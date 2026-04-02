.class public final Lcom/stripe/proto/model/config/ContactEmvConfig;
.super Lcom/squareup/wire/Message;
.source "ContactEmvConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;,
        Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cBY\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ_\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;",
        "allow_quick_emv",
        "",
        "allow_efficient_application_selection",
        "allow_partial_read_records",
        "allow_emv_application_selection",
        "vector_configuration",
        "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
        "supported_applications",
        "",
        "Lcom/stripe/proto/model/config/EmvApplicationId;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
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
            "Lcom/stripe/proto/model/config/ContactEmvConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_efficient_application_selection:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "allowEfficientApplicationSelection"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final allow_emv_application_selection:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "allowEmvApplicationSelection"
        schemaIndex = 0x3
        tag = 0x6
    .end annotation
.end field

.field public final allow_partial_read_records:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "allowPartialReadRecords"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final allow_quick_emv:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "allowQuickEmv"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final supported_applications:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.EmvApplicationId#ADAPTER"
        jsonName = "supportedApplications"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;"
        }
    .end annotation
.end field

.field public final vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.payments.EmvKernelVersion$VectorConfiguration#ADAPTER"
        jsonName = "vectorConfiguration"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/ContactEmvConfig;->Companion:Lcom/stripe/proto/model/config/ContactEmvConfig$Companion;

    .line 261
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 260
    const-class v1, Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 264
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 260
    new-instance v3, Lcom/stripe/proto/model/config/ContactEmvConfig$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/ContactEmvConfig$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/config/ContactEmvConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "vector_configuration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supported_applications"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcom/stripe/proto/model/config/ContactEmvConfig;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    .line 46
    iput-object p2, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    .line 58
    iput-object p3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    .line 71
    iput-object p4, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    .line 83
    iput-object p5, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 109
    invoke-static {v0, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    .line 92
    sget-object p5, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->NONE:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 94
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

    .line 30
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/model/config/ContactEmvConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/ContactEmvConfig;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ContactEmvConfig;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 163
    iget-object p1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 164
    iget-object p2, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 165
    iget-object p3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 166
    iget-object p4, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 167
    iget-object p5, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 168
    iget-object p6, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig;->unknownFields()Lokio/ByteString;

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

    .line 162
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/model/config/ContactEmvConfig;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactEmvConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactEmvConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/config/EmvApplicationId;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/config/ContactEmvConfig;"
        }
    .end annotation

    const-string v0, "vector_configuration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supported_applications"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/stripe/proto/model/config/ContactEmvConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/config/ContactEmvConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 125
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/ContactEmvConfig;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ContactEmvConfig;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    if-eq v1, v3, :cond_7

    return v2

    .line 132
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 137
    iget v0, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->hashCode:I

    if-nez v0, :cond_4

    .line 139
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 140
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 141
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 142
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 143
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    invoke-virtual {v1}, Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    iput v0, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig;->newBuilder()Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;
    .locals 2

    .line 112
    new-instance v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_quick_emv:Ljava/lang/Boolean;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_efficient_application_selection:Ljava/lang/Boolean;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_partial_read_records:Ljava/lang/Boolean;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->allow_emv_application_selection:Ljava/lang/Boolean;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->supported_applications:Ljava/util/List;

    .line 119
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactEmvConfig;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/ContactEmvConfig$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_quick_emv="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_quick_emv:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_efficient_application_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_efficient_application_selection:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_partial_read_records="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_partial_read_records:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_emv_application_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->allow_emv_application_selection:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vector_configuration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->vector_configuration:Lcom/stripe/proto/model/payments/EmvKernelVersion$VectorConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "supported_applications="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactEmvConfig;->supported_applications:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ContactEmvConfig{"

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
