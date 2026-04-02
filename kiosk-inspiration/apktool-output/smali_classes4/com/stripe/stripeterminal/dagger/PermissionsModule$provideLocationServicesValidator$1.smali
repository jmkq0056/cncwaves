.class public final Lcom/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1;
.super Ljava/lang/Object;
.source "PermissionsModule.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/PermissionsModule;->provideLocationServicesValidator(Landroid/content/Context;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "validateLocationServices",
        "",
        "sdkmanager_publish"
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
.field private final locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1;->locationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public validateLocationServices()V
    .locals 8

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/PermissionsModule$provideLocationServicesValidator$1;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 25
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 33
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->LOCATION_SERVICES_DISABLED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 32
    const-string v3, "Location services must be enabled to use Terminal"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method
