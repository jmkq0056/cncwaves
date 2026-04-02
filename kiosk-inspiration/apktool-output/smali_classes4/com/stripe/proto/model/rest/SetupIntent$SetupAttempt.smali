.class public final Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
.super Lcom/squareup/wire/Message;
.source "SetupIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/rest/SetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupAttempt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;,
        Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0004#$%&B\u00ab\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u0017J\u00b1\u0001\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u0008\u0010\"\u001a\u00020\u0004H\u0016R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;",
        "id",
        "",
        "object_",
        "application",
        "created",
        "",
        "customer",
        "livemode",
        "",
        "on_behalf_of",
        "payment_method",
        "payment_method_details",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;",
        "setup_error",
        "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;",
        "setup_intent",
        "status",
        "usage",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "PaymentMethodDetails",
        "SetupError",
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
            "Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final application:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final created:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final object_:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        declaredName = "object"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final on_behalf_of:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "onBehalfOf"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final payment_method:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "paymentMethod"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$PaymentMethodDetails#ADAPTER"
        jsonName = "paymentMethodDetails"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.SetupIntent$SetupAttempt$SetupError#ADAPTER"
        jsonName = "setupError"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final setup_intent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "setupIntent"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final status:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final usage:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->Companion:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion;

    .line 1582
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1581
    const-class v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1585
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1581
    new-instance v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    const/16 v15, 0x3fff

    const/16 v16, 0x0

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    sget-object v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 1184
    iput-object p1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    .line 1194
    iput-object p2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    .line 1205
    iput-object p3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    .line 1215
    iput-object p4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    .line 1225
    iput-object p5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    .line 1235
    iput-object p6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    .line 1245
    iput-object p7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    .line 1256
    iput-object p8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    .line 1267
    iput-object p9, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 1279
    iput-object p10, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 1291
    iput-object p11, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    .line 1302
    iput-object p12, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    .line 1312
    iput-object p13, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v2, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 1319
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p14, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    .line 1180
    invoke-direct/range {p1 .. p15}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 1402
    iget-object v2, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 1403
    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 1404
    iget-object v4, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 1405
    iget-object v5, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 1406
    iget-object v6, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 1407
    iget-object v7, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 1408
    iget-object v8, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 1409
    iget-object v9, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 1410
    iget-object v10, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 1411
    iget-object v11, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 1412
    iget-object v12, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 1413
    iget-object v13, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 1414
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 1400
    invoke-virtual/range {p1 .. p15}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;
    .locals 16

    const-string v0, "unknownFields"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1415
    new-instance v1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1342
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1344
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1345
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1346
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1347
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 1348
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1349
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1350
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 1351
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1352
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 1353
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 1354
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 1355
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 1356
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1361
    iget v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->hashCode:I

    if-nez v0, :cond_d

    .line 1363
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1364
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

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

    .line 1365
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1366
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1367
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1368
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1369
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1370
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1371
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1372
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1373
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1374
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1375
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1376
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_c
    add-int/2addr v0, v2

    .line 1377
    iput v0, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->hashCode:I

    :cond_d
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1180
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;
    .locals 2

    .line 1322
    new-instance v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;-><init>()V

    .line 1323
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->id:Ljava/lang/String;

    .line 1324
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->object_:Ljava/lang/String;

    .line 1325
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->application:Ljava/lang/String;

    .line 1326
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->created:Ljava/lang/Long;

    .line 1327
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->customer:Ljava/lang/String;

    .line 1328
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->livemode:Ljava/lang/Boolean;

    .line 1329
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->on_behalf_of:Ljava/lang/String;

    .line 1330
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method:Ljava/lang/String;

    .line 1331
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 1332
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    .line 1333
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->setup_intent:Ljava/lang/String;

    .line 1334
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->status:Ljava/lang/String;

    .line 1335
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->usage:Ljava/lang/String;

    .line 1336
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1384
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "object_="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->object_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->application:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->created:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1388
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1390
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "on_behalf_of="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->on_behalf_of:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1391
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_error="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_error:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$SetupError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1394
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->setup_intent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->usage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1397
    :cond_c
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "SetupAttempt{"

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
