.class public final Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;
.super Ljava/lang/Object;
.source "KotlinxSerializer.kt"

# interfaces
.implements Lio/ktor/client/plugins/json/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinxSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinxSerializer.kt\nio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Please use ContentNegotiation plugin and its converters: https://ktor.io/docs/migrating-2.html#serialization-client"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;",
        "Lio/ktor/client/plugins/json/JsonSerializer;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "(Lkotlinx/serialization/json/Json;)V",
        "read",
        "",
        "type",
        "Lio/ktor/util/reflect/TypeInfo;",
        "body",
        "Lio/ktor/utils/io/core/Input;",
        "write",
        "Lio/ktor/http/content/OutgoingContent;",
        "data",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "writeContent",
        "",
        "writeContent$ktor_client_serialization",
        "Companion",
        "ktor-client-serialization"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion;

.field private static final DefaultJson:Lkotlinx/serialization/json/Json;


# instance fields
.field private final json:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->Companion:Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion;

    .line 49
    sget-object v0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion$DefaultJson$1;->INSTANCE:Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer$Companion$DefaultJson$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->DefaultJson:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;-><init>(Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 26
    sget-object p1, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->DefaultJson:Lkotlinx/serialization/json/Json;

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;-><init>(Lkotlinx/serialization/json/Json;)V

    return-void
.end method

.method public static final synthetic access$getDefaultJson$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 22
    sget-object v0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->DefaultJson:Lkotlinx/serialization/json/Json;

    return-object v0
.end method


# virtual methods
.method public read(Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 39
    invoke-static {p2, v0, v0, v1, v2}, Lio/ktor/utils/io/core/Input;->readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 40
    iget-object v0, p0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KClass;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getKotlinType()Lkotlin/reflect/KType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 42
    :cond_1
    iget-object p1, p0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->json:Lkotlinx/serialization/json/Json;

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p1, v0, p2}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public write(Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lio/ktor/client/plugins/json/JsonSerializer$DefaultImpls;->write(Lio/ktor/client/plugins/json/JsonSerializer;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/lang/Object;Lio/ktor/http/ContentType;)Lio/ktor/http/content/OutgoingContent;
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lio/ktor/http/content/TextContent;

    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->writeContent$ktor_client_serialization(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/content/TextContent;-><init>(Ljava/lang/String;Lio/ktor/http/ContentType;Lio/ktor/http/HttpStatusCode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lio/ktor/http/content/OutgoingContent;

    return-object v1
.end method

.method public final writeContent$ktor_client_serialization(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializer;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    invoke-static {p1, v1}, Lio/ktor/client/plugins/kotlinx/serializer/KotlinxSerializerKt;->access$buildSerializer(Ljava/lang/Object;Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
