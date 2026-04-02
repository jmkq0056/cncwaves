.class public final Lcom/stripe/loggingmodels/ApplicationTrace$Companion;
.super Ljava/lang/Object;
.source "ApplicationTrace.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/ApplicationTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/ApplicationTrace$Companion;",
        "",
        "()V",
        "crash",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "flush",
        "public_release"
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
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/loggingmodels/ApplicationTrace$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final crash()Lcom/stripe/loggingmodels/ApplicationTrace;
    .locals 6

    .line 18
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ApplicationTrace"

    const-string v2, "crash"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/loggingmodels/ApplicationTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final flush()Lcom/stripe/loggingmodels/ApplicationTrace;
    .locals 6

    .line 22
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTrace;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ApplicationTrace"

    const-string v2, "flush"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/loggingmodels/ApplicationTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
