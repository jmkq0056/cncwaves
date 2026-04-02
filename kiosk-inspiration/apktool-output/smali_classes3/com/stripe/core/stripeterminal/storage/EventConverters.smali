.class public final Lcom/stripe/core/stripeterminal/storage/EventConverters;
.super Ljava/lang/Object;
.source "EventConverters.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventConverters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventConverters.kt\ncom/stripe/core/stripeterminal/storage/EventConverters\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,19:1\n1#2:20\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/EventConverters;",
        "",
        "()V",
        "eventToEntity",
        "Lcom/stripe/core/stripeterminal/storage/EventEntity;",
        "event",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
        "fromEntity",
        "eventEntity",
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
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final eventToEntity(Lcom/stripe/jvmcore/logging/terminal/log/Event;)Lcom/stripe/core/stripeterminal/storage/EventEntity;
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    sget-object v0, Lcom/stripe/core/stripeterminal/storage/EventEntity;->Companion:Lcom/stripe/core/stripeterminal/storage/EventEntity$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/core/stripeterminal/storage/EventEntity$Companion;->fromModel(Lcom/stripe/jvmcore/logging/terminal/log/Event;)Lcom/stripe/core/stripeterminal/storage/EventEntity;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fromEntity(Lcom/stripe/core/stripeterminal/storage/EventEntity;)Lcom/stripe/jvmcore/logging/terminal/log/Event;
    .locals 9

    if-eqz p1, :cond_0

    .line 10
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Event;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;

    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/stripe/core/stripeterminal/storage/EventEntity;->getStartTimeMs()J

    move-result-wide v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;->create$default(Lcom/stripe/jvmcore/logging/terminal/log/Event$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/terminal/log/Event;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
