.class final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;
.super Ljava/lang/Object;
.source "HttpTimingLoggerEventListener.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;,
        Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0003 !\"B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;",
        "",
        "name",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        "actionType",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;",
        "callTime",
        "Ljava/time/Instant;",
        "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)V",
        "getActionType",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;",
        "getCallTime",
        "()Ljava/time/Instant;",
        "key",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "getKey",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "getName",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
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
        "ActionType",
        "Key",
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


# instance fields
.field private final actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

.field private final callTime:Ljava/time/Instant;

.field private final key:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

.field private final name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    .line 45
    iput-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    .line 46
    iput-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    .line 48
    new-instance p3, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    invoke-direct {p3, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    iput-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->key:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;ILjava/lang/Object;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    iget-object p1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    invoke-virtual {v0, p1}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->compareTo(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;)I

    move-result p1

    return p1
.end method

.method public final component1()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object v0
.end method

.method public final component2()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    return-object v0
.end method

.method public final component3()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    iget-object v3, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    iget-object v3, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    iget-object p1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getActionType()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    return-object v0
.end method

.method public final getCallTime()Ljava/time/Instant;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    return-object v0
.end method

.method public final getKey()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->key:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    return-object v0
.end method

.method public final getName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->name:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;->callTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
