.class public final Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;
.super Ljava/lang/Object;
.source "DefaultTraceLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0002*\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0005H\u0000\u001a+\u0010\u0006\u001a\u00020\u0002\"\u0010\u0008\u0000\u0010\u0007*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0008*\u0002H\u00072\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0010\u000b\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0002X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "REDACTED_HEADERS",
        "",
        "",
        "REDACTED_JSON",
        "toKeyValuePairsString",
        "",
        "toTraceJson",
        "M",
        "Lcom/squareup/wire/Message;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/wire/Message;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;",
        "logging"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final REDACTED_HEADERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REDACTED_JSON:Ljava/lang/String; = "{\"redacted\":true}"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 348
    const-string v0, "Authorization"

    .line 347
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->REDACTED_HEADERS:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getREDACTED_HEADERS$p()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt;->REDACTED_HEADERS:Ljava/util/Set;

    return-object v0
.end method

.method public static final toKeyValuePairsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object p0, Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt$toKeyValuePairsString$1;->INSTANCE:Lcom/stripe/jvmcore/logging/DefaultTraceLoggerKt$toKeyValuePairsString$1;

    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toTraceJson(Lcom/squareup/wire/Message;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "**>;>(TM;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    sget-object v1, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    check-cast v1, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    invoke-virtual {v0, p0, v1, p1}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "{\"redacted\":true}"

    :cond_0
    return-object p0
.end method
