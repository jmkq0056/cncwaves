.class public final Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;
.super Ljava/lang/Object;
.source "CollectDataConfiguration.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$$serializer;,
        Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Builder;,
        Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001b2\u00060\u0001j\u0002`\u0002:\u0003\u0019\u001a\u001bB+\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u0017\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u00c1\u0001\u00a2\u0006\u0002\u0008\u0018R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/CollectDataType;",
        "enableCustomerCancellation",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/CollectDataType;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/CollectDataType;Z)V",
        "getEnableCustomerCancellation",
        "()Z",
        "getType",
        "()Lcom/stripe/stripeterminal/external/models/CollectDataType;",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Builder",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;


# instance fields
.field private final enableCustomerCancellation:Z

.field private final type:Lcom/stripe/stripeterminal/external/models/CollectDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->Companion:Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$Companion;

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/CollectDataType;->values()[Lcom/stripe/stripeterminal/external/models/CollectDataType;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    const-string v3, "com.stripe.stripeterminal.external.models.CollectDataType"

    invoke-static {v3, v2}, Lkotlinx/serialization/internal/EnumsKt;->createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/CollectDataType;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 13
    sget-object p4, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$$serializer;

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->enableCustomerCancellation:Z

    return-void
.end method

.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/CollectDataType;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    .line 17
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->enableCustomerCancellation:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/CollectDataType;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/CollectDataType;Z)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iget-boolean p0, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->enableCustomerCancellation:Z

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/models/CollectDataType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;->type:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    return-object v0
.end method
