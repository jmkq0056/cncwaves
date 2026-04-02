.class public final Lio/ktor/client/statement/HttpResponsePipeline;
.super Lio/ktor/util/pipeline/Pipeline;
.source "HttpResponsePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/client/statement/HttpResponsePipeline$Phases;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/util/pipeline/Pipeline<",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \t2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\tB\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/client/statement/HttpResponsePipeline;",
        "Lio/ktor/util/pipeline/Pipeline;",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lio/ktor/client/call/HttpClientCall;",
        "developmentMode",
        "",
        "(Z)V",
        "getDevelopmentMode",
        "()Z",
        "Phases",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final After:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Parse:Lio/ktor/util/pipeline/PipelinePhase;

.field public static final Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

.field private static final Receive:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final State:Lio/ktor/util/pipeline/PipelinePhase;

.field private static final Transform:Lio/ktor/util/pipeline/PipelinePhase;


# instance fields
.field private final developmentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/statement/HttpResponsePipeline$Phases;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Phases:Lio/ktor/client/statement/HttpResponsePipeline$Phases;

    .line 28
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Receive"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    .line 33
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Parse"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    .line 38
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "Transform"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    .line 43
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "State"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    .line 48
    new-instance v0, Lio/ktor/util/pipeline/PipelinePhase;

    const-string v1, "After"

    invoke-direct {v0, v1}, Lio/ktor/util/pipeline/PipelinePhase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/ktor/client/statement/HttpResponsePipeline;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [Lio/ktor/util/pipeline/PipelinePhase;

    const/4 v1, 0x0

    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 21
    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 22
    sget-object v2, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    aput-object v2, v0, v1

    .line 17
    invoke-direct {p0, v0}, Lio/ktor/util/pipeline/Pipeline;-><init>([Lio/ktor/util/pipeline/PipelinePhase;)V

    .line 16
    iput-boolean p1, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/client/statement/HttpResponsePipeline;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getAfter$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 15
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->After:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getParse$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 15
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Parse:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getReceive$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 15
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Receive:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getState$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 15
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->State:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method

.method public static final synthetic access$getTransform$cp()Lio/ktor/util/pipeline/PipelinePhase;
    .locals 1

    .line 15
    sget-object v0, Lio/ktor/client/statement/HttpResponsePipeline;->Transform:Lio/ktor/util/pipeline/PipelinePhase;

    return-object v0
.end method


# virtual methods
.method public getDevelopmentMode()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lio/ktor/client/statement/HttpResponsePipeline;->developmentMode:Z

    return v0
.end method
