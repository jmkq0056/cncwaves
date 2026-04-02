.class public final Lcom/stripe/hardware/emv/CvmType$Companion;
.super Ljava/lang/Object;
.source "CvmType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/emv/CvmType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0008R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/CvmType$Companion;",
        "",
        "()V",
        "codeMap",
        "",
        "",
        "Lcom/stripe/hardware/emv/CvmType;",
        "statusMap",
        "",
        "fromCode",
        "code",
        "fromStatus",
        "status",
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/emv/CvmType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromCode(I)Lcom/stripe/hardware/emv/CvmType;
    .locals 1

    .line 26
    invoke-static {}, Lcom/stripe/hardware/emv/CvmType;->access$getCodeMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/hardware/emv/CvmType;

    if-nez p1, :cond_0

    sget-object p1, Lcom/stripe/hardware/emv/CvmType;->NONE:Lcom/stripe/hardware/emv/CvmType;

    :cond_0
    return-object p1
.end method

.method public final fromStatus(Ljava/lang/String;)Lcom/stripe/hardware/emv/CvmType;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/stripe/hardware/emv/CvmType;->access$getStatusMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/hardware/emv/CvmType;

    if-nez p1, :cond_0

    sget-object p1, Lcom/stripe/hardware/emv/CvmType;->NONE:Lcom/stripe/hardware/emv/CvmType;

    :cond_0
    return-object p1
.end method
