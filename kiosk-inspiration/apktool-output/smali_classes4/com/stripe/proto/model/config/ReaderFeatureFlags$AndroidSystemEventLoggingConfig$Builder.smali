.class public final Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderFeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
        "()V",
        "anr_enabled",
        "",
        "destroy_activity_enabled",
        "destroy_service_enabled",
        "low_memory_enabled",
        "poll_interval_millis",
        "",
        "process_crashed_too_much_enabled",
        "process_died_enabled",
        "service_crashed_too_much_enabled",
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
.field public anr_enabled:Z

.field public destroy_activity_enabled:Z

.field public destroy_service_enabled:Z

.field public low_memory_enabled:Z

.field public poll_interval_millis:J

.field public process_crashed_too_much_enabled:Z

.field public process_died_enabled:Z

.field public service_crashed_too_much_enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5026
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final anr_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5087
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->anr_enabled:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 5026
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->build()Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
    .locals 11

    .line 5115
    new-instance v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    .line 5116
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->poll_interval_millis:J

    .line 5117
    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->destroy_activity_enabled:Z

    .line 5118
    iget-boolean v4, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->destroy_service_enabled:Z

    .line 5119
    iget-boolean v5, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->process_died_enabled:Z

    .line 5120
    iget-boolean v6, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->anr_enabled:Z

    .line 5121
    iget-boolean v7, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->low_memory_enabled:Z

    .line 5122
    iget-boolean v8, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->process_crashed_too_much_enabled:Z

    .line 5123
    iget-boolean v9, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->service_crashed_too_much_enabled:Z

    .line 5124
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 5115
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;-><init>(JZZZZZZZLokio/ByteString;)V

    return-object v0
.end method

.method public final destroy_activity_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5063
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->destroy_activity_enabled:Z

    return-object p0
.end method

.method public final destroy_service_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5071
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->destroy_service_enabled:Z

    return-object p0
.end method

.method public final low_memory_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5095
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->low_memory_enabled:Z

    return-object p0
.end method

.method public final poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5055
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->poll_interval_millis:J

    return-object p0
.end method

.method public final process_crashed_too_much_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5103
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->process_crashed_too_much_enabled:Z

    return-object p0
.end method

.method public final process_died_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5079
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->process_died_enabled:Z

    return-object p0
.end method

.method public final service_crashed_too_much_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;
    .locals 0

    .line 5111
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig$Builder;->service_crashed_too_much_enabled:Z

    return-object p0
.end method
