.class public final Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;
.super Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.source "ConnectionConfiguration.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoffConnectionConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "handoffReaderListener",
        "Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;",
        "(Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;)V",
        "getHandoffReaderListener",
        "()Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;",
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
.field private final handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;)V
    .locals 4

    .line 108
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    return-void
.end method


# virtual methods
.method public final getHandoffReaderListener()Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;->handoffReaderListener:Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->buildToString$default(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
