.class public final Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;
.super Ljava/lang/Object;
.source "ContentNegotiation.kt"

# interfaces
.implements Lio/ktor/serialization/Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0011\u0010\u0013\u001a\u00020\u000e\"\u0006\u0008\u0000\u0010\u0014\u0018\u0001H\u0086\u0008J\u0012\u0010\u0013\u001a\u00020\u000e2\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0005J@\u0010\u0016\u001a\u00020\u000e\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u0002H\u00142\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u000e0\u001b\u00a2\u0006\u0002\u0008\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJF\u0010\u0016\u001a\u00020\u000e\"\u0008\u0008\u0000\u0010\u0014*\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u0002H\u00142\u0006\u0010\u001f\u001a\u00020\u00102\u0017\u0010\u001a\u001a\u0013\u0012\u0004\u0012\u0002H\u0014\u0012\u0004\u0012\u00020\u000e0\u001b\u00a2\u0006\u0002\u0008\u001c\u00a2\u0006\u0002\u0010 J\u0011\u0010!\u001a\u00020\u000e\"\u0006\u0008\u0000\u0010\u0014\u0018\u0001H\u0086\u0008J\u0012\u0010!\u001a\u00020\u000e2\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0005R\u001e\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;",
        "Lio/ktor/serialization/Configuration;",
        "()V",
        "ignoredTypes",
        "",
        "Lkotlin/reflect/KClass;",
        "getIgnoredTypes$ktor_client_content_negotiation",
        "()Ljava/util/Set;",
        "registrations",
        "",
        "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
        "getRegistrations$ktor_client_content_negotiation",
        "()Ljava/util/List;",
        "clearIgnoredTypes",
        "",
        "defaultMatcher",
        "Lio/ktor/http/ContentTypeMatcher;",
        "pattern",
        "Lio/ktor/http/ContentType;",
        "ignoreType",
        "T",
        "type",
        "register",
        "Lio/ktor/serialization/ContentConverter;",
        "contentType",
        "converter",
        "configuration",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lkotlin/jvm/functions/Function1;)V",
        "contentTypeToSend",
        "contentTypeMatcher",
        "(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lio/ktor/http/ContentTypeMatcher;Lkotlin/jvm/functions/Function1;)V",
        "removeIgnoredType",
        "ConverterRegistration",
        "ktor-client-content-negotiation"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ignoredTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final registrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/DefaultIgnoredTypesJvmKt;->getDefaultIgnoredTypes()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiationKt;->getDefaultCommonIgnoredTypes()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoredTypes:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->registrations:Ljava/util/List;

    return-void
.end method

.method private final defaultMatcher(Lio/ktor/http/ContentType;)Lio/ktor/http/ContentTypeMatcher;
    .locals 1

    .line 135
    new-instance v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1;

    invoke-direct {v0, p1}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$defaultMatcher$1;-><init>(Lio/ktor/http/ContentType;)V

    check-cast v0, Lio/ktor/http/ContentTypeMatcher;

    return-object v0
.end method


# virtual methods
.method public final clearIgnoredTypes()V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final getIgnoredTypes$ktor_client_content_negotiation()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoredTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getRegistrations$ktor_client_content_negotiation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->registrations:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic ignoreType()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 102
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoreType(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public final ignoreType(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final register(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lio/ktor/http/ContentTypeMatcher;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/ktor/serialization/ContentConverter;",
            ">(",
            "Lio/ktor/http/ContentType;",
            "TT;",
            "Lio/ktor/http/ContentTypeMatcher;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentTypeToSend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentTypeMatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;

    .line 89
    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-direct {v0, p2, p1, p3}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config$ConverterRegistration;-><init>(Lio/ktor/serialization/ContentConverter;Lio/ktor/http/ContentType;Lio/ktor/http/ContentTypeMatcher;)V

    .line 93
    iget-object p1, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->registrations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public register(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/ktor/serialization/ContentConverter;",
            ">(",
            "Lio/ktor/http/ContentType;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lio/ktor/http/ContentType$Application;->INSTANCE:Lio/ktor/http/ContentType$Application;

    invoke-virtual {v0}, Lio/ktor/http/ContentType$Application;->getJson()Lio/ktor/http/ContentType;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/ktor/client/plugins/contentnegotiation/JsonContentTypeMatcher;->INSTANCE:Lio/ktor/client/plugins/contentnegotiation/JsonContentTypeMatcher;

    check-cast v0, Lio/ktor/http/ContentTypeMatcher;

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->defaultMatcher(Lio/ktor/http/ContentType;)Lio/ktor/http/ContentTypeMatcher;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->register(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;Lio/ktor/http/ContentTypeMatcher;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final synthetic removeIgnoredType()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 109
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->removeIgnoredType(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public final removeIgnoredType(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lio/ktor/client/plugins/contentnegotiation/ContentNegotiation$Config;->ignoredTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
