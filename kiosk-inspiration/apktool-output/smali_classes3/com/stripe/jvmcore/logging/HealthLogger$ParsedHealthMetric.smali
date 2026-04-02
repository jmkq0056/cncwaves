.class final Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/HealthLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedHealthMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u0000*\u0004\u0008\u0004\u0010\u0001*\u0004\u0008\u0005\u0010\u00022\u00020\u0003B)\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00040\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00050\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00040\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00050\u0007H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\tH\u00c6\u0003J?\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00040\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00050\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00040\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00050\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;",
        "D",
        "S",
        "",
        "domain",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Domain;",
        "scope",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Scope;",
        "event",
        "Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)V",
        "getDomain",
        "()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;",
        "getEvent",
        "()Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
        "getScope",
        "()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "logging"
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
.field private final domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

.field private final scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
            ")V"
        }
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    .line 381
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    .line 382
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->copy(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    return-object v0
.end method

.method public final component2()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    return-object v0
.end method

.method public final component3()Lcom/stripe/jvmcore/logging/HealthLogger$Event;
    .locals 1

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    return-object v0
.end method

.method public final copy(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Event;",
            ")",
            "Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric<",
            "TD;TS;>;"
        }
    .end annotation

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger$Domain;Lcom/stripe/jvmcore/logging/HealthLogger$Scope;Lcom/stripe/jvmcore/logging/HealthLogger$Event;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    iget-object v3, p1, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    iget-object p1, p1, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDomain()Lcom/stripe/jvmcore/logging/HealthLogger$Domain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Domain<",
            "TD;>;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    return-object v0
.end method

.method public final getEvent()Lcom/stripe/jvmcore/logging/HealthLogger$Event;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    return-object v0
.end method

.method public final getScope()Lcom/stripe/jvmcore/logging/HealthLogger$Scope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/HealthLogger$Scope<",
            "TS;>;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/HealthLogger$Domain;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Scope;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/HealthLogger$Event;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParsedHealthMetric(domain="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->domain:Lcom/stripe/jvmcore/logging/HealthLogger$Domain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->scope:Lcom/stripe/jvmcore/logging/HealthLogger$Scope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/HealthLogger$ParsedHealthMetric;->event:Lcom/stripe/jvmcore/logging/HealthLogger$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
