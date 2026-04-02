.class public final Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;
.super Ljava/lang/Object;
.source "OfflineReaderEventsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule$Bindings;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule$Bindings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;",
        "",
        "()V",
        "provideReaderEventsListener",
        "Lcom/stripe/offlinemode/ReaderEventListener;",
        "offlineListener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "Bindings",
        "offlinemode_release"
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
.field public static final INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;

    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;-><init>()V

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineReaderEventsModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideReaderEventsListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)Lcom/stripe/offlinemode/ReaderEventListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "offlineListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/stripe/offlinemode/ReaderEventListener;

    invoke-direct {v0, p1}, Lcom/stripe/offlinemode/ReaderEventListener;-><init>(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-object v0
.end method
