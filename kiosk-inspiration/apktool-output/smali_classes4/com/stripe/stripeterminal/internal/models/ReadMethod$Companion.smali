.class public final Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;
.super Ljava/lang/Object;
.source "ReadMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/models/ReadMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadMethod.kt\ncom/stripe/stripeterminal/internal/models/ReadMethod$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n288#2,2:35\n*S KotlinDebug\n*F\n+ 1 ReadMethod.kt\ncom/stripe/stripeterminal/internal/models/ReadMethod$Companion\n*L\n30#1:35,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;",
        "",
        "()V",
        "fromPosEntryMode",
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        "entryMode",
        "",
        "fromPosEntryMode$public_release",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic fromPosEntryMode$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 4

    const-string v0, "entryMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 30
    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->access$getEntryMode$p(Lcom/stripe/stripeterminal/internal/models/ReadMethod;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    check-cast v1, Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    return-object v1
.end method
