.class public final Lcom/stripe/proto/model/config/ContactlessCombination;
.super Lcom/squareup/wire/Message;
.source "ContactlessCombination.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/ContactlessCombination$Builder;,
        Lcom/stripe/proto/model/config/ContactlessCombination$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 (2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\'(B\u00a9\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0014\u0008\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJ\u00aa\u0001\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0014\u0008\u0002\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dJ\u0013\u0010 \u001a\u00020\t2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0002H\u0016J\u0008\u0010&\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ContactlessCombination;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/ContactlessCombination$Builder;",
        "aid",
        "",
        "tlvs",
        "",
        "Lcom/stripe/proto/model/config/Tlv;",
        "is_signature_supported",
        "",
        "pay_pass_parameters",
        "Lcom/stripe/proto/model/config/PayPassParameters;",
        "pay_wave_parameters",
        "Lcom/stripe/proto/model/config/PayWaveParameters;",
        "express_pay_parameters",
        "Lcom/stripe/proto/model/config/ExpressPayParameters;",
        "jcb_parameters",
        "Lcom/stripe/proto/model/config/JcbParameters;",
        "discover_parameters",
        "Lcom/stripe/proto/model/config/DiscoverParameters;",
        "interac_parameters",
        "Lcom/stripe/proto/model/config/InteracParameters;",
        "epal_parameters",
        "Lcom/stripe/proto/model/config/EpalParameters;",
        "eftpos_parameters",
        "Lcom/stripe/proto/model/config/EftposParameters;",
        "aid_params",
        "",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/config/ContactlessCombination;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/ContactlessCombination$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final aid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final aid_params:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "aidParams"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0xb
        tag = 0xc
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

.field public final discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.DiscoverParameters#ADAPTER"
        jsonName = "discoverParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x7
        tag = 0x7
    .end annotation
.end field

.field public final eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.EftposParameters#ADAPTER"
        jsonName = "eftposParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.EpalParameters#ADAPTER"
        jsonName = "epalParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x9
        tag = 0x9
    .end annotation
.end field

.field public final express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ExpressPayParameters#ADAPTER"
        jsonName = "expressPayParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.InteracParameters#ADAPTER"
        jsonName = "interacParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x8
        tag = 0x8
    .end annotation
.end field

.field public final is_signature_supported:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "isSignatureSupported"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0xa
    .end annotation
.end field

.field public final jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.JcbParameters#ADAPTER"
        jsonName = "jcbParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PayPassParameters#ADAPTER"
        jsonName = "payPassParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.PayWaveParameters#ADAPTER"
        jsonName = "payWaveParameters"
        oneofName = "specific_kernel_parameters"
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final tlvs:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.Tlv#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/ContactlessCombination$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/ContactlessCombination;->Companion:Lcom/stripe/proto/model/config/ContactlessCombination$Companion;

    .line 437
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 436
    const-class v1, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 440
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 436
    new-instance v3, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/ContactlessCombination$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/ContactlessCombination;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 16

    const/16 v14, 0x1fff

    const/4 v15, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/proto/model/config/ContactlessCombination;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;Z",
            "Lcom/stripe/proto/model/config/PayPassParameters;",
            "Lcom/stripe/proto/model/config/PayWaveParameters;",
            "Lcom/stripe/proto/model/config/ExpressPayParameters;",
            "Lcom/stripe/proto/model/config/JcbParameters;",
            "Lcom/stripe/proto/model/config/DiscoverParameters;",
            "Lcom/stripe/proto/model/config/InteracParameters;",
            "Lcom/stripe/proto/model/config/EpalParameters;",
            "Lcom/stripe/proto/model/config/EftposParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p7

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    const-string v3, "aid"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tlvs"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "aid_params"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "unknownFields"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v5, Lcom/stripe/proto/model/config/ContactlessCombination;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v5, v2}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    .line 59
    iput-object p4, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 68
    iput-object p5, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 77
    iput-object p6, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 86
    iput-object v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    move-object p1, p8

    .line 95
    iput-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    move-object p3, p9

    .line 104
    iput-object p3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    move-object/from16 v2, p10

    .line 113
    iput-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    move-object/from16 v5, p11

    .line 122
    iput-object v5, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    .line 144
    invoke-static {v3, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    .line 154
    invoke-static {v4, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    .line 157
    filled-new-array/range {p8 .. p11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p5, p6, p7, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of pay_pass_parameters, pay_wave_parameters, express_pay_parameters, jcb_parameters, discover_parameters, interac_parameters, epal_parameters, eftpos_parameters may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 45
    const-string p1, ""

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    and-int/lit8 v2, v0, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, p4

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object/from16 v4, p5

    :goto_2
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    move-object v5, v3

    goto :goto_3

    :cond_5
    move-object/from16 v5, p6

    :goto_3
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    move-object v6, v3

    goto :goto_4

    :cond_6
    move-object/from16 v6, p7

    :goto_4
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    move-object v7, v3

    goto :goto_5

    :cond_7
    move-object/from16 v7, p8

    :goto_5
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    move-object v8, v3

    goto :goto_6

    :cond_8
    move-object/from16 v8, p9

    :goto_6
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    move-object v9, v3

    goto :goto_7

    :cond_9
    move-object/from16 v9, p10

    :goto_7
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    move-object/from16 v3, p11

    :goto_8
    and-int/lit16 v10, v0, 0x800

    if-eqz v10, :cond_b

    .line 131
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v10

    goto :goto_9

    :cond_b
    move-object/from16 v10, p12

    :goto_9
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 132
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_a

    :cond_c
    move-object/from16 p15, p13

    :goto_a
    move-object p3, p1

    move-object p4, p2

    move/from16 p5, v1

    move-object/from16 p6, v2

    move-object/from16 p13, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p14, v10

    move-object p2, p0

    .line 34
    invoke-direct/range {p2 .. p15}, Lcom/stripe/proto/model/config/ContactlessCombination;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/ContactlessCombination;Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/config/ContactlessCombination;
    .locals 12

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 240
    iget-boolean v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    goto :goto_1

    :cond_2
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    goto :goto_2

    :cond_3
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    goto :goto_3

    :cond_4
    move-object/from16 v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    .line 243
    iget-object v5, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    goto :goto_4

    :cond_5
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    .line 244
    iget-object v6, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    goto :goto_5

    :cond_6
    move-object/from16 v6, p7

    :goto_5
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    .line 245
    iget-object v7, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    goto :goto_6

    :cond_7
    move-object/from16 v7, p8

    :goto_6
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    .line 246
    iget-object v8, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    goto :goto_7

    :cond_8
    move-object/from16 v8, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_9

    .line 247
    iget-object v9, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    goto :goto_8

    :cond_9
    move-object/from16 v9, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_a

    .line 248
    iget-object v10, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    goto :goto_9

    :cond_a
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_b

    .line 249
    iget-object v11, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    goto :goto_a

    :cond_b
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    .line 250
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_b

    :cond_c
    move-object/from16 p15, p13

    :goto_b
    move-object p2, p0

    move-object p3, p1

    move-object/from16 p4, v1

    move/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    move-object/from16 p12, v9

    move-object/from16 p13, v10

    move-object/from16 p14, v11

    .line 237
    invoke-virtual/range {p2 .. p15}, Lcom/stripe/proto/model/config/ContactlessCombination;->copy(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactlessCombination;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)Lcom/stripe/proto/model/config/ContactlessCombination;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/config/Tlv;",
            ">;Z",
            "Lcom/stripe/proto/model/config/PayPassParameters;",
            "Lcom/stripe/proto/model/config/PayWaveParameters;",
            "Lcom/stripe/proto/model/config/ExpressPayParameters;",
            "Lcom/stripe/proto/model/config/JcbParameters;",
            "Lcom/stripe/proto/model/config/DiscoverParameters;",
            "Lcom/stripe/proto/model/config/InteracParameters;",
            "Lcom/stripe/proto/model/config/EpalParameters;",
            "Lcom/stripe/proto/model/config/EftposParameters;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/config/ContactlessCombination;"
        }
    .end annotation

    const-string v0, "aid"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tlvs"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aid_params"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v1, Lcom/stripe/proto/model/config/ContactlessCombination;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v14}, Lcom/stripe/proto/model/config/ContactlessCombination;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/stripe/proto/model/config/PayPassParameters;Lcom/stripe/proto/model/config/PayWaveParameters;Lcom/stripe/proto/model/config/ExpressPayParameters;Lcom/stripe/proto/model/config/JcbParameters;Lcom/stripe/proto/model/config/DiscoverParameters;Lcom/stripe/proto/model/config/InteracParameters;Lcom/stripe/proto/model/config/EpalParameters;Lcom/stripe/proto/model/config/EftposParameters;Ljava/util/Map;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 182
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/ContactlessCombination;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/ContactlessCombination;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 186
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 188
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 190
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 193
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 194
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 195
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 200
    iget v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->hashCode:I

    if-nez v0, :cond_8

    .line 202
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PayPassParameters;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/PayWaveParameters;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ExpressPayParameters;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/JcbParameters;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/DiscoverParameters;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/InteracParameters;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/EpalParameters;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/EftposParameters;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    iput v0, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->hashCode:I

    :cond_8
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination;->newBuilder()Lcom/stripe/proto/model/config/ContactlessCombination$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/ContactlessCombination$Builder;
    .locals 2

    .line 163
    new-instance v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->tlvs:Ljava/util/List;

    .line 166
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->is_signature_supported:Z

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->aid_params:Ljava/util/Map;

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ContactlessCombination;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/ContactlessCombination$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 222
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tlvs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->tlvs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_signature_supported="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->is_signature_supported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay_pass_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_pass_parameters:Lcom/stripe/proto/model/config/PayPassParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay_wave_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->pay_wave_parameters:Lcom/stripe/proto/model/config/PayWaveParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "express_pay_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->express_pay_parameters:Lcom/stripe/proto/model/config/ExpressPayParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jcb_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->jcb_parameters:Lcom/stripe/proto/model/config/JcbParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "discover_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->discover_parameters:Lcom/stripe/proto/model/config/DiscoverParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interac_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->interac_parameters:Lcom/stripe/proto/model/config/InteracParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "epal_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->epal_parameters:Lcom/stripe/proto/model/config/EpalParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eftpos_parameters="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->eftpos_parameters:Lcom/stripe/proto/model/config/EftposParameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aid_params="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ContactlessCombination;->aid_params:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ContactlessCombination{"

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
