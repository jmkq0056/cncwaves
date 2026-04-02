.class public final Lcom/stripe/spos/sentry/http/SentryConfig;
.super Ljava/lang/Object;
.source "SentryConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryConfig.kt\ncom/stripe/spos/sentry/http/SentryConfig\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J\t\u0010\u001b\u001a\u00020\nH\u00c6\u0003JG\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u00c6\u0001J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0000\u00a2\u0006\u0002\u0008 J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\nH\u00d6\u0001J\u000c\u0010\'\u001a\u00020\n*\u00020\u001fH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/spos/sentry/http/SentryConfig;",
        "",
        "dsn",
        "Lcom/stripe/spos/sentry/http/models/Dsn;",
        "environment",
        "Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;",
        "contexts",
        "Lcom/stripe/spos/sentry/http/models/Contexts;",
        "customTags",
        "",
        "",
        "userAgent",
        "(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)V",
        "getContexts",
        "()Lcom/stripe/spos/sentry/http/models/Contexts;",
        "getCustomTags",
        "()Ljava/util/Map;",
        "getDsn",
        "()Lcom/stripe/spos/sentry/http/models/Dsn;",
        "getEnvironment",
        "()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;",
        "getUserAgent",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "createAuthHeader",
        "timestamp",
        "Lkotlinx/datetime/Instant;",
        "createAuthHeader$sentry_http",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "formatEpochDecimalSeconds",
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


# instance fields
.field private final contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

.field private final customTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

.field private final environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/spos/sentry/http/models/Dsn;",
            "Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;",
            "Lcom/stripe/spos/sentry/http/models/Contexts;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "dsn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contexts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    .line 21
    iput-object p2, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    .line 26
    iput-object p3, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    .line 31
    iput-object p4, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    .line 36
    iput-object p5, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 31
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 36
    const-string p5, "Stripe-Sentry (jvm)"

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/stripe/spos/sentry/http/SentryConfig;-><init>(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/spos/sentry/http/SentryConfig;Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/spos/sentry/http/SentryConfig;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/spos/sentry/http/SentryConfig;->copy(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/spos/sentry/http/SentryConfig;

    move-result-object p0

    return-object p0
.end method

.method private final formatEpochDecimalSeconds(Lkotlinx/datetime/Instant;)Ljava/lang/String;
    .locals 5

    .line 58
    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->toEpochMilliseconds()J

    move-result-wide v0

    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v2

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3, v4}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkotlinx/datetime/Instant;->getEpochSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final component1()Lcom/stripe/spos/sentry/http/models/Dsn;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    return-object v0
.end method

.method public final component2()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    return-object v0
.end method

.method public final component3()Lcom/stripe/spos/sentry/http/models/Contexts;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/spos/sentry/http/SentryConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/spos/sentry/http/models/Dsn;",
            "Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;",
            "Lcom/stripe/spos/sentry/http/models/Contexts;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/spos/sentry/http/SentryConfig;"
        }
    .end annotation

    const-string v0, "dsn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contexts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customTags"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAgent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/spos/sentry/http/SentryConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/spos/sentry/http/SentryConfig;-><init>(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public final createAuthHeader$sentry_http(Lkotlinx/datetime/Instant;)Ljava/lang/String;
    .locals 9

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Dsn;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sentry_key"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 44
    const-string v1, "sentry_version"

    const-string v2, "7"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    const-string v1, "sentry_timestamp"

    invoke-direct {p0, p1}, Lcom/stripe/spos/sentry/http/SentryConfig;->formatEpochDecimalSeconds(Lkotlinx/datetime/Instant;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 46
    const-string p1, "sentry_client"

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 48
    sget-object p1, Lcom/stripe/spos/sentry/http/SentryConfig$createAuthHeader$1;->INSTANCE:Lcom/stripe/spos/sentry/http/SentryConfig$createAuthHeader$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sentry "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/spos/sentry/http/SentryConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/spos/sentry/http/SentryConfig;

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getContexts()Lcom/stripe/spos/sentry/http/models/Contexts;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    return-object v0
.end method

.method public final getCustomTags()Ljava/util/Map;
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

    .line 31
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    return-object v0
.end method

.method public final getDsn()Lcom/stripe/spos/sentry/http/models/Dsn;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    return-object v0
.end method

.method public final getEnvironment()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    invoke-virtual {v0}, Lcom/stripe/spos/sentry/http/models/Dsn;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-virtual {v1}, Lcom/stripe/spos/sentry/http/models/Contexts;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SentryConfig(dsn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->dsn:Lcom/stripe/spos/sentry/http/models/Dsn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", environment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->environment:Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->contexts:Lcom/stripe/spos/sentry/http/models/Contexts;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->customTags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/spos/sentry/http/SentryConfig;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
