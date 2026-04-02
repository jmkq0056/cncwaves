.class public abstract Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;
.super Ljava/lang/Object;
.source "AsyncQueryJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;,
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;,
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;,
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0004\u0008\u0005\u0010\u00012\u00020\u0002:\u0004\u0004\u0005\u0006\u0007B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0003\u0082\u0001\u0004\u0008\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;",
        "CallbackType",
        "",
        "()V",
        "QueryResultCanceled",
        "QueryResultError",
        "QueryResultPending",
        "QueryResultSucceeded",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultCanceled;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultError;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultPending;",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult$QueryResultSucceeded;",
        "common_publish"
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

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/AsyncQueryJob$QueryResult;-><init>()V

    return-void
.end method
