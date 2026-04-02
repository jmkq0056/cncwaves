.class public final Lcom/stripe/hardware/status/BbposTamper$Companion;
.super Ljava/lang/Object;
.source "BbposTamper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/status/BbposTamper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/status/BbposTamper$Companion$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposTamper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposTamper.kt\ncom/stripe/hardware/status/BbposTamper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/status/BbposTamper$Companion;",
        "",
        "()V",
        "TAMPER_MODE_REGEX",
        "Lkotlin/text/Regex;",
        "TAMPER_STATUS_REGEX",
        "TAMPER_TIME_REGEX",
        "fromErrorMessage",
        "Lcom/stripe/hardware/status/BbposTamper;",
        "errorMessage",
        "",
        "getTamperRegex",
        "name",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/status/BbposTamper$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTamperRegex(Lcom/stripe/hardware/status/BbposTamper$Companion;Ljava/lang/String;)Lkotlin/text/Regex;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/stripe/hardware/status/BbposTamper$Companion;->getTamperRegex(Ljava/lang/String;)Lkotlin/text/Regex;

    move-result-object p0

    return-object p0
.end method

.method private final getTamperRegex(Ljava/lang/String;)Lkotlin/text/Regex;
    .locals 3

    .line 38
    new-instance v0, Lkotlin/text/Regex;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tamper "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " : ([0-9]+)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final fromErrorMessage(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposTamper;
    .locals 12

    const-string v0, "errorMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/stripe/hardware/status/BbposTamper;->access$getTAMPER_MODE_REGEX$cp()Lkotlin/text/Regex;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    move-object v0, v4

    :cond_0
    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object v8, v4

    .line 21
    :goto_0
    invoke-static {}, Lcom/stripe/hardware/status/BbposTamper;->access$getTAMPER_STATUS_REGEX$cp()Lkotlin/text/Regex;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    move-object v0, v4

    :cond_2
    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    goto :goto_1

    :cond_3
    move-object v9, v4

    .line 22
    :goto_1
    invoke-static {}, Lcom/stripe/hardware/status/BbposTamper;->access$getTAMPER_TIME_REGEX$cp()Lkotlin/text/Regex;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getDestructured()Lkotlin/text/MatchResult$Destructured;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/text/MatchResult$Destructured;->getMatch()Lkotlin/text/MatchResult;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    check-cast v4, Ljava/lang/String;

    :cond_5
    move-object v10, v4

    .line 24
    sget-object v0, Lcom/stripe/hardware/status/BbposErrorMode;->Companion:Lcom/stripe/hardware/status/BbposErrorMode$Companion;

    invoke-virtual {v0, v8}, Lcom/stripe/hardware/status/BbposErrorMode$Companion;->getErrorMode(Ljava/lang/String;)Lcom/stripe/hardware/status/BbposErrorMode;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/status/BbposTamper$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/status/BbposErrorMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_a

    if-eq v0, v3, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 29
    sget-object v0, Lcom/stripe/hardware/status/TamperType;->Unknown:Lcom/stripe/hardware/status/TamperType;

    goto :goto_3

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 28
    :cond_7
    sget-object v0, Lcom/stripe/hardware/status/TamperType;->UnrecoverableTamper:Lcom/stripe/hardware/status/TamperType;

    goto :goto_3

    .line 27
    :cond_8
    sget-object v0, Lcom/stripe/hardware/status/TamperType;->FirmwareIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    goto :goto_3

    .line 26
    :cond_9
    sget-object v0, Lcom/stripe/hardware/status/TamperType;->ConfigIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    goto :goto_3

    .line 25
    :cond_a
    sget-object v0, Lcom/stripe/hardware/status/TamperType;->KeyIntegrityCheck:Lcom/stripe/hardware/status/TamperType;

    :goto_3
    move-object v11, v0

    .line 32
    new-instance v6, Lcom/stripe/hardware/status/BbposTamper;

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/stripe/hardware/status/BbposTamper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/hardware/status/TamperType;)V

    return-object v6
.end method
