.class public final Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;
.super Ljava/lang/Object;
.source "TraceEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/stripeterminal/storage/TraceEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;",
        "",
        "()V",
        "fromModel",
        "Lcom/stripe/core/stripeterminal/storage/TraceEntity;",
        "model",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "stripeterminal_release"
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/stripeterminal/storage/TraceEntity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromModel(Lcom/stripe/jvmcore/logging/terminal/log/Span;)Lcom/stripe/core/stripeterminal/storage/TraceEntity;
    .locals 18

    const-string v0, "model"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/stripe/core/stripeterminal/storage/TraceEntity;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getStartTimeMs()J

    move-result-wide v2

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTraceId()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getRequest()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getResponse()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getService()Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getMethod()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getException()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v10

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSessionId()Ljava/lang/String;

    move-result-object v11

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSerialNumber()Ljava/lang/String;

    move-result-object v12

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTags()Ljava/util/Map;

    move-result-object v13

    const/16 v16, 0x800

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    .line 26
    invoke-direct/range {v1 .. v17}, Lcom/stripe/core/stripeterminal/storage/TraceEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
