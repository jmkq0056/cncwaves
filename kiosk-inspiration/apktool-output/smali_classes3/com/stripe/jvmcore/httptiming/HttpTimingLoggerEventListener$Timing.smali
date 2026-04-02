.class public final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
.super Ljava/lang/Object;
.source "HttpTimingLoggerEventListener.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001a2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u001a\u001bB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
        "",
        "name",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
        "timeSinceCallStart",
        "Ljava/time/Duration;",
        "timingDuration",
        "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)V",
        "getName",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;",
        "getTimeSinceCallStart",
        "()Ljava/time/Duration;",
        "getTimingDuration",
        "compareTo",
        "",
        "other",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "Companion",
        "Name",
        "httptiming"
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
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion;


# instance fields
.field private final name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

.field private final timeSinceCallStart:Ljava/time/Duration;

.field private final timingDuration:Ljava/time/Duration;


# direct methods
.method public static synthetic $r8$lambda$Xo6dlNt3T9h-ih0WLwrwCrkPDpQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/time/Duration;
    .locals 0

    invoke-static {p0, p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->COMPARATOR$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->Companion:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion;

    .line 99
    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;->INSTANCE:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    const-string v1, "comparing(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$special$$inlined$thenBy$1;

    invoke-direct {v1, v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$special$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v1, Ljava/util/Comparator;

    sput-object v1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeSinceCallStart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timingDuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    .line 80
    iput-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    .line 81
    iput-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    return-void
.end method

.method private static final COMPARATOR$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/time/Duration;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Duration;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;ILjava/lang/Object;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 78
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->compareTo(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;)I

    move-result p1

    return p1
.end method

.method public final component1()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    return-object v0
.end method

.method public final component2()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    return-object v0
.end method

.method public final component3()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public final copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeSinceCallStart"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timingDuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    iget-object v3, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    iget-object v3, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    iget-object p1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    return-object v0
.end method

.method public final getTimeSinceCallStart()Ljava/time/Duration;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    return-object v0
.end method

.method public final getTimingDuration()Ljava/time/Duration;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    invoke-virtual {v1}, Ljava/time/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timing(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCallStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timeSinceCallStart:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timingDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;->timingDuration:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
