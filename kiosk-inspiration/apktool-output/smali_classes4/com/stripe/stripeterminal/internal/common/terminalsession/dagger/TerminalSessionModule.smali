.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;
.super Ljava/lang/Object;
.source "TerminalSessionModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0015\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0001\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;",
        "",
        "()V",
        "bindReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;",
        "defaultIpReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;",
        "bindReaderActivator$terminalsession_release",
        "provideDefaultIpReaderActivator",
        "backgroundReaderActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "provideDefaultIpReaderActivator$terminalsession_release",
        "terminalsession_release"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/terminalsession/dagger/TerminalSessionModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindReaderActivator$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "defaultIpReaderActivator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;

    return-object p1
.end method

.method public final provideDefaultIpReaderActivator$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;)Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "backgroundReaderActivator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;)V

    return-object v0
.end method
