.class public final Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
.super Lcom/squareup/wire/Message;
.source "VectorRegionalConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;,
        Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB{\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J|\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u000fH\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;",
        "contact_parameters",
        "Lcom/stripe/proto/model/config/ContactApplicationParametersList;",
        "contact_public_keys",
        "Lcom/stripe/proto/model/config/CaPublicKeyList;",
        "contactless_combinations",
        "Lcom/stripe/proto/model/config/ContactlessCombinationsList;",
        "contactless_public_keys",
        "allow_quick_chip",
        "",
        "require_signature_on_swipe",
        "disable_oda",
        "region",
        "",
        "hash",
        "enable_emv_tone",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_quick_chip:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "allowQuickChip"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ContactApplicationParametersList#ADAPTER"
        jsonName = "contactParameters"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.CaPublicKeyList#ADAPTER"
        jsonName = "contactPublicKeys"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ContactlessCombinationsList#ADAPTER"
        jsonName = "contactlessCombinations"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.CaPublicKeyList#ADAPTER"
        jsonName = "contactlessPublicKeys"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final disable_oda:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableOda"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final enable_emv_tone:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableEmvTone"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final hash:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final region:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final require_signature_on_swipe:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "requireSignatureOnSwipe"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->Companion:Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion;

    .line 304
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 303
    const-class v1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 307
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 303
    new-instance v3, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;-><init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V
    .locals 1

    const-string v0, "region"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 33
    iput-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    .line 42
    iput-object p2, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 51
    iput-object p3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    .line 60
    iput-object p4, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 69
    iput-boolean p5, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    .line 78
    iput-boolean p6, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    .line 87
    iput-boolean p7, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    .line 96
    iput-object p8, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    .line 112
    iput-boolean p10, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    const/4 v0, 0x0

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 32
    const-string v1, ""

    if-eqz p13, :cond_7

    move-object p8, v1

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v1

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 121
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_a
    move-object p12, p11

    move p11, p10

    move-object p10, p9

    move-object p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 32
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;-><init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 191
    iget-object p1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 192
    iget-object p2, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 193
    iget-object p3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 194
    iget-object p4, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 195
    iget-boolean p5, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 196
    iget-boolean p6, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 197
    iget-boolean p7, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 198
    iget-object p8, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 199
    iget-object p9, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    .line 200
    iget-boolean p10, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    .line 201
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_a
    move p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move p8, p6

    move p9, p7

    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 190
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->copy(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)Lcom/stripe/proto/model/config/VectorRegionalConfiguration;
    .locals 13

    const-string v0, "region"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hash"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;-><init>(Lcom/stripe/proto/model/config/ContactApplicationParametersList;Lcom/stripe/proto/model/config/CaPublicKeyList;Lcom/stripe/proto/model/config/ContactlessCombinationsList;Lcom/stripe/proto/model/config/CaPublicKeyList;ZZZLjava/lang/String;Ljava/lang/String;ZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 141
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 146
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 147
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 148
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 149
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 150
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 151
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 152
    :cond_b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 157
    iget v0, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hashCode:I

    if-nez v0, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ContactApplicationParametersList;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/CaPublicKeyList;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ContactlessCombinationsList;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/CaPublicKeyList;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 164
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 165
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 166
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iput v0, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hashCode:I

    :cond_4
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->newBuilder()Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 127
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    .line 129
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->allow_quick_chip:Z

    .line 130
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->require_signature_on_swipe:Z

    .line 131
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->disable_oda:Z

    .line 132
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->region:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->hash:Ljava/lang/String;

    .line 134
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->enable_emv_tone:Z

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/VectorRegionalConfiguration$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contact_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_parameters:Lcom/stripe/proto/model/config/ContactApplicationParametersList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contact_public_keys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contact_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contactless_combinations="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_combinations:Lcom/stripe/proto/model/config/ContactlessCombinationsList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contactless_public_keys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->contactless_public_keys:Lcom/stripe/proto/model/config/CaPublicKeyList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_quick_chip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->allow_quick_chip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "require_signature_on_swipe="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->require_signature_on_swipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_oda="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->disable_oda:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "region="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->region:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->hash:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_emv_tone="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/VectorRegionalConfiguration;->enable_emv_tone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 187
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "VectorRegionalConfiguration{"

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
