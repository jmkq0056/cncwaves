.class final Lcom/stripe/jvmcore/logging/ReflectionUtils;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHealthLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HealthLogger.kt\ncom/stripe/jvmcore/logging/ReflectionUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,637:1\n3792#2:638\n4307#2,2:639\n1#3:641\n*S KotlinDebug\n*F\n+ 1 HealthLogger.kt\ncom/stripe/jvmcore/logging/ReflectionUtils\n*L\n582#1:638\n582#1:639,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005J \u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u0001*\u0008\u0012\u0004\u0012\u0002H\u00080\tJ\u000e\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u0005H\u0002J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007*\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\r\u001a\u00020\u0004J\"\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007*\u0008\u0012\u0004\u0012\u00020\u00050\u00072\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/ReflectionUtils;",
        "",
        "()V",
        "declaredFieldName",
        "",
        "Ljava/lang/reflect/Field;",
        "properties",
        "Lkotlin/sequences/Sequence;",
        "T",
        "Ljava/lang/Class;",
        "wireFieldAnnotation",
        "Lcom/squareup/wire/WireField;",
        "withOneOf",
        "oneOfName",
        "withType",
        "clazz",
        "logging"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/ReflectionUtils;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$wireFieldAnnotation(Lcom/stripe/jvmcore/logging/ReflectionUtils;Ljava/lang/reflect/Field;)Lcom/squareup/wire/WireField;
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->wireFieldAnnotation(Ljava/lang/reflect/Field;)Lcom/squareup/wire/WireField;

    move-result-object p0

    return-object p0
.end method

.method private final wireFieldAnnotation(Ljava/lang/reflect/Field;)Lcom/squareup/wire/WireField;
    .locals 1

    .line 619
    const-class v0, Lcom/squareup/wire/WireField;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/WireField;

    return-object p1
.end method


# virtual methods
.method public final declaredFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/ReflectionUtils;->wireFieldAnnotation(Ljava/lang/reflect/Field;)Lcom/squareup/wire/WireField;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/squareup/wire/WireField;->declaredName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final properties(Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v0, "getDeclaredFields(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 639
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/Field;

    .line 582
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v4

    if-nez v4, :cond_0

    .line 639
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 638
    check-cast v0, Ljava/lang/Iterable;

    .line 582
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oneOfName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$1;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 593
    new-instance v0, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$2;

    invoke-direct {v0, p2}, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$2;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 594
    sget-object p2, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final withType(Lkotlin/sequences/Sequence;Ljava/lang/Class;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lkotlin/sequences/Sequence<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    new-instance v0, Lcom/stripe/jvmcore/logging/ReflectionUtils$withType$1;

    invoke-direct {v0, p2}, Lcom/stripe/jvmcore/logging/ReflectionUtils$withType$1;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method
