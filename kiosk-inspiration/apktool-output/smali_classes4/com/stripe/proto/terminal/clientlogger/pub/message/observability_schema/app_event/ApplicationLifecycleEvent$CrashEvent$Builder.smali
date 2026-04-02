.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApplicationLifecycleEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;",
        "()V",
        "app_flags",
        "",
        "app_package_name",
        "",
        "app_process_id",
        "app_user_id",
        "app_version_code",
        "exception",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;",
        "build",
        "terminal_release"
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
.field public app_flags:I

.field public app_package_name:Ljava/lang/String;

.field public app_process_id:I

.field public app_user_id:I

.field public app_version_code:I

.field public exception:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 581
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_package_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final app_flags(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 0

    .line 629
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_flags:I

    return-object p0
.end method

.method public final app_package_name(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 1

    const-string v0, "app_package_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_package_name:Ljava/lang/String;

    return-object p0
.end method

.method public final app_process_id(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 0

    .line 604
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_process_id:I

    return-object p0
.end method

.method public final app_user_id(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 0

    .line 612
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_user_id:I

    return-object p0
.end method

.method public final app_version_code(I)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 0

    .line 645
    iput p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_version_code:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;
    .locals 8

    .line 649
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;

    .line 650
    iget v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_process_id:I

    .line 651
    iget v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_user_id:I

    .line 652
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_package_name:Ljava/lang/String;

    .line 653
    iget v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_flags:I

    .line 654
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->exception:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;

    .line 655
    iget v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->app_version_code:I

    .line 656
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 649
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent;-><init>(IILjava/lang/String;ILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;ILokio/ByteString;)V

    return-object v0
.end method

.method public final exception(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$CrashEvent$Builder;->exception:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent$Exception;

    return-object p0
.end method
