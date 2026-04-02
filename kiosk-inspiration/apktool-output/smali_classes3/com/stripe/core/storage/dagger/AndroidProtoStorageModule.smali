.class public final Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;
.super Ljava/lang/Object;
.source "AndroidProtoStorageModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;",
        "",
        "()V",
        "provideProtoStoreFactory",
        "Lcom/stripe/core/storage/ProtoStoreFactory;",
        "application",
        "Landroid/app/Application;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;

    invoke-direct {v0}, Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;-><init>()V

    sput-object v0, Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;->INSTANCE:Lcom/stripe/core/storage/dagger/AndroidProtoStorageModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideProtoStoreFactory(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/core/storage/ProtoStoreFactory;
    .locals 1
    .param p2    # Lkotlinx/coroutines/CoroutineScope;
        .annotation runtime Lcom/stripe/jvmcore/dagger/AppScope;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/stripe/core/storage/DefaultProtoStoreFactory;

    invoke-direct {v0, p1, p2}, Lcom/stripe/core/storage/DefaultProtoStoreFactory;-><init>(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lcom/stripe/core/storage/ProtoStoreFactory;

    return-object v0
.end method
