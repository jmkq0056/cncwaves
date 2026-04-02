.class public final Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;
.super Ljava/lang/Object;
.source "MoshiKotlinxInterOpSerializer.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoshiKotlinxInterOpSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoshiKotlinxInterOpSerializer.kt\ncom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 KAnnotatedElements.kt\nkotlin/reflect/full/KAnnotatedElements\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,49:1\n46#1:50\n46#1:52\n46#1:54\n46#1:56\n1#2:51\n1#2:53\n1#2:55\n1#2:57\n1#2:62\n29#3:58\n20#3:59\n288#4,2:60\n*S KotlinDebug\n*F\n+ 1 MoshiKotlinxInterOpSerializer.kt\ncom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer\n*L\n12#1:50\n16#1:52\n20#1:54\n24#1:56\n12#1:51\n16#1:53\n20#1:55\n24#1:57\n32#1:58\n32#1:59\n32#1:60,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JI\u0010\u0003\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005\"\u0008\u0008\u0001\u0010\u0006*\u00020\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u00082\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u00040\n\u00a2\u0006\u0002\u0008\u000bH\u0082\u0008\u00a2\u0006\u0002\u0010\u000cJ \u0010\r\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u000e*\u00020\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0008H\u0002J)\u0010\u000f\u001a\u0002H\u0004\"\u0008\u0008\u0000\u0010\u0004*\u00020\u0005*\u00020\u00102\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0008H\u0016\u00a2\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0008H\u0016\u00a2\u0006\u0002\u0010\u0013J)\u0010\u0014\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0008H\u0016\u00a2\u0006\u0002\u0010\u0013J)\u0010\u0015\u001a\u00020\u0010\"\u0008\u0008\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0008H\u0016\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;",
        "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;",
        "()V",
        "delegateToSerializer",
        "Output",
        "",
        "Input",
        "clazz",
        "Lkotlin/reflect/KClass;",
        "method",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "getSerializer",
        "T",
        "fromJson",
        "",
        "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;",
        "prettyPrint",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final delegateToSerializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            "Input:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TInput;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;",
            "+TOutput;>;)TOutput;"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;"
        }
    .end annotation

    .line 32
    check-cast p1, Lkotlin/reflect/KAnnotatedElement;

    .line 59
    invoke-interface {p1}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 59
    instance-of v1, v1, Lkotlinx/serialization/Serializable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    check-cast v0, Lkotlinx/serialization/Serializable;

    check-cast v0, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_2

    .line 33
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/KotlinxJsonSerializer;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    return-object p1

    .line 35
    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/MoshiJsonSerializer;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/MoshiJsonSerializer;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    return-object p1
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

    .line 50
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    move-result-object v0

    .line 13
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;->fromJson(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

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

    .line 52
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;->prettyPrint(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;

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
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    move-result-object v0

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;->toJson(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;

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

    .line 56
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;->getSerializer(Lkotlin/reflect/KClass;)Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;

    move-result-object v0

    .line 25
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;->toJsonContentString(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
