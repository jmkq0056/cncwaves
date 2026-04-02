.class public final Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;
.super Ljava/lang/Object;
.source "PermissionsValidator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "isGranted",
        "",
        "permission",
        "",
        "validateBluetoothPermissions",
        "",
        "validateLocationPermissions",
        "common_publish"
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
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->context:Landroid/content/Context;

    return-void
.end method

.method private final isGranted(Ljava/lang/String;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final validateBluetoothPermissions()V
    .locals 9

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->isGranted(Ljava/lang/String;)Z

    move-result v0

    .line 37
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->isGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 40
    :cond_1
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 41
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 40
    const-string v4, "You must request bluetooth permissions before discovering Bluetooth readers"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public final validateLocationPermissions()V
    .locals 10

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 16
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->isGranted(Ljava/lang/String;)Z

    move-result v1

    .line 17
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v2}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->isGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 23
    :cond_1
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 24
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 23
    const-string v5, "You must request location permissions before discovering readers"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method
