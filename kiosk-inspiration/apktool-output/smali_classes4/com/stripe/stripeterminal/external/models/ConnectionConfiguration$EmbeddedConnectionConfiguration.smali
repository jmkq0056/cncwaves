.class public final Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;
.super Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.source "ConnectionConfiguration.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedConnectionConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B9\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "listener",
        "",
        "(Ljava/lang/Object;)V",
        "posConnectionType",
        "Lcom/stripe/stripeterminal/internal/models/PosConnectionType;",
        "supportsOfflineMode",
        "",
        "supportsOfflineSetupIntents",
        "shouldActivateWithExpandedLocation",
        "shouldGenerateOfflineSessionToken",
        "(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZ)V",
        "getListener",
        "()Ljava/lang/Object;",
        "getPosConnectionType",
        "()Lcom/stripe/stripeterminal/internal/models/PosConnectionType;",
        "getShouldActivateWithExpandedLocation",
        "()Z",
        "getShouldGenerateOfflineSessionToken",
        "getSupportsOfflineMode",
        "getSupportsOfflineSetupIntents",
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
.field private final listener:Ljava/lang/Object;

.field private final posConnectionType:Lcom/stripe/stripeterminal/internal/models/PosConnectionType;

.field private final shouldActivateWithExpandedLocation:Z

.field private final shouldGenerateOfflineSessionToken:Z

.field private final supportsOfflineMode:Z

.field private final supportsOfflineSetupIntents:Z


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZ)V
    .locals 4

    const-string v0, "posConnectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UsePreSet;

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->posConnectionType:Lcom/stripe/stripeterminal/internal/models/PosConnectionType;

    .line 118
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->listener:Ljava/lang/Object;

    .line 119
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->supportsOfflineMode:Z

    .line 120
    iput-boolean p4, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->supportsOfflineSetupIntents:Z

    .line 121
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->shouldActivateWithExpandedLocation:Z

    .line 122
    iput-boolean p6, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->shouldGenerateOfflineSessionToken:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 10

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;->INSTANCE:Lcom/stripe/stripeterminal/internal/models/PosConnectionType$Default;

    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/internal/models/PosConnectionType;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 124
    invoke-direct/range {v1 .. v9}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getListener()Ljava/lang/Object;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->listener:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPosConnectionType()Lcom/stripe/stripeterminal/internal/models/PosConnectionType;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->posConnectionType:Lcom/stripe/stripeterminal/internal/models/PosConnectionType;

    return-object v0
.end method

.method public final getShouldActivateWithExpandedLocation()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->shouldActivateWithExpandedLocation:Z

    return v0
.end method

.method public final getShouldGenerateOfflineSessionToken()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->shouldGenerateOfflineSessionToken:Z

    return v0
.end method

.method public final getSupportsOfflineMode()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->supportsOfflineMode:Z

    return v0
.end method

.method public final getSupportsOfflineSetupIntents()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->supportsOfflineSetupIntents:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration$toString$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration$toString$1;-><init>(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;->buildToString(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
