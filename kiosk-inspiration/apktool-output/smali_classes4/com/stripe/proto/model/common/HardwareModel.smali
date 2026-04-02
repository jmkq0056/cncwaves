.class public final Lcom/stripe/proto/model/common/HardwareModel;
.super Lcom/squareup/wire/Message;
.source "HardwareModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/common/HardwareModel$Builder;,
        Lcom/stripe/proto/model/common/HardwareModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "Lcom/stripe/proto/model/common/HardwareModel$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bo\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015Jp\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/common/HardwareModel$Builder;",
        "unknown_hardware",
        "Lcom/stripe/proto/model/common/UnknownHardware;",
        "verifone_hardware",
        "Lcom/stripe/proto/model/common/VerifoneHardware;",
        "pos_info",
        "Lcom/stripe/proto/model/common/POSInfo;",
        "bbpos_hardware",
        "Lcom/stripe/proto/model/common/BBPosHardware;",
        "simulated_hardware",
        "Lcom/stripe/proto/model/common/SimulatedHardware;",
        "cots_hardware",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "sunmi_hardware",
        "Lcom/stripe/proto/model/common/SunmiHardware;",
        "morph_hardware",
        "Lcom/stripe/proto/model/common/MorphHardware;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
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
            "Lcom/stripe/proto/model/common/HardwareModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/common/HardwareModel$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.BBPosHardware#ADAPTER"
        jsonName = "bbposHardware"
        oneofName = "device_type"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.COTSHardware#ADAPTER"
        jsonName = "cotsHardware"
        oneofName = "device_type"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.MorphHardware#ADAPTER"
        jsonName = "morphHardware"
        oneofName = "device_type"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final pos_info:Lcom/stripe/proto/model/common/POSInfo;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.POSInfo#ADAPTER"
        jsonName = "posInfo"
        oneofName = "device_type"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SimulatedHardware#ADAPTER"
        jsonName = "simulatedHardware"
        oneofName = "device_type"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.SunmiHardware#ADAPTER"
        jsonName = "sunmiHardware"
        oneofName = "device_type"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.UnknownHardware#ADAPTER"
        jsonName = "unknownHardware"
        oneofName = "device_type"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.common.VerifoneHardware#ADAPTER"
        jsonName = "verifoneHardware"
        oneofName = "device_type"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/common/HardwareModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/common/HardwareModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/common/HardwareModel;->Companion:Lcom/stripe/proto/model/common/HardwareModel$Companion;

    .line 319
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 318
    const-class v1, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 322
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 318
    new-instance v3, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/common/HardwareModel$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/stripe/proto/model/common/HardwareModel;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p9}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 31
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 40
    iput-object p2, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 49
    iput-object p3, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 58
    iput-object p4, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 67
    iput-object p5, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 76
    iput-object p6, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 85
    iput-object p7, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 94
    iput-object p8, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    .line 106
    filled-new-array {p5, p6, p7, p8}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of unknown_hardware, verifone_hardware, pos_info, bbpos_hardware, simulated_hardware, cots_hardware, sunmi_hardware, morph_hardware may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 103
    sget-object p9, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_8
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p10}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    .line 171
    iget-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    .line 172
    iget-object p2, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    .line 173
    iget-object p3, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    .line 174
    iget-object p4, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    .line 175
    iget-object p5, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    .line 176
    iget-object p6, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    .line 177
    iget-object p7, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    .line 178
    iget-object p8, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    .line 179
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object p9

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 170
    invoke-virtual/range {p2 .. p11}, Lcom/stripe/proto/model/common/HardwareModel;->copy(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)Lcom/stripe/proto/model/common/HardwareModel;
    .locals 11

    const-string v0, "unknownFields"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/stripe/proto/model/common/HardwareModel;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 127
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/common/HardwareModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/common/HardwareModel;

    invoke-virtual {p1}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eq v1, v3, :cond_4

    return v2

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eq v1, v3, :cond_6

    return v2

    .line 133
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 134
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    iget-object v3, p1, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eq v1, v3, :cond_9

    return v2

    .line 136
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    iget-object p1, p1, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget v0, p0, Lcom/stripe/proto/model/common/HardwareModel;->hashCode:I

    if-nez v0, :cond_8

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/UnknownHardware;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/VerifoneHardware;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/POSInfo;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/BBPosHardware;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SimulatedHardware;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/COTSHardware;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/SunmiHardware;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/common/MorphHardware;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    .line 152
    iput v0, p0, Lcom/stripe/proto/model/common/HardwareModel;->hashCode:I

    :cond_8
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel;->newBuilder()Lcom/stripe/proto/model/common/HardwareModel$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 2

    .line 112
    new-instance v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/HardwareModel$Builder;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    iput-object v1, v0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    .line 121
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/common/HardwareModel$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verifone_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bbpos_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "simulated_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cots_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sunmi_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "morph_hardware="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_7
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "HardwareModel{"

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
