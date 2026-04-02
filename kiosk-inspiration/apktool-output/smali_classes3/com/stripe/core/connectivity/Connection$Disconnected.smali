.class public final Lcom/stripe/core/connectivity/Connection$Disconnected;
.super Lcom/stripe/core/connectivity/Connection;
.source "ConnectivityDataClasses.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/connectivity/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnected"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        ">",
        "Lcom/stripe/core/connectivity/Connection<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u0011*\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0011B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005H\u00c2\u0003J\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/connectivity/Connection$Disconnected;",
        "T",
        "Lcom/stripe/core/connectivity/Connection$Type;",
        "Lcom/stripe/core/connectivity/Connection;",
        "typeClass",
        "Lkotlin/reflect/KClass;",
        "(Lkotlin/reflect/KClass;)V",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "connectivity_release"
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
.field public static final Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;


# instance fields
.field private final typeClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/connectivity/Connection$Disconnected;->Companion:Lcom/stripe/core/connectivity/Connection$Disconnected$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "typeClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/stripe/core/connectivity/Connection;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    iput-object p1, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    return-void
.end method

.method private final component1()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/core/connectivity/Connection$Disconnected;Lkotlin/reflect/KClass;ILjava/lang/Object;)Lcom/stripe/core/connectivity/Connection$Disconnected;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/core/connectivity/Connection$Disconnected;->copy(Lkotlin/reflect/KClass;)Lcom/stripe/core/connectivity/Connection$Disconnected;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lkotlin/reflect/KClass;)Lcom/stripe/core/connectivity/Connection$Disconnected;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lcom/stripe/core/connectivity/Connection$Disconnected<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "typeClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/core/connectivity/Connection$Disconnected;

    invoke-direct {v0, p1}, Lcom/stripe/core/connectivity/Connection$Disconnected;-><init>(Lkotlin/reflect/KClass;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/core/connectivity/Connection$Disconnected;

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    iget-object p1, p1, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnected(typeClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/core/connectivity/Connection$Disconnected;->typeClass:Lkotlin/reflect/KClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
