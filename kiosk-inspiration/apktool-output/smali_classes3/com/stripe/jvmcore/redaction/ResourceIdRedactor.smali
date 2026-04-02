.class public final Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;
.super Ljava/lang/Object;
.source "ResourceIdRedactor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;,
        Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;,
        Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResourceIdRedactor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceIdRedactor.kt\ncom/stripe/jvmcore/redaction/ResourceIdRedactor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1855#2,2:62\n*S KotlinDebug\n*F\n+ 1 ResourceIdRedactor.kt\ncom/stripe/jvmcore/redaction/ResourceIdRedactor\n*L\n34#1:62,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \n2\u00020\u0001:\u0002\n\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\u0003R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;",
        "",
        "path",
        "",
        "(Ljava/lang/String;)V",
        "mainlandPathsWithIds",
        "",
        "Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;",
        "Lkotlin/text/Regex;",
        "redact",
        "Companion",
        "RedactionType",
        "redaction"
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
.field private static final Companion:Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;

.field private static final PaymentIntentResourceGetRegex:Ljava/lang/String; = "\\/v1/payment_intents/[a-zA-Z0-9_]+"

.field private static final PaymentIntentResourceModifierRegex:Ljava/lang/String; = "\\/v1\\/payment_intents\\/[a-zA-Z0-9_]+\\/(confirm|cancel|add_emv_second_generation_data)"

.field private static final RefundResourceModifierRegex:Ljava/lang/String; = "\\/v1\\/refunds\\/[a-zA-Z0-9_]+\\/(add_emv_second_generation_data)"


# instance fields
.field private final mainlandPathsWithIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;",
            "Lkotlin/text/Regex;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->Companion:Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->path:Ljava/lang/String;

    const/4 p1, 0x3

    .line 24
    new-array p1, p1, [Lkotlin/Pair;

    sget-object v0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;->PaymentIntentResourceModifier:Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\/v1\\/payment_intents\\/[a-zA-Z0-9_]+\\/(confirm|cancel|add_emv_second_generation_data)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 25
    sget-object v0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;->RefundResourceModifier:Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\/v1\\/refunds\\/[a-zA-Z0-9_]+\\/(add_emv_second_generation_data)"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 26
    sget-object v0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;->PaymentIntentResourceGet:Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\\/v1/payment_intents/[a-zA-Z0-9_]+"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 23
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->mainlandPathsWithIds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final redact()Ljava/lang/String;
    .locals 12

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;

    .line 35
    iget-object v2, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->mainlandPathsWithIds:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/text/Regex;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->path:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 36
    iget-object v0, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->path:Ljava/lang/String;

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    new-array v5, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "/"

    aput-object v2, v5, v0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 37
    sget-object v4, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;->ordinal()I

    move-result v1

    aget v1, v4, v1

    const/4 v4, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    if-ne v1, v4, :cond_2

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_1
    const-string v1, "retrieve"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 41
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 42
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 44
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->path:Ljava/lang/String;

    return-object v0
.end method
