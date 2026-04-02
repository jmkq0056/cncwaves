.class public final Lcom/stripe/hardware/status/IntegrityCheckError$Companion;
.super Ljava/lang/Object;
.source "IntegrityCheckError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/status/IntegrityCheckError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntegrityCheckError.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntegrityCheckError.kt\ncom/stripe/hardware/status/IntegrityCheckError$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,17:1\n1#2:18\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/hardware/status/IntegrityCheckError$Companion;",
        "",
        "()V",
        "INTEGRITY_ERROR_REGEX",
        "Lkotlin/text/Regex;",
        "fromErrorMessage",
        "Lcom/stripe/hardware/status/IntegrityCheckError;",
        "errorMessage",
        "",
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/status/IntegrityCheckError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromErrorMessage(Ljava/lang/String;)Lcom/stripe/hardware/status/IntegrityCheckError;
    .locals 5

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/stripe/hardware/status/IntegrityCheckError;->access$getINTEGRITY_ERROR_REGEX$cp()Lkotlin/text/Regex;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    check-cast v4, Ljava/lang/String;

    .line 13
    :cond_1
    new-instance v0, Lcom/stripe/hardware/status/IntegrityCheckError;

    sget-object v1, Lcom/stripe/hardware/status/BbposErrorMode;->Companion:Lcom/stripe/hardware/status/BbposErrorMode$Companion;

    invoke-virtual {v1, v4}, Lcom/stripe/hardware/status/BbposErrorMode$Companion;->getErrorMode(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposErrorMode;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/stripe/hardware/status/IntegrityCheckError;-><init>(Ljava/lang/String;Lcom/stripe/hardware/status/BbposErrorMode;)V

    return-object v0
.end method
