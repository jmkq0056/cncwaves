.class public final Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;
.super Ljava/lang/Object;
.source "DeviceRoleLogUploader.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceRoleLogUploader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceRoleLogUploader.kt\ncom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n16#2:122\n1549#3:123\n1620#3,3:124\n1549#3:127\n1620#3,3:128\n1549#3:131\n1620#3,3:132\n*S KotlinDebug\n*F\n+ 1 DeviceRoleLogUploader.kt\ncom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader\n*L\n24#1:122\n29#1:123\n29#1:124,3\n44#1:127\n44#1:128,3\n70#1:131\n70#1:132,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ2\u0010\u0016\u001a\u00020\u0017\"\u0012\u0008\u0000\u0010\u0018*\u000c\u0012\u0004\u0012\u0002H\u0018\u0012\u0002\u0008\u00030\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001b2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0016\u0010\u001d\u001a\u00020\u00172\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0016\u0010!\u001a\u00020\u00172\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001fH\u0016J\u000c\u0010$\u001a\u00020%*\u00020 H\u0002J\u000c\u0010$\u001a\u00020&*\u00020#H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012j\u0002`\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        "deviceUuidProvider",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "role",
        "",
        "clientLoggerApi",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "deviceUuid",
        "Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "getDeviceUuid",
        "()Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "deviceUuid$delegate",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "getResultFromResponse",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;",
        "T",
        "Lcom/squareup/wire/Message;",
        "crpcResponse",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "entityType",
        "uploadEvents",
        "events",
        "",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
        "uploadTraces",
        "spans",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "toClientLoggerProto",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;",
        "impl_release"
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
.field private final clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

.field private final deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

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

.field private final role:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 23
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "deviceUuid"

    const-string v3, "getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;"

    const-class v4, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/stripe/jvmcore/dagger/LogRole;
        .end annotation
    .end param

    const-string v0, "deviceUuidProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLoggerApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->role:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    .line 23
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    .line 122
    const-class p1, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    sget-object v1, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/DeviceUuidProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v0

    return-object v0
.end method

.method private final getResultFromResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message<",
            "TT;*>;>(",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;"
        }
    .end annotation

    .line 100
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Succeeded;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Succeeded;

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    return-object p1

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    const-string v1, "Failed to upload "

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 104
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", not retrying"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Lkotlin/Pair;

    invoke-interface {p1, p2, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 106
    new-instance p1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;

    invoke-direct {p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;-><init>(Z)V

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    return-object p1

    .line 109
    :cond_1
    instance-of v0, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-eqz v0, :cond_3

    .line 110
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->isRetryable()Z

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_2

    .line 113
    const-string v1, "not"

    goto :goto_0

    :cond_2
    const-string v1, "retrying"

    .line 112
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Lkotlin/Pair;

    .line 111
    invoke-interface {v0, p2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 116
    new-instance p2, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;

    invoke-direct {p2, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;-><init>(Z)V

    check-cast p2, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    return-object p2

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final toClientLoggerProto(Lcom/stripe/jvmcore/logging/terminal/log/Event;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;
    .locals 12

    .line 81
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getEvent()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getScope()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getDuration()J

    move-result-wide v4

    .line 85
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getOutcome()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v6, v0

    .line 86
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getResult()Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;

    move-result-object v0

    const/4 v7, -0x1

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/log/Event$EventResult;->ordinal()I

    move-result v0

    aget v0, v8, v0

    :goto_0
    if-eq v0, v7, :cond_4

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    .line 88
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;->ERROR:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    goto :goto_1

    .line 89
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 87
    :cond_3
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    goto :goto_1

    .line 89
    :cond_4
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    .line 91
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/jvmcore/logging/terminal/log/Event;->getTags()Ljava/util/Map;

    move-result-object p1

    move-wide v7, v4

    move-object v5, v0

    .line 80
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;

    .line 84
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v10, 0x180

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 80
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final toClientLoggerProto(Lcom/stripe/jvmcore/logging/terminal/log/Span;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;
    .locals 41

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTraceId()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    if-nez v0, :cond_0

    move-object v3, v8

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 61
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v2, v8

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 58
    :goto_1
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getStartTimeMs()J

    move-result-wide v21

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getService()Ljava/lang/String;

    move-result-object v25

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getRequest()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v27, v8

    goto :goto_2

    :cond_2
    move-object/from16 v27, v1

    .line 68
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getResponse()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v29, v8

    goto :goto_3

    :cond_3
    move-object/from16 v29, v1

    .line 69
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getMethod()Ljava/lang/String;

    move-result-object v26

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getLogPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 132
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 133
    check-cast v3, Lcom/stripe/loggingmodels/SpanPoint;

    .line 70
    invoke-interface {v3}, Lcom/stripe/loggingmodels/SpanPoint;->toClientLoggerProto()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb$SpanPointPb;

    move-result-object v3

    .line 133
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 134
    :cond_4
    move-object/from16 v37, v2

    check-cast v37, Ljava/util/List;

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getException()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object/from16 v31, v8

    goto :goto_5

    :cond_5
    move-object/from16 v31, v1

    .line 72
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTotalTimeMs()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_6

    :cond_6
    const-wide/16 v1, 0x0

    :goto_6
    move-wide/from16 v23, v1

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/jvmcore/logging/terminal/log/Span;->getTags()Ljava/util/Map;

    move-result-object v34

    .line 64
    new-instance v9, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    const v39, 0xa6a0ff

    const/16 v40, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v35, v0

    invoke-direct/range {v9 .. v40}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/Livemode;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/AdditionalContext;Ljava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method


# virtual methods
.method public uploadEvents(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    check-cast p1, Ljava/lang/Iterable;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 124
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/Event;

    .line 30
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;

    .line 31
    iget-object v4, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->role:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-direct {p0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->toClientLoggerProto(Lcom/stripe/jvmcore/logging/terminal/log/Event;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;

    move-result-object v7

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 30
    invoke-direct/range {v3 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 28
    new-instance p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p1, v1, v2, v3, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    invoke-virtual {v1, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->reportEvent(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->getResultFromResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public uploadTraces(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;"
        }
    .end annotation

    const-string v0, "spans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    check-cast p1, Ljava/lang/Iterable;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 128
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 129
    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/Span;

    .line 45
    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;

    .line 46
    iget-object v3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->role:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/terminal/appinfo/DeviceUuid;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-direct {p0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->toClientLoggerProto(Lcom/stripe/jvmcore/logging/terminal/log/Span;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;

    move-result-object v6

    const/16 v9, 0x34

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 45
    invoke-direct/range {v2 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportedSpanPb;Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientSummaryPb;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 129
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 43
    new-instance p1, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;-><init>(Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->clientLoggerApi:Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;

    invoke-virtual {v0, p1}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ClientLoggerApi;->reportTrace(Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportTraceRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    const-string v0, "traces"

    invoke-direct {p0, p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DeviceRoleLogUploader;->getResultFromResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    move-result-object p1

    return-object p1
.end method
