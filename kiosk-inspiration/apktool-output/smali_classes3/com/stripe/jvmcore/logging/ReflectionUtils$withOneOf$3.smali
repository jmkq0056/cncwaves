.class final Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;
.super Lkotlin/jvm/internal/Lambda;
.source "HealthLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/logging/ReflectionUtils;->withOneOf(Lkotlin/sequences/Sequence;Ljava/lang/String;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/reflect/Field;",
        "+",
        "Lcom/squareup/wire/WireField;",
        ">;",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0014\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
        "<name for destructuring parameter 0>",
        "Lkotlin/Pair;",
        "Lcom/squareup/wire/WireField;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;->INSTANCE:Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 594
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/logging/ReflectionUtils$withOneOf$3;->invoke(Lkotlin/Pair;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/Pair;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/reflect/Field;",
            "+",
            "Lcom/squareup/wire/WireField;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    return-object p1
.end method
