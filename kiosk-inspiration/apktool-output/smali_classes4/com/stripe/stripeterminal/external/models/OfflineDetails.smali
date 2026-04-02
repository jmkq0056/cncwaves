.class public final Lcom/stripe/stripeterminal/external/models/OfflineDetails;
.super Ljava/lang/Object;
.source "OfflineDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/OfflineDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineDetails.kt\ncom/stripe/stripeterminal/external/models/OfflineDetails\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 92\u00060\u0001j\u0002`\u0002:\u000289B5\u0008\u0017\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000bBK\u0008\u0011\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u0016B=\u0008\u0000\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0017J\u000b\u0010%\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010&\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\t\u0010)\u001a\u00020\u0013H\u00c6\u0003JA\u0010*\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u00c6\u0001J\u0013\u0010+\u001a\u00020\u00132\u0008\u0010,\u001a\u0004\u0018\u00010-H\u00d6\u0003J\t\u0010.\u001a\u00020\rH\u00d6\u0001J\t\u0010/\u001a\u00020\u0004H\u00d6\u0001J&\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00002\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u00c1\u0001\u00a2\u0006\u0002\u00087R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010$\u00a8\u0006:"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "id",
        "",
        "storedAtMs",
        "",
        "emvData",
        "tip",
        "Lcom/stripe/stripeterminal/external/models/Tip;",
        "readMethod",
        "(Ljava/lang/String;JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/Tip;Ljava/lang/String;)V",
        "seen1",
        "",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
        "amountDetails",
        "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "requiresUpload",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)V",
        "getAmountDetails",
        "()Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "getCardPresentDetails",
        "()Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;",
        "getId$annotations",
        "()V",
        "getId",
        "()Ljava/lang/String;",
        "getRequiresUpload",
        "()Z",
        "getStoredAtMs$annotations",
        "getStoredAtMs",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;


# instance fields
.field private final amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

.field private final cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

.field private final id:Ljava/lang/String;

.field private final requiresUpload:Z

.field private final storedAtMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineDetails$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "storedAt"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p8, p1, 0x2

    const/4 v0, 0x2

    if-eq v0, p8, :cond_0

    .line 15
    sget-object p8, Lcom/stripe/stripeterminal/external/models/OfflineDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineDetails$$serializer;

    invoke-virtual {p8}, Lcom/stripe/stripeterminal/external/models/OfflineDetails$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x0

    if-nez p8, :cond_1

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    :goto_0
    iput-wide p3, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    goto :goto_2

    :cond_3
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    return-void

    :cond_4
    iput-boolean p7, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    .line 25
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    .line 31
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    .line 36
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    .line 42
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_3

    const/4 p6, 0x1

    :cond_3
    move p7, p6

    move-object p6, p5

    move-object p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 16
    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;-><init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/stripe/stripeterminal/external/models/Tip;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    const-string v2, "emvData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v2, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;

    move-object/from16 v3, p6

    invoke-virtual {v2, v0, v3}, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$Companion;->fromEmvDataAndReadMethod(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/stripe/stripeterminal/external/models/AmountDetails;-><init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    .line 55
    invoke-direct/range {v3 .. v11}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;-><init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/OfflineDetails;Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p5, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    :cond_4
    move-object p7, p5

    move p8, p6

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p8}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->copy(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStoredAtMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "storedAt"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    if-eq v1, v2, :cond_7

    :goto_3
    iget-boolean p0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_7
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    return-wide v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    return-object v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 7

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;-><init>(Ljava/lang/String;JLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    iget-boolean p1, p1, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAmountDetails()Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    return-object v0
.end method

.method public final getCardPresentDetails()Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequiresUpload()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    return v0
.end method

.method public final getStoredAtMs()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AmountDetails;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineDetails(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storedAtMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->storedAtMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardPresentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiresUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->requiresUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
