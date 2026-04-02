.class public final Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;
.super Ljava/lang/Object;
.source "KotlinxJsonSerializer.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinxJsonSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinxJsonSerializer.kt\ncom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer\n+ 2 SerializersModuleBuilders.kt\nkotlinx/serialization/modules/SerializersModuleBuildersKt\n*L\n1#1,66:1\n31#2,3:67\n*S KotlinDebug\n*F\n+ 1 KotlinxJsonSerializer.kt\ncom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer\n*L\n17#1:67,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0008\u001a\u0002H\t\"\u0008\u0008\u0000\u0010\t*\u00020\n*\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\t0\rH\u0016\u00a2\u0006\u0002\u0010\u000eJ)\u0010\u000f\u001a\u00020\u000b\"\u0008\u0008\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\rH\u0016\u00a2\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\u000b\"\u0008\u0008\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\rH\u0016\u00a2\u0006\u0002\u0010\u0011J)\u0010\u0013\u001a\u00020\u000b\"\u0008\u0008\u0000\u0010\u0010*\u00020\n*\u0002H\u00102\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\rH\u0016\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;",
        "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;",
        "()V",
        "lenientJson",
        "Lkotlinx/serialization/json/Json;",
        "module",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "prettyPrintKotlinx",
        "fromJson",
        "Output",
        "",
        "",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "prettyPrint",
        "Input",
        "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;",
        "toJson",
        "toJsonContentString",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;

.field private static final lenientJson:Lkotlinx/serialization/json/Json;

.field private static final module:Lkotlinx/serialization/modules/SerializersModule;

.field private static final prettyPrintKotlinx:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;

    .line 67
    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    .line 69
    invoke-virtual {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->build()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->module:Lkotlinx/serialization/modules/SerializersModule;

    .line 21
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer$prettyPrintKotlinx$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer$prettyPrintKotlinx$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->prettyPrintKotlinx:Lkotlinx/serialization/json/Json;

    .line 31
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer$lenientJson$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer$lenientJson$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->lenientJson:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getModule$p()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 15
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->module:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/reflect/KClass<",
            "TOutput;>;)TOutput;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->lenientJson:Lkotlinx/serialization/json/Json;

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, p2, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public prettyPrint(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->prettyPrintKotlinx:Lkotlinx/serialization/json/Json;

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, p2, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->lenientJson:Lkotlinx/serialization/json/Json;

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, p2, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJsonContentString(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Input:",
            "Ljava/lang/Object;",
            ">(TInput;",
            "Lkotlin/reflect/KClass<",
            "TInput;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->lenientJson:Lkotlinx/serialization/json/Json;

    invoke-static {p2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, p2, p1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 60
    instance-of v0, p2, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
