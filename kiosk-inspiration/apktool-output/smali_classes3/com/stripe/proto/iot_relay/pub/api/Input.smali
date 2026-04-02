.class public final Lcom/stripe/proto/iot_relay/pub/api/Input;
.super Lcom/squareup/wire/Message;
.source "Input.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;,
        Lcom/stripe/proto/iot_relay/pub/api/Input$Companion;,
        Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/api/Input;",
        "Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001b\u001c\u001dBU\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012JV\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/Input;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;",
        "custom_text",
        "Lcom/stripe/proto/iot_relay/pub/api/CustomText;",
        "required",
        "",
        "selection",
        "Lcom/stripe/proto/iot_relay/pub/api/Selection;",
        "type",
        "Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;",
        "id",
        "",
        "toggles",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "InputType",
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
            "Lcom/stripe/proto/iot_relay/pub/api/Input;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/api/Input$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.CustomText#ADAPTER"
        jsonName = "customText"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final required:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.Selection#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final toggles:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.Toggle#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.Input$InputType#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/api/Input;->Companion:Lcom/stripe/proto/iot_relay/pub/api/Input$Companion;

    .line 213
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 212
    const-class v1, Lcom/stripe/proto/iot_relay/pub/api/Input;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 212
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/Input$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/Input$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/api/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/iot_relay/pub/api/Input;-><init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/iot_relay/pub/api/CustomText;",
            "Z",
            "Lcom/stripe/proto/iot_relay/pub/api/Selection;",
            "Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/Input;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    .line 44
    iput-boolean p2, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    .line 52
    iput-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    .line 60
    iput-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    .line 68
    iput-object p5, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    .line 86
    invoke-static {v0, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 67
    sget-object p4, Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;->INPUT_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 75
    const-string p5, ""

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 76
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 77
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/iot_relay/pub/api/Input;-><init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/api/Input;Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/Input;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 140
    iget-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 141
    iget-boolean p2, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 142
    iget-object p3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 143
    iget-object p4, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 144
    iget-object p5, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 145
    iget-object p6, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 139
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/iot_relay/pub/api/Input;->copy(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/Input;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/Input;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/iot_relay/pub/api/CustomText;",
            "Z",
            "Lcom/stripe/proto/iot_relay/pub/api/Selection;",
            "Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Toggle;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/iot_relay/pub/api/Input;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toggles"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/Input;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/iot_relay/pub/api/Input;-><init>(Lcom/stripe/proto/iot_relay/pub/api/CustomText;ZLcom/stripe/proto/iot_relay/pub/api/Selection;Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;Ljava/lang/String;Ljava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 102
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/Input;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/Input;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 105
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    iget-boolean v3, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 107
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    if-eq v1, v3, :cond_6

    return v2

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 109
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->hashCode:I

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/iot_relay/pub/api/CustomText;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 118
    iget-boolean v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/iot_relay/pub/api/Selection;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    invoke-virtual {v1}, Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->hashCode:I

    :cond_2
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input;->newBuilder()Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;
    .locals 2

    .line 89
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    .line 91
    iget-boolean v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    iput-boolean v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->required:Z

    .line 92
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    .line 93
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->id:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->toggles:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/Input;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/Input$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->custom_text:Lcom/stripe/proto/iot_relay/pub/api/CustomText;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "required="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->required:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->selection:Lcom/stripe/proto/iot_relay/pub/api/Selection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->type:Lcom/stripe/proto/iot_relay/pub/api/Input$InputType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toggles="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/Input;->toggles:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Input{"

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
