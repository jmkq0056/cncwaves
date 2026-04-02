.class public final Lcom/stripe/core/hardware/Optional$Companion;
.super Ljava/lang/Object;
.source "Optional.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptional.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Optional.kt\ncom/stripe/core/hardware/Optional$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u0005J!\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0007\"\u0004\u0008\u0001\u0010\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u0001H\u0005\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u000b\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0008\u001a\u0002H\u0005\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Optional$Companion;",
        "",
        "()V",
        "absent",
        "Lcom/stripe/core/hardware/Optional$Absent;",
        "V",
        "fromNullable",
        "Lcom/stripe/core/hardware/Optional;",
        "value",
        "(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional;",
        "of",
        "Lcom/stripe/core/hardware/Optional$Present;",
        "(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;",
        "hardware_release"
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
.field static final synthetic $$INSTANCE:Lcom/stripe/core/hardware/Optional$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/hardware/Optional$Companion;

    invoke-direct {v0}, Lcom/stripe/core/hardware/Optional$Companion;-><init>()V

    sput-object v0, Lcom/stripe/core/hardware/Optional$Companion;->$$INSTANCE:Lcom/stripe/core/hardware/Optional$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final absent()Lcom/stripe/core/hardware/Optional$Absent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/stripe/core/hardware/Optional$Absent<",
            "TV;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/stripe/core/hardware/Optional$Absent;

    invoke-direct {v0}, Lcom/stripe/core/hardware/Optional$Absent;-><init>()V

    return-object v0
.end method

.method public final fromNullable(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/stripe/core/hardware/Optional<",
            "TV;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Lcom/stripe/core/hardware/Optional$Present;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Optional$Present;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/stripe/core/hardware/Optional;

    return-object v0

    :cond_0
    new-instance p1, Lcom/stripe/core/hardware/Optional$Absent;

    invoke-direct {p1}, Lcom/stripe/core/hardware/Optional$Absent;-><init>()V

    check-cast p1, Lcom/stripe/core/hardware/Optional;

    return-object p1
.end method

.method public final of(Ljava/lang/Object;)Lcom/stripe/core/hardware/Optional$Present;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/stripe/core/hardware/Optional$Present<",
            "TV;>;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/stripe/core/hardware/Optional$Present;

    invoke-direct {v0, p1}, Lcom/stripe/core/hardware/Optional$Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
