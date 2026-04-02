.class public final Lcom/stripe/jvmcore/reboot/SettingWithPriorityKt;
.super Ljava/lang/Object;
.source "SettingWithPriority.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingWithPriority.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingWithPriority.kt\ncom/stripe/jvmcore/reboot/SettingWithPriorityKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,15:1\n6442#2:16\n*S KotlinDebug\n*F\n+ 1 SettingWithPriority.kt\ncom/stripe/jvmcore/reboot/SettingWithPriorityKt\n*L\n7#1:16\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0008\u0003\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aU\u0010\u0000\u001a\u0002H\u0001\"\u0014\u0008\u0000\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003*\u00020\u0004\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0008H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\n"
    }
    d2 = {
        "readFieldOfHighestPriority",
        "T",
        "F",
        "",
        "Lcom/stripe/jvmcore/reboot/FieldsWithPriority;",
        "",
        "defaultValue",
        "readSharedPrefValue",
        "Lkotlin/Function1;",
        "([Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "reboot"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic readFieldOfHighestPriority([Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum<",
            "TF;>;:",
            "Lcom/stripe/jvmcore/reboot/FieldsWithPriority;",
            "T:",
            "Ljava/lang/Object;",
            ">([TF;TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TF;+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readSharedPrefValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lcom/stripe/jvmcore/reboot/SettingWithPriorityKt$readFieldOfHighestPriority$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/stripe/jvmcore/reboot/SettingWithPriorityKt$readFieldOfHighestPriority$$inlined$sortedBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 8
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method
