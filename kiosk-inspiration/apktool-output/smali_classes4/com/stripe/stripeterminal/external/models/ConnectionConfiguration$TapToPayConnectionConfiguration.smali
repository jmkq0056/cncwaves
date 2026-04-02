.class public final Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;
.super Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.source "ConnectionConfiguration.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapToPayConnectionConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "locationId",
        "",
        "autoReconnectOnUnexpectedDisconnect",
        "",
        "tapToPayReaderListener",
        "Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;",
        "(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;)V",
        "getAutoReconnectOnUnexpectedDisconnect",
        "()Z",
        "getTapToPayReaderListener",
        "()Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;",
        "toString",
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
.field private final autoReconnectOnUnexpectedDisconnect:Z

.field private final tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;)V
    .locals 7

    const-string v0, "locationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;-><init>(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;)V
    .locals 3

    const-string v0, "locationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/models/LocationRegistration$UseId;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/models/LocationRegistration;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;-><init>(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->autoReconnectOnUnexpectedDisconnect:Z

    .line 93
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;-><init>(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;)V

    return-void
.end method


# virtual methods
.method public final getAutoReconnectOnUnexpectedDisconnect()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->autoReconnectOnUnexpectedDisconnect:Z

    return v0
.end method

.method public final getTapToPayReaderListener()Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->tapToPayReaderListener:Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration$toString$1;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration$toString$1;-><init>(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->buildToString(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
