.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;
.super Lcom/squareup/wire/Message;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineAllowedVersionDetailsPb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;,
        Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBS\u0012\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJT\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;",
        "firmware_versions",
        "",
        "",
        "config_versions",
        "key_profile_version",
        "expiration_time",
        "",
        "key_profile_metadata",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V",
        "getKey_profile_version$annotations",
        "()V",
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
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final config_versions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "configVersions"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final expiration_time:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        jsonName = "expirationTime"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final firmware_versions:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "firmwareVersions"
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

.field public final key_profile_metadata:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb$KeyProfileMetadata#ADAPTER"
        jsonName = "keyProfileMetadata"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final key_profile_version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "keyProfileVersion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->Companion:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion;

    .line 1595
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1594
    const-class v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1598
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1594
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "firmware_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config_versions"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "key_profile_version"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "key_profile_metadata"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "unknownFields"

    invoke-static {p7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1444
    sget-object v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v3, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1423
    iput-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    .line 1433
    iput-wide p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    .line 1454
    invoke-static {v0, p1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    .line 1464
    invoke-static {v1, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    .line 1475
    invoke-static {v2, p6}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 1418
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 1419
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 1432
    const-string p3, ""

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 1442
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    .line 1443
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_5
    move-object p8, p6

    move-object p9, p7

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 1417
    invoke-direct/range {p2 .. p9}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 1525
    iget-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 1526
    iget-object p2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 1527
    iget-object p3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 1528
    iget-wide p4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 1529
    iget-object p6, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    .line 1530
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_5
    move-object p8, p6

    move-object p9, p7

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 1524
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->copy(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getKey_profile_version$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "key_profile_version is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$KeyProfileMetadata;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;"
        }
    .end annotation

    const-string v0, "firmware_versions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config_versions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_profile_metadata"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1531
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JLjava/util/List;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1490
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1491
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1492
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1493
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1494
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1495
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    iget-wide v5, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 1496
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1501
    iget v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->hashCode:I

    if-nez v0, :cond_0

    .line 1503
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1504
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1505
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1506
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1507
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1508
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1509
    iput v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;
    .locals 3

    .line 1478
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;-><init>()V

    .line 1479
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->firmware_versions:Ljava/util/List;

    .line 1480
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->config_versions:Ljava/util/List;

    .line 1481
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->key_profile_version:Ljava/lang/String;

    .line 1482
    iget-wide v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    iput-wide v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->expiration_time:J

    .line 1483
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->key_profile_metadata:Ljava/util/List;

    .line 1484
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1516
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_versions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->firmware_versions:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1517
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_versions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->config_versions:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1518
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_version:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expiration_time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->expiration_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1520
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key_profile_metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflineAllowedVersionDetailsPb;->key_profile_metadata:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1521
    :cond_2
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "OfflineAllowedVersionDetailsPb{"

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
