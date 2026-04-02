.class public final Lcom/stripe/core/storage/DefaultProtoStoreFactory;
.super Ljava/lang/Object;
.source "ProtoStoreFactory.kt"

# interfaces
.implements Lcom/stripe/core/storage/ProtoStoreFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JP\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0004\u0008\u0000\u0010\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\t0\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000f2\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/core/storage/DefaultProtoStoreFactory;",
        "Lcom/stripe/core/storage/ProtoStoreFactory;",
        "application",
        "Landroid/app/Application;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;)V",
        "create",
        "Lcom/stripe/core/storage/ProtoStore;",
        "T",
        "fileName",
        "",
        "adapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "defaultValueFactory",
        "Lkotlin/Function0;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "storage_release"
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
.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private final application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/core/storage/DefaultProtoStoreFactory;->application:Landroid/app/Application;

    .line 19
    iput-object p2, p0, Lcom/stripe/core/storage/DefaultProtoStoreFactory;->appScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/squareup/wire/ProtoAdapter;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/core/storage/ProtoStore;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/core/storage/ProtoStore<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValueFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/stripe/core/storage/ProtoDataStore;

    .line 28
    iget-object v1, p0, Lcom/stripe/core/storage/DefaultProtoStoreFactory;->application:Landroid/app/Application;

    .line 29
    iget-object v2, p0, Lcom/stripe/core/storage/DefaultProtoStoreFactory;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 31
    new-instance v3, Lcom/stripe/core/storage/ProtoSerializer;

    invoke-direct {v3, p2, p3, p4}, Lcom/stripe/core/storage/ProtoSerializer;-><init>(Lcom/squareup/wire/ProtoAdapter;Lkotlin/jvm/functions/Function0;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v3, Landroidx/datastore/core/Serializer;

    .line 27
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/stripe/core/storage/ProtoDataStore;-><init>(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V

    check-cast v0, Lcom/stripe/core/storage/ProtoStore;

    return-object v0
.end method
