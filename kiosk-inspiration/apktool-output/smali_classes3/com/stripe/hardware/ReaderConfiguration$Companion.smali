.class public final Lcom/stripe/hardware/ReaderConfiguration$Companion;
.super Ljava/lang/Object;
.source "ReaderConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/ReaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/hardware/ReaderConfiguration$Companion;",
        "",
        "()V",
        "INSERT",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "getINSERT",
        "()Ljava/util/Set;",
        "INSERT_OR_TAP",
        "getINSERT_OR_TAP",
        "MANUAL_ENTRY",
        "getMANUAL_ENTRY",
        "SWIPE",
        "getSWIPE",
        "SWIPE_OR_INSERT",
        "getSWIPE_OR_INSERT",
        "SWIPE_OR_INSERT_OR_TAP",
        "getSWIPE_OR_INSERT_OR_TAP",
        "SWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY",
        "getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY",
        "SWIPE_OR_TAP",
        "getSWIPE_OR_TAP",
        "TAP",
        "getTAP",
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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/ReaderConfiguration$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSERT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getINSERT$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getINSERT_OR_TAP()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getINSERT_OR_TAP$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getMANUAL_ENTRY()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getMANUAL_ENTRY$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSWIPE()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getSWIPE$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSWIPE_OR_INSERT()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getSWIPE_OR_INSERT$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSWIPE_OR_INSERT_OR_TAP()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getSWIPE_OR_INSERT_OR_TAP$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getSWIPE_OR_INSERT_OR_TAP_OR_MANUAL_ENTRY$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getSWIPE_OR_TAP()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getSWIPE_OR_TAP$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTAP()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration;->access$getTAP$cp()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
