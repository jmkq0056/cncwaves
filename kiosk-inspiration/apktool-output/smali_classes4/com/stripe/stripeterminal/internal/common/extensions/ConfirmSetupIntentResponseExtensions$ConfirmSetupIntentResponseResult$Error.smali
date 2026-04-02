.class public final Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;
.super Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;
.source "ConfirmSetupIntentResponseExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;",
        "Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;",
        "exception",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "offlineStats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V",
        "getException",
        "()Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "getOfflineStats",
        "()Lcom/stripe/proto/api/sdk/OfflineStats;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

.field private final offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 45
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->copy(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object v0
.end method

.method public final component2()Lcom/stripe/proto/api/sdk/OfflineStats;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/proto/api/sdk/OfflineStats;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object v0
.end method

.method public getOfflineStats()Lcom/stripe/proto/api/sdk/OfflineStats;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflineStats;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error(exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->exception:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/extensions/ConfirmSetupIntentResponseExtensions$ConfirmSetupIntentResponseResult$Error;->offlineStats:Lcom/stripe/proto/api/sdk/OfflineStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
