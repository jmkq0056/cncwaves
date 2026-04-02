.class public final Lcom/stripe/jvmcore/redaction/Extensions;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u0004\u0018\u00010\u0004\"\u0010\u0008\u0000\u0010\u0005*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006*\u0002H\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/redaction/Extensions;",
        "",
        "()V",
        "toLogJson",
        "",
        "M",
        "Lcom/squareup/wire/Message;",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;",
        "redaction"
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/redaction/Extensions;

    invoke-direct {v0}, Lcom/stripe/jvmcore/redaction/Extensions;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic toLogJson$default(Lcom/stripe/jvmcore/redaction/Extensions;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;ILjava/lang/Object;)Ljava/lang/String;
    .locals 2

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 12
    new-instance p3, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {p3}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    new-instance p4, Lcom/squareup/wire/WireJsonAdapterFactory;

    const/4 p5, 0x0

    const/4 v1, 0x3

    invoke-direct {p4, v0, p5, v1, v0}, Lcom/squareup/wire/WireJsonAdapterFactory;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p4, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {p3, p4}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object p3

    const-string p4, "build(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toLogJson(Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "**>;>(TM;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p2, p1}, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;->toRedactedMessage(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    const-string p3, "adapter(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/wire/RedactingJsonAdapterKt;->redacting(Lcom/squareup/moshi/JsonAdapter;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
