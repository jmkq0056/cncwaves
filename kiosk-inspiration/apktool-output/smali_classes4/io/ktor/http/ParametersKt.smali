.class public final Lio/ktor/http/ParametersKt;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParameters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,116:1\n24#2:117\n24#2:118\n*S KotlinDebug\n*F\n+ 1 Parameters.kt\nio/ktor/http/ParametersKt\n*L\n74#1:117\n96#1:118\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u001f\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\t\u001a\u0006\u0010\n\u001a\u00020\u0005\u001aC\u0010\n\u001a\u00020\u000526\u0010\u000b\u001a\u001c\u0012\u0018\u0008\u0001\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000f0\r0\u000c\"\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000f0\r\u00a2\u0006\u0002\u0010\u0010\u001a\u0016\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e\u001a\u001c\u0010\n\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000f\u001a \u0010\n\u001a\u00020\u00052\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000f0\u0015\u001a\u0015\u0010\u0016\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0086\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "ParametersBuilder",
        "Lio/ktor/http/ParametersBuilder;",
        "size",
        "",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "builder",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "parametersOf",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Lio/ktor/http/Parameters;",
        "name",
        "value",
        "values",
        "map",
        "",
        "plus",
        "other",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final ParametersBuilder(I)Lio/ktor/http/ParametersBuilder;
    .locals 1

    .line 34
    new-instance v0, Lio/ktor/http/ParametersBuilderImpl;

    invoke-direct {v0, p0}, Lio/ktor/http/ParametersBuilderImpl;-><init>(I)V

    check-cast v0, Lio/ktor/http/ParametersBuilder;

    return-object v0
.end method

.method public static synthetic ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p0, 0x8

    .line 34
    :cond_0
    invoke-static {p0}, Lio/ktor/http/ParametersKt;->ParametersBuilder(I)Lio/ktor/http/ParametersBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final parameters(Lkotlin/jvm/functions/Function1;)Lio/ktor/http/Parameters;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/http/ParametersBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/http/Parameters;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 117
    invoke-static {v2, v0, v1}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object p0

    return-object p0
.end method

.method public static final parametersOf()Lio/ktor/http/Parameters;
    .locals 1

    .line 48
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {v0}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public static final parametersOf(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/Parameters;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lio/ktor/http/ParametersSingleImpl;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/ktor/http/ParametersSingleImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public static final parametersOf(Ljava/lang/String;Ljava/util/List;)Lio/ktor/http/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/ktor/http/Parameters;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lio/ktor/http/ParametersSingleImpl;

    invoke-direct {v0, p0, p1}, Lio/ktor/http/ParametersSingleImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public static final parametersOf(Ljava/util/Map;)Lio/ktor/http/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/ktor/http/Parameters;"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lio/ktor/http/ParametersImpl;

    invoke-direct {v0, p0}, Lio/ktor/http/ParametersImpl;-><init>(Ljava/util/Map;)V

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public static final varargs parametersOf([Lkotlin/Pair;)Lio/ktor/http/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/ktor/http/Parameters;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lio/ktor/http/ParametersImpl;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/ktor/http/ParametersImpl;-><init>(Ljava/util/Map;)V

    check-cast v0, Lio/ktor/http/Parameters;

    return-object v0
.end method

.method public static final plus(Lio/ktor/http/Parameters;Lio/ktor/http/Parameters;)Lio/ktor/http/Parameters;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-interface {p0}, Lio/ktor/http/Parameters;->getCaseInsensitiveName()Z

    move-result v0

    invoke-interface {p1}, Lio/ktor/http/Parameters;->getCaseInsensitiveName()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 94
    invoke-interface {p0}, Lio/ktor/http/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 95
    :cond_0
    invoke-interface {p1}, Lio/ktor/http/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 96
    :cond_1
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-static {v2, v0, v1}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v0

    .line 96
    check-cast p0, Lio/ktor/util/StringValues;

    invoke-interface {v0, p0}, Lio/ktor/http/ParametersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    check-cast p1, Lio/ktor/util/StringValues;

    invoke-interface {v0, p1}, Lio/ktor/http/ParametersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 118
    invoke-interface {v0}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object p0

    return-object p0

    .line 100
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    const-string p1, "Cannot concatenate Parameters with case-sensitive and case-insensitive names"

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
