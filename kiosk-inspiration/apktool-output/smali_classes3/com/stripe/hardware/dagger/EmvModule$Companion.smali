.class public final Lcom/stripe/hardware/dagger/EmvModule$Companion;
.super Ljava/lang/Object;
.source "EmvModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/dagger/EmvModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmvModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmvModule.kt\ncom/stripe/hardware/dagger/EmvModule$Companion\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,37:1\n16#2:38\n*S KotlinDebug\n*F\n+ 1 EmvModule.kt\ncom/stripe/hardware/dagger/EmvModule$Companion\n*L\n22#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/hardware/dagger/EmvModule$Companion;",
        "",
        "()V",
        "provideDefaultDomesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideDefaultDomesticDebitAidsParser$wiring",
        "wiring"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/hardware/dagger/EmvModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideDefaultDomesticDebitAidsParser$wiring(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;

    .line 24
    new-instance v1, Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;

    invoke-direct {v1, p1}, Lcom/stripe/hardware/dagger/EmvModule$Companion$provideDefaultDomesticDebitAidsParser$1;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v1, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    .line 23
    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;-><init>(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;)V

    return-object v0
.end method
