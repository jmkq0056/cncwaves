.class public abstract Lcom/stripe/core/hardware/Reader;
.super Ljava/lang/Object;
.source "Reader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/Reader$BluetoothReader;,
        Lcom/stripe/core/hardware/Reader$SerialReader;,
        Lcom/stripe/core/hardware/Reader$UsbReader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0013\u0014\u0015B9\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u0082\u0001\u0003\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/core/hardware/Reader;",
        "",
        "firmwareCanHandleSelection",
        "",
        "checkForCardBehavior",
        "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "needsOtaUpdate",
        "needsReconnectAfterConfigUpdate",
        "needsSplashScreenUpdate",
        "quickEmvAutoResponse",
        "(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V",
        "getCheckForCardBehavior",
        "()Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "getFirmwareCanHandleSelection",
        "()Z",
        "getNeedsOtaUpdate",
        "getNeedsReconnectAfterConfigUpdate",
        "getNeedsSplashScreenUpdate",
        "getQuickEmvAutoResponse",
        "BluetoothReader",
        "SerialReader",
        "UsbReader",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "Lcom/stripe/core/hardware/Reader$SerialReader;",
        "Lcom/stripe/core/hardware/Reader$UsbReader;",
        "hardware_release"
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
.field private final checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

.field private final firmwareCanHandleSelection:Z

.field private final needsOtaUpdate:Z

.field private final needsReconnectAfterConfigUpdate:Z

.field private final needsSplashScreenUpdate:Z

.field private final quickEmvAutoResponse:Z


# direct methods
.method private constructor <init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/stripe/core/hardware/Reader;->firmwareCanHandleSelection:Z

    .line 26
    iput-object p2, p0, Lcom/stripe/core/hardware/Reader;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 27
    iput-boolean p3, p0, Lcom/stripe/core/hardware/Reader;->needsOtaUpdate:Z

    .line 28
    iput-boolean p4, p0, Lcom/stripe/core/hardware/Reader;->needsReconnectAfterConfigUpdate:Z

    .line 29
    iput-boolean p5, p0, Lcom/stripe/core/hardware/Reader;->needsSplashScreenUpdate:Z

    .line 30
    iput-boolean p6, p0, Lcom/stripe/core/hardware/Reader;->quickEmvAutoResponse:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/stripe/core/hardware/Reader;-><init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/stripe/core/hardware/Reader;-><init>(ZLcom/stripe/hardware/emv/CheckForCardBehavior;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final getCheckForCardBehavior()Lcom/stripe/hardware/emv/CheckForCardBehavior;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/core/hardware/Reader;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    return-object v0
.end method

.method public final getFirmwareCanHandleSelection()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/stripe/core/hardware/Reader;->firmwareCanHandleSelection:Z

    return v0
.end method

.method public final getNeedsOtaUpdate()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/stripe/core/hardware/Reader;->needsOtaUpdate:Z

    return v0
.end method

.method public final getNeedsReconnectAfterConfigUpdate()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/stripe/core/hardware/Reader;->needsReconnectAfterConfigUpdate:Z

    return v0
.end method

.method public final getNeedsSplashScreenUpdate()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/stripe/core/hardware/Reader;->needsSplashScreenUpdate:Z

    return v0
.end method

.method public final getQuickEmvAutoResponse()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/stripe/core/hardware/Reader;->quickEmvAutoResponse:Z

    return v0
.end method
