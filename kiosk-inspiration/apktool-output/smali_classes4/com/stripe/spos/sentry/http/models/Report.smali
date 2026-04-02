.class public final Lcom/stripe/spos/sentry/http/models/Report;
.super Ljava/lang/Object;
.source "Report.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/spos/sentry/http/models/Report$$serializer;,
        Lcom/stripe/spos/sentry/http/models/Report$Companion;,
        Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;,
        Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;,
        Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;,
        Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;,
        Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0081\u0008\u0018\u0000 ,2\u00020\u0001:\u0007+,-./01BM\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\u0015\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u000cH\u00c6\u0003J=\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020\nH\u00d6\u0001J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u00c1\u0001\u00a2\u0006\u0002\u0008*R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00062"
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/models/Report;",
        "",
        "seen1",
        "",
        "release",
        "Lcom/stripe/spos/sentry/http/models/BuildConfigData;",
        "exception",
        "Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;",
        "tags",
        "",
        "",
        "contexts",
        "Lcom/stripe/spos/sentry/http/models/Contexts;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)V",
        "getContexts",
        "()Lcom/stripe/spos/sentry/http/models/Contexts;",
        "getException",
        "()Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;",
        "getRelease",
        "()Lcom/stripe/spos/sentry/http/models/BuildConfigData;",
        "getTags",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$sentry_http",
        "$serializer",
        "Companion",
        "ExceptionSchema",
        "ExceptionValuesSchema",
        "MechanismSchema",
        "StackTraceFrame",
        "StackTraceSchema",
        "sentry-http"
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

.field public static final Companion:Lcom/stripe/spos/sentry/http/models/Report$Companion;


# instance fields
.field private final contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

.field private final exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

.field private final release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/spos/sentry/http/models/Report$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/spos/sentry/http/models/Report;->Companion:Lcom/stripe/spos/sentry/http/models/Report$Companion;

    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/spos/sentry/http/models/Report;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
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

    .line 9
    sget-object p6, Lcom/stripe/spos/sentry/http/models/Report$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$$serializer;

    invoke-virtual {p6}, Lcom/stripe/spos/sentry/http/models/Report$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    iput-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    iput-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    iput-object p5, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/spos/sentry/http/models/BuildConfigData;",
            "Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/spos/sentry/http/models/Contexts;",
            ")V"
        }
    .end annotation

    const-string v0, "release"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contexts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    .line 12
    iput-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    .line 13
    iput-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    .line 14
    iput-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 9
    sget-object v0, Lcom/stripe/spos/sentry/http/models/Report;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/spos/sentry/http/models/Report;Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;ILjava/lang/Object;)Lcom/stripe/spos/sentry/http/models/Report;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/spos/sentry/http/models/Report;->copy(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)Lcom/stripe/spos/sentry/http/models/Report;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$sentry_http(Lcom/stripe/spos/sentry/http/models/Report;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    sget-object v0, Lcom/stripe/spos/sentry/http/models/Report;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/stripe/spos/sentry/http/models/BuildConfigData$Serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/BuildConfigData$Serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/stripe/spos/sentry/http/models/Contexts$$serializer;->INSTANCE:Lcom/stripe/spos/sentry/http/models/Contexts$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/spos/sentry/http/models/BuildConfigData;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    return-object v0
.end method

.method public final component2()Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    return-object v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final component4()Lcom/stripe/spos/sentry/http/models/Contexts;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-object v0
.end method

.method public final copy(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)Lcom/stripe/spos/sentry/http/models/Report;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/spos/sentry/http/models/BuildConfigData;",
            "Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/spos/sentry/http/models/Contexts;",
            ")",
            "Lcom/stripe/spos/sentry/http/models/Report;"
        }
    .end annotation

    const-string v0, "release"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contexts"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/spos/sentry/http/models/Report;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/spos/sentry/http/models/Report;-><init>(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/spos/sentry/http/models/Report;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/spos/sentry/http/models/Report;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    iget-object p1, p1, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getContexts()Lcom/stripe/spos/sentry/http/models/Contexts;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-object v0
.end method

.method public final getException()Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    return-object v0
.end method

.method public final getRelease()Lcom/stripe/spos/sentry/http/models/BuildConfigData;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    return-object v0
.end method

.method public final getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    invoke-virtual {v0}, Lcom/stripe/spos/sentry/http/models/BuildConfigData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Contexts;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Report(release="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->release:Lcom/stripe/spos/sentry/http/models/BuildConfigData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->exception:Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/models/Report;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
