.class public final Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DomainedBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/squareup/wire/Message<",
        "TD;TDB;>;DB:",
        "Lcom/squareup/wire/Message$Builder<",
        "TD;TDB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\u0008\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\u00020\u0005:\u0001\u0017BJ\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0007\u0012\'\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\nj\u0008\u0012\u0004\u0012\u00028\u0000`\r\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0010\u000fJ\u008d\u0001\u0010\u0010\u001a\"\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0011R\u0012\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000R\u00020\u0014\"\u0016\u0008\u0002\u0010\u0012\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0002\"\u0016\u0008\u0003\u0010\u0013\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u00042/\u0008\u0008\u0010\u0015\u001a)\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u00020\u000c0\nj\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u0012`\u0016\u00a2\u0006\u0002\u0008\u000eH\u0086\u0008\u00f8\u0001\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\t\u001a#\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000c0\nj\u0008\u0012\u0004\u0012\u00028\u0000`\r\u00a2\u0006\u0002\u0008\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;",
        "D",
        "Lcom/squareup/wire/Message;",
        "DB",
        "Lcom/squareup/wire/Message$Builder;",
        "",
        "domainClass",
        "Ljava/lang/Class;",
        "domainBuilderClass",
        "domainSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        "",
        "Lcom/stripe/jvmcore/logging/DomainSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V",
        "withScope",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;",
        "S",
        "SB",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "scopeSetter",
        "Lcom/stripe/jvmcore/logging/ScopeSetter;",
        "ScopedBuilder",
        "logging"
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
.field private final domainBuilderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDB;>;"
        }
    .end annotation
.end field

.field private final domainClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final domainSetter:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
            "TD;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;",
            "Ljava/lang/Class<",
            "TDB;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
            "-TD;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "domainClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainBuilderClass"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainSetter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->this$0:Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainClass:Ljava/lang/Class;

    .line 445
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainBuilderClass:Ljava/lang/Class;

    .line 446
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainSetter:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getDomainBuilderClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainBuilderClass:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getDomainClass$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Ljava/lang/Class;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainClass:Ljava/lang/Class;

    return-object p0
.end method

.method public static final synthetic access$getDomainSetter$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;->domainSetter:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public final synthetic withScope(Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/squareup/wire/Message<",
            "TS;TSB;>;SB:",
            "Lcom/squareup/wire/Message$Builder<",
            "TS;TSB;>;>(",
            "Lkotlin/jvm/functions/Function2<",
            "-TDB;-TS;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder<",
            "TD;TDB;>.ScopedBuilder<TS;TSB;>;"
        }
    .end annotation

    const-string v0, "scopeSetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;

    const-string v1, "S"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lcom/squareup/wire/Message;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    const-string v3, "SB"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Lcom/squareup/wire/Message$Builder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder$ScopedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
