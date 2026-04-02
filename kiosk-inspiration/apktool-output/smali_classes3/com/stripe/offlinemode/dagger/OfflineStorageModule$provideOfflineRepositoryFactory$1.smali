.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;
.super Ljava/lang/Object;
.source "OfflineStorageModule.kt"

# interfaces
.implements Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->provideOfflineRepositoryFactory(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;)Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000bH\u0016R\u001b\u0010\u0002\u001a\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "com/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1",
        "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
        "offlineDatabase",
        "Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "getOfflineDatabase",
        "()Lcom/stripe/offlinemode/storage/OfflineDatabase;",
        "offlineDatabase$delegate",
        "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
        "create",
        "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final synthetic $cipherProvider:Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;

.field final synthetic $clock:Lcom/stripe/time/Clock;

.field final synthetic $discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $keyProvider:Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;

.field final synthetic $offlineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field final synthetic $offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

.field final synthetic $offlineRequestHelper:Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;

.field private final offlineDatabase$delegate:Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 92
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "offlineDatabase"

    const-string v3, "getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;"

    const-class v4, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method constructor <init>(Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;",
            "Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;",
            "Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;",
            "Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$cipherProvider:Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;

    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$keyProvider:Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;

    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineRequestHelper:Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;

    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    iput-object p7, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$clock:Lcom/stripe/time/Clock;

    iput-object p8, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->offlineDatabase$delegate:Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;

    return-void
.end method

.method private final getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->offlineDatabase$delegate:Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;

    sget-object v1, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/offlinemode/storage/OfflineDatabaseProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;)",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "logger"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v1, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$cipherProvider:Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;

    invoke-virtual {v1}, Lcom/stripe/offlinemode/cipher/OfflineCipherProvider;->get()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 96
    iget-object v3, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$keyProvider:Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;

    invoke-virtual {v3}, Lcom/stripe/offlinemode/cipher/OfflineAesKeyProvider;->get()Ljava/security/Key;

    move-result-object v3

    .line 98
    new-instance v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    .line 99
    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->offlineReaderDao()Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-result-object v4

    .line 100
    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->offlineConnectionDao()Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    move-result-object v5

    .line 101
    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->offlineLocationDao()Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    move-result-object v6

    .line 102
    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->offlineApiRequestDao()Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    move-result-object v7

    .line 103
    invoke-direct {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->getOfflineDatabase()Lcom/stripe/offlinemode/storage/OfflineDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stripe/offlinemode/storage/OfflineDatabase;->offlineAccountConfigDao()Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    move-result-object v8

    move-object v9, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 104
    new-instance v8, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    invoke-direct {v8, v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    move-object v10, v9

    .line 105
    new-instance v9, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    invoke-direct {v9, v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    move-object v11, v10

    .line 106
    new-instance v10, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    invoke-direct {v10, v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    move-object v12, v11

    .line 107
    new-instance v11, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    invoke-direct {v11, v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    move-object v13, v12

    .line 108
    new-instance v12, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    invoke-direct {v12, v1, v3}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;-><init>(Ljavax/crypto/Cipher;Ljava/security/Key;)V

    .line 109
    iget-object v1, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineRequestHelper:Lcom/stripe/offlinemode/helpers/DefaultOfflineRequestHelper;

    check-cast v1, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    .line 110
    iget-object v14, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 111
    iget-object v15, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    .line 112
    iget-object v3, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$clock:Lcom/stripe/time/Clock;

    move-object/from16 v16, v1

    .line 113
    iget-object v1, v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule$provideOfflineRepositoryFactory$1;->$discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v17, v16

    move-object/from16 v16, v3

    move-object v3, v13

    move-object/from16 v13, v17

    move-object/from16 v18, p1

    move-object/from16 v17, v1

    .line 98
    invoke-direct/range {v2 .. v18}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;-><init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao;Lcom/stripe/offlinemode/storage/OfflineConnectionDao;Lcom/stripe/offlinemode/storage/OfflineLocationDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V

    return-object v2
.end method
