.class public Lcom/stripe/stripeterminal/internal/common/LocationHandler;
.super Ljava/lang/Object;
.source "LocationHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/LocationHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocationHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocationHandler.kt\ncom/stripe/stripeterminal/internal/common/LocationHandler\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,117:1\n16#2:118\n*S KotlinDebug\n*F\n+ 1 LocationHandler.kt\ncom/stripe/stripeterminal/internal/common/LocationHandler\n*L\n30#1:118\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 &2\u00020\u0001:\u0001&B\u0019\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 H\u0003J\u0006\u0010$\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "appContext",
        "cachedLocation",
        "Landroid/location/Location;",
        "listeningToLocations",
        "",
        "getListeningToLocations$annotations",
        "()V",
        "getListeningToLocations",
        "()Z",
        "setListeningToLocations",
        "(Z)V",
        "location",
        "getLocation",
        "()Landroid/location/Location;",
        "locationListener",
        "Landroid/location/LocationListener;",
        "locationManager",
        "Landroid/location/LocationManager;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "isPermissionGranted",
        "permission",
        "",
        "requestUpdates",
        "",
        "provider",
        "startListening",
        "stopListening",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/LocationHandler$Companion;

.field private static final MIN_TIME_DIFF_MS:J = 0x927c0L


# instance fields
.field private final appContext:Landroid/content/Context;

.field private cachedLocation:Landroid/location/Location;

.field private listeningToLocations:Z

.field private final locationListener:Landroid/location/LocationListener;

.field private final locationManager:Landroid/location/LocationManager;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/LocationHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->Companion:Lcom/stripe/stripeterminal/internal/common/LocationHandler$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ForApplication;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-class v0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->appContext:Landroid/content/Context;

    .line 32
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    .line 49
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/LocationHandler$1;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler$1;-><init>(Lcom/stripe/stripeterminal/internal/common/LocationHandler;)V

    check-cast p1, Landroid/location/LocationListener;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationListener:Landroid/location/LocationListener;

    .line 61
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->startListening()V

    return-void
.end method

.method public static final synthetic access$setCachedLocation$p(Lcom/stripe/stripeterminal/internal/common/LocationHandler;Landroid/location/Location;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->cachedLocation:Landroid/location/Location;

    return-void
.end method

.method public static synthetic getListeningToLocations$annotations()V
    .locals 0

    return-void
.end method

.method private final isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->appContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final requestUpdates(Ljava/lang/String;)V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->cachedLocation:Landroid/location/Location;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    const-wide/32 v3, 0x927c0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->listeningToLocations:Z

    return-void
.end method


# virtual methods
.method public final getListeningToLocations()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->listeningToLocations:Z

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->cachedLocation:Landroid/location/Location;

    return-object v0
.end method

.method public final setListeningToLocations(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->listeningToLocations:Z

    return-void
.end method

.method public final startListening()V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->listeningToLocations:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startListening"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 69
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->requestUpdates(Ljava/lang/String;)V

    .line 76
    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->requestUpdates(Ljava/lang/String;)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-direct {p0, v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->requestUpdates(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final stopListening()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "stopListening"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 89
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 90
    iput-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->listeningToLocations:Z

    return-void
.end method
