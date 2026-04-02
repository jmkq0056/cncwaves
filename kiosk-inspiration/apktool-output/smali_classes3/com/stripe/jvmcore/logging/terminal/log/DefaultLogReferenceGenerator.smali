.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogReferenceGenerator;
.super Ljava/lang/Object;
.source "DefaultLogReferenceGenerator.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogReferenceGenerator;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;",
        "()V",
        "uniqueId",
        "",
        "impl_release"
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
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uniqueId()Ljava/lang/String;
    .locals 2

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
