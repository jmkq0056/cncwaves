.class public final Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
.super Ljava/lang/Object;
.source "OfflineStatusDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 ,2\u00060\u0001j\u0002`\u0002:\u0002+,BI\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u000cH\u00c6\u0003J=\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0014\u0008\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\"\u001a\u00020\tH\u00d6\u0001J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u00c1\u0001\u00a2\u0006\u0002\u0008*R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016\u00a8\u0006-"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "offlinePaymentsCount",
        "offlineSetupIntentsCount",
        "offlinePaymentAmountsByCurrency",
        "",
        "",
        "",
        "networkStatus",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IIILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V",
        "getNetworkStatus",
        "()Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "getOfflinePaymentAmountsByCurrency",
        "()Ljava/util/Map;",
        "getOfflinePaymentsCount",
        "()I",
        "getOfflineSetupIntentsCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;


# instance fields
.field private final networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

.field private final offlinePaymentAmountsByCurrency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final offlinePaymentsCount:I

.field private final offlineSetupIntentsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->Companion:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$Companion;

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->Companion:Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NetworkStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 14
    sget-object p6, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;

    invoke-virtual {p6}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    iput p3, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ")V"
        }
    .end annotation

    const-string v0, "offlinePaymentAmountsByCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    .line 26
    iput p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    .line 31
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    .line 35
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->copy(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 14
    sget-object v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    return v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    return-object v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object v0
.end method

.method public final copy(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;"
        }
    .end annotation

    const-string v0, "offlinePaymentAmountsByCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;-><init>(IILjava/util/Map;Lcom/stripe/stripeterminal/external/models/NetworkStatus;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getNetworkStatus()Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object v0
.end method

.method public final getOfflinePaymentAmountsByCurrency()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    return-object v0
.end method

.method public final getOfflinePaymentsCount()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    return v0
.end method

.method public final getOfflineSetupIntentsCount()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineStatusDetails(offlinePaymentsCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineSetupIntentsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlineSetupIntentsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlinePaymentAmountsByCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->offlinePaymentAmountsByCurrency:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;->networkStatus:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
