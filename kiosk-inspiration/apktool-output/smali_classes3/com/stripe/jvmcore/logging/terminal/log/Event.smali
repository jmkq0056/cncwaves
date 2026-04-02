.class public final Lcom/stripe/jvmcore/logging/terminal/log/Event;
.super Ljava/lang/Object;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;,
        Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Deprecated logging model type, migrated to Metric."
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "Metric"
        imports = {
            "com.stripe.loggingmodels.Metric"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0002 !B;\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\"\u0010\u0012\u001a\u0004\u0018\u00010\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000cR\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\r\u001a\u0004\u0018\u00010\u0014@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
        "",
        "event",
        "",
        "scope",
        "domain",
        "startTimeMs",
        "",
        "tags",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V",
        "getDomain",
        "()Ljava/lang/String;",
        "<set-?>",
        "duration",
        "getDuration",
        "()J",
        "getEvent",
        "outcome",
        "getOutcome",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;",
        "result",
        "getResult",
        "()Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;",
        "getScope",
        "getStartTimeMs",
        "getTags",
        "()Ljava/util/Map;",
        "end",
        "",
        "endTimeMs",
        "errorCode",
        "Companion",
        "EventResult",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;

.field private static final SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private final domain:Ljava/lang/String;

.field private duration:J

.field private final event:Ljava/lang/String;

.field private outcome:Ljava/lang/String;

.field private result:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

.field private final scope:Ljava/lang/String;

.field private final startTimeMs:J

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->event:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->scope:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->domain:Ljava/lang/String;

    .line 20
    iput-wide p4, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->startTimeMs:J

    .line 21
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->tags:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/stripe/jvmcore/logging/terminal/log/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static synthetic end$default(Lcom/stripe/jvmcore/logging/terminal/log/Event;JLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->end(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final end(JLjava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 34
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->ERROR:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->OK:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    :goto_0
    iput-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->result:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    .line 35
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->startTimeMs:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->duration:J

    if-nez p3, :cond_1

    .line 36
    const-string p3, "success"

    :cond_1
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->outcome:Ljava/lang/String;

    return-void
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->duration:J

    return-wide v0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->event:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutcome()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->outcome:Ljava/lang/String;

    return-object v0
.end method

.method public final getResult()Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->result:Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    return-object v0
.end method

.method public final getScope()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTimeMs()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->startTimeMs:J

    return-wide v0
.end method

.method public final getTags()Ljava/util/Map;
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

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->tags:Ljava/util/Map;

    return-object v0
.end method
