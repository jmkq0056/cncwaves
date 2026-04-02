.class public final Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;
.super Ljava/lang/Object;
.source "HttpTimingLoggerEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;",
        "",
        "eventName",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        "actionType",
        "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;",
        "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V",
        "getActionType",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;",
        "getEventName",
        "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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

.field private final eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    iput-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;ILjava/lang/Object;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object v0
.end method

.method public final component2()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;
    .locals 1

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    invoke-direct {v0, p1, p2}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;-><init>(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    iget-object v3, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    iget-object p1, p1, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActionType()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    return-object v0
.end method

.method public final getEventName()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key(eventName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->eventName:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;->actionType:Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
