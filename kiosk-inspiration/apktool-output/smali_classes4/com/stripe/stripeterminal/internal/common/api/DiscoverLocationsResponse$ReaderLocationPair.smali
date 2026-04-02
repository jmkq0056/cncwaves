.class public final Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;
.super Ljava/lang/Object;
.source "DiscoverLocationsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderLocationPair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$$serializer;,
        Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0002\u0019\u001aB3\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB!\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\u000cJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u00c1\u0001\u00a2\u0006\u0002\u0008\u0018R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;",
        "",
        "seen1",
        "",
        "location",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "serialNumbers",
        "",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;)V",
        "getLocation",
        "()Lcom/stripe/stripeterminal/external/models/Location;",
        "getSerialNumbers",
        "()Ljava/util/List;",
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

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$Companion;


# instance fields
.field private final location:Lcom/stripe/stripeterminal/external/models/Location;

.field private final serialNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->Companion:Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair$Companion;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;-><init>(Lcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-nez p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/stripeterminal/external/models/Location;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serialNumbers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/stripeterminal/external/models/Location;

    .line 15
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;-><init>(Lcom/stripe/stripeterminal/external/models/Location;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 10
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 10
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/stripeterminal/external/models/Location;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/stripe/stripeterminal/external/models/Location$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Location$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/stripeterminal/external/models/Location;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    :goto_1
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getLocation()Lcom/stripe/stripeterminal/external/models/Location;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->location:Lcom/stripe/stripeterminal/external/models/Location;

    return-object v0
.end method

.method public final getSerialNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->serialNumbers:Ljava/util/List;

    return-object v0
.end method
