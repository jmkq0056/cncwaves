.class public final Lcom/stripe/stripeterminal/external/models/CardPresentOptions;
.super Ljava/lang/Object;
.source "CardPresentOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentOptions$$serializer;,
        Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 ;2\u00060\u0001j\u0002`\u0002:\u0002:;B_\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014BK\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010$\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010%\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001bJ\u000b\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003Jb\u0010+\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00c6\u0001\u00a2\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010/H\u00d6\u0003J\t\u00100\u001a\u00020\u0004H\u00d6\u0001J\t\u00101\u001a\u00020\u000bH\u00d6\u0001J&\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u00002\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000208H\u00c1\u0001\u00a2\u0006\u0002\u00089R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001bR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006<"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentOptions;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "requestExtendedAuthorization",
        "",
        "requestIncrementalAuthorizationSupport",
        "routing",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;",
        "requestDynamicCurrencyConversion",
        "",
        "dynamicCurrencyConversion",
        "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;",
        "surcharge",
        "Lcom/stripe/stripeterminal/external/models/Surcharge;",
        "requestPartialAuthorization",
        "Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V",
        "getDynamicCurrencyConversion",
        "()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;",
        "getRequestDynamicCurrencyConversion",
        "()Ljava/lang/String;",
        "getRequestExtendedAuthorization",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getRequestIncrementalAuthorizationSupport",
        "getRequestPartialAuthorization",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;",
        "getRouting",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;",
        "getSurcharge",
        "()Lcom/stripe/stripeterminal/external/models/Surcharge;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)Lcom/stripe/stripeterminal/external/models/CardPresentOptions;",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;


# instance fields
.field private final dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

.field private final requestDynamicCurrencyConversion:Ljava/lang/String;

.field private final requestExtendedAuthorization:Ljava/lang/Boolean;

.field private final requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

.field private final requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

.field private final routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

.field private final surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentOptions$Companion;

    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p9, p1, 0x7f

    const/16 v0, 0x7f

    if-eq v0, p9, :cond_0

    .line 8
    sget-object p9, Lcom/stripe/stripeterminal/external/models/CardPresentOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentOptions$$serializer;

    invoke-virtual {p9}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p9

    invoke-static {p1, v0, p9}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    .line 11
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    .line 12
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    .line 13
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    .line 15
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    .line 16
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 8
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/CardPresentOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/CardPresentOptions;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 8
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/stripeterminal/external/models/Surcharge$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Surcharge$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    const/4 v3, 0x5

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    return-object v0
.end method

.method public final component6()Lcom/stripe/stripeterminal/external/models/Surcharge;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    return-object v0
.end method

.method public final component7()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)Lcom/stripe/stripeterminal/external/models/CardPresentOptions;
    .locals 8

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lcom/stripe/stripeterminal/external/models/Surcharge;Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDynamicCurrencyConversion()Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    return-object v0
.end method

.method public final getRequestDynamicCurrencyConversion()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestExtendedAuthorization()Ljava/lang/Boolean;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestIncrementalAuthorizationSupport()Ljava/lang/Boolean;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getRequestPartialAuthorization()Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    return-object v0
.end method

.method public final getRouting()Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    return-object v0
.end method

.method public final getSurcharge()Lcom/stripe/stripeterminal/external/models/Surcharge;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Surcharge;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardPresentOptions(requestExtendedAuthorization="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestExtendedAuthorization:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestIncrementalAuthorizationSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestIncrementalAuthorizationSupport:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->routing:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestDynamicCurrencyConversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestDynamicCurrencyConversion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dynamicCurrencyConversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->dynamicCurrencyConversion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surcharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->surcharge:Lcom/stripe/stripeterminal/external/models/Surcharge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestPartialAuthorization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentOptions;->requestPartialAuthorization:Lcom/stripe/stripeterminal/external/models/CardPresentRequestPartialAuthorization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
