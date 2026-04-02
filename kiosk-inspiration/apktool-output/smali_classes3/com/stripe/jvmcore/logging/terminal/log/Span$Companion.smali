.class public final Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;
.super Ljava/lang/Object;
.source "Span.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/log/Span;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000eJ\u0016\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0004J\u008b\u0001\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "currentTimeMillis",
        "",
        "request",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "sessionId",
        "",
        "traceId",
        "serialNumber",
        "tags",
        "",
        "createNewFromExisting",
        "startTimeMillis",
        "span",
        "recreateFromDb",
        "response",
        "service",
        "method",
        "exception",
        "totalTimeMs",
        "logPoints",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "impl_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;JLcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/terminal/log/Span;
    .locals 1

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_2

    .line 101
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p7

    .line 95
    :cond_2
    invoke-virtual/range {p0 .. p7}, Lcom/stripe/jvmcore/logging/terminal/log/Span$Companion;->create(JLcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(JLcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "request"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "traceId"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    move-object/from16 v15, p7

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/GsonProvider;->getInstance()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 104
    new-instance v2, Lcom/stripe/jvmcore/logging/terminal/log/Span;

    .line 108
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTrace;->getService()Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {v0}, Lcom/stripe/loggingmodels/ApplicationTrace;->getMethod()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1e0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v3, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    .line 104
    invoke-direct/range {v2 .. v17}, Lcom/stripe/jvmcore/logging/terminal/log/Span;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public final createNewFromExisting(JLcom/stripe/jvmcore/logging/terminal/log/Span;)Lcom/stripe/jvmcore/logging/terminal/log/Span;
    .locals 17

    const-string v0, "span"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/Span;

    .line 126
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTraceId()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getRequest()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getService()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getMethod()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSessionId()Ljava/lang/String;

    move-result-object v12

    .line 131
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSerialNumber()Ljava/lang/String;

    move-result-object v13

    .line 132
    invoke-virtual/range {p3 .. p3}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTags()Ljava/util/Map;

    move-result-object v14

    const/16 v15, 0x1e0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v2, p1

    .line 124
    invoke-direct/range {v1 .. v16}, Lcom/stripe/jvmcore/logging/terminal/log/Span;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final recreateFromDb(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/stripe/jvmcore/logging/terminal/log/Span;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;"
        }
    .end annotation

    const-string v0, "traceId"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logPoints"

    move-object/from16 v11, p12

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p13, :cond_0

    .line 174
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p13

    .line 162
    :goto_0
    new-instance v1, Lcom/stripe/jvmcore/logging/terminal/log/Span;

    move-wide/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v10, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v14}, Lcom/stripe/jvmcore/logging/terminal/log/Span;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method
