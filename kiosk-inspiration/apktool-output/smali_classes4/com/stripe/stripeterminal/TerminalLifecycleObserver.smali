.class public final Lcom/stripe/stripeterminal/TerminalLifecycleObserver;
.super Ljava/lang/Object;
.source "TerminalLifecycleObserver.kt"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;,
        Lcom/stripe/stripeterminal/TerminalLifecycleObserver$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 #2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001#B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u000bH\u0016J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\"H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/TerminalLifecycleObserver;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Landroid/content/ComponentCallbacks2;",
        "packageName",
        "",
        "sdkManager",
        "Lcom/stripe/stripeterminal/TerminalSdkManager;",
        "(Ljava/lang/String;Lcom/stripe/stripeterminal/TerminalSdkManager;)V",
        "appName",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onLowMemory",
        "onStateChanged",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onTrimMemory",
        "level",
        "",
        "Companion",
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


# static fields
.field private static final APP_BACKGROUND:Ljava/lang/String; = "applicationDidEnterBackground"

.field private static final APP_FOREGROUND:Ljava/lang/String; = "applicationDidEnterForeground"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_TRIM_MEMORY:Ljava/lang/String; = "applicationDidReceiveMemoryWarning"

.field public static final Companion:Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field private static final MEMORY_LEVEL:Ljava/lang/String; = "memoryLevel"

.field private static final MEMORY_PROFILE:Ljava/lang/String; = "memoryProfile"

.field private static final TRIM_MEMORY_BACKGROUND:Ljava/lang/String; = "TRIM_MEMORY_BACKGROUND"

.field private static final TRIM_MEMORY_COMPLETE:Ljava/lang/String; = "TRIM_MEMORY_COMPLETE"

.field private static final TRIM_MEMORY_MODERATE:Ljava/lang/String; = "TRIM_MEMORY_MODERATE"

.field private static final TRIM_MEMORY_RUNNING_CRITICAL:Ljava/lang/String; = "TRIM_MEMORY_RUNNING_CRITICAL"

.field private static final TRIM_MEMORY_RUNNING_LOW:Ljava/lang/String; = "TRIM_MEMORY_RUNNING_LOW"

.field private static final TRIM_MEMORY_RUNNING_MODERATE:Ljava/lang/String; = "TRIM_MEMORY_RUNNING_MODERATE"

.field private static final TRIM_MEMORY_UI_HIDDEN:Ljava/lang/String; = "TRIM_MEMORY_UI_HIDDEN"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private appName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->Companion:Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;

    .line 114
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/TerminalSdkManager;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->packageName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;

    return-void
.end method

.method public static final getInstance(Landroid/app/Application;Lcom/stripe/stripeterminal/TerminalSdkManager;)Lcom/stripe/stripeterminal/TerminalLifecycleObserver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->Companion:Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/stripeterminal/TerminalLifecycleObserver$Companion;->getInstance(Landroid/app/Application;Lcom/stripe/stripeterminal/TerminalSdkManager;)Lcom/stripe/stripeterminal/TerminalLifecycleObserver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->appName:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "unknown"

    :cond_1
    iput-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->appName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/stripe/stripeterminal/TerminalSdkManager;->INSTANCE:Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/TerminalSdkManager;->isTerminalInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/TerminalLifecycleObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    const-string v1, "appId"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/TerminalSdkManager;->destroyTerminal()V

    return-void

    .line 65
    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-array p2, p2, [Lkotlin/Pair;

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->appName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "applicationDidEnterBackground"

    invoke-virtual {p1, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 66
    iget-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/TerminalSdkManager;->pauseTerminal()V

    return-void

    .line 59
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    new-array p2, p2, [Lkotlin/Pair;

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->appName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "applicationDidEnterForeground"

    invoke-virtual {p1, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 60
    iget-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/TerminalSdkManager;->resumeTerminal()V

    return-void

    .line 54
    :cond_4
    iget-object p1, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->sdkManager:Lcom/stripe/stripeterminal/TerminalSdkManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/TerminalSdkManager;->startTerminal()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    .line 35
    const-string v0, "unknown"

    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "TRIM_MEMORY_COMPLETE"

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "TRIM_MEMORY_MODERATE"

    goto :goto_0

    .line 30
    :cond_2
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    goto :goto_0

    .line 31
    :cond_3
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    goto :goto_0

    .line 32
    :cond_4
    const-string v0, "TRIM_MEMORY_RUNNING_CRITICAL"

    goto :goto_0

    .line 33
    :cond_5
    const-string v0, "TRIM_MEMORY_RUNNING_LOW"

    goto :goto_0

    .line 34
    :cond_6
    const-string v0, "TRIM_MEMORY_RUNNING_MODERATE"

    .line 37
    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x3

    .line 39
    new-array v2, v2, [Lkotlin/Pair;

    const-string v3, "memoryLevel"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 40
    const-string p1, "memoryProfile"

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 41
    const-string p1, "appId"

    iget-object v0, p0, Lcom/stripe/stripeterminal/TerminalLifecycleObserver;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 37
    const-string p1, "applicationDidReceiveMemoryWarning"

    invoke-virtual {v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void
.end method
