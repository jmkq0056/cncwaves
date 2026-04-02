.class public final Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
.super Lcom/squareup/wire/Message;
.source "BbposKeyProfileMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;,
        Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0017\u0018\u0019BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJL\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0010\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;",
        "name",
        "",
        "id",
        "pek0_keyset_id",
        "p2pe_type",
        "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;",
        "is_dual_slot_pek",
        "",
        "is_test",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V",
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
        "KeyProfileP2PEType",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final is_dual_slot_pek:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isDualSlotPek"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final is_test:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isTest"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.core.BbposKeyProfileMetadata$KeyProfileP2PEType#ADAPTER"
        jsonName = "p2peType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x7
    .end annotation
.end field

.field public final pek0_keyset_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "pek0KeysetId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion;

    .line 238
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 237
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 241
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 237
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pek0_keyset_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2pe_type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    .line 81
    iput-boolean p5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    .line 90
    iput-boolean p6, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    .line 34
    const-string v0, ""

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

    .line 77
    sget-object p4, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->KEY_PROFILE__P_2_PE_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 99
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 34
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 153
    iget-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 154
    iget-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 155
    iget-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 156
    iget-object p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 157
    iget-boolean p5, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 158
    iget-boolean p6, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 159
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move p8, p6

    move-object p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 152
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;
    .locals 9

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pek0_keyset_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2pe_type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;ZZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 118
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    if-eq v1, v3, :cond_6

    return v2

    .line 121
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    iget-boolean v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 122
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    iget-boolean p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 127
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->hashCode:I

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 130
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 131
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 134
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 135
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;
    .locals 2

    .line 102
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->name:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->id:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->pek0_keyset_id:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    .line 107
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    iput-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_dual_slot_pek:Z

    .line 108
    iget-boolean v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    iput-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->is_test:Z

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 143
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pek0_keyset_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->pek0_keyset_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "p2pe_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->p2pe_type:Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata$KeyProfileP2PEType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_dual_slot_pek="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_dual_slot_pek:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_test="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/core/BbposKeyProfileMetadata;->is_test:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "BbposKeyProfileMetadata{"

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
