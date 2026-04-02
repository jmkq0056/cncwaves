.class public final Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ClientCheckoutOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ClientCheckoutOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001eJ\u0008\u0010\u001f\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001eJ\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001eJ\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001eJ\u0012\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\tJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\tJ\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0015\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0002\u0010 R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ClientCheckoutOptions;",
        "()V",
        "allow_tipping",
        "",
        "Ljava/lang/Boolean;",
        "collect_signature_on_swipe",
        "confirm_amount_threshold",
        "",
        "contact_emv_config",
        "Lcom/stripe/proto/model/config/ContactEmvConfig;",
        "default_locale",
        "Lcom/stripe/proto/model/config/Locale;",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "disable_screen_dimming",
        "increment_num_of_canceled_payments_on_query",
        "offline_contact_emv_config",
        "redact_masked_pan_to_last_4",
        "refund_signature_threshold",
        "signature_threshold",
        "summary_delay",
        "uptime_reset_parameters",
        "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;",
        "vector_config",
        "Lcom/stripe/proto/model/config/VectorRegionalConfiguration;",
        "volume",
        "",
        "Ljava/lang/Integer;",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;",
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
.field public allow_tipping:Ljava/lang/Boolean;

.field public collect_signature_on_swipe:Ljava/lang/Boolean;

.field public confirm_amount_threshold:J

.field public contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

.field public default_locale:Lcom/stripe/proto/model/config/Locale;

.field public device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

.field public disable_screen_dimming:Ljava/lang/Boolean;

.field public increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

.field public offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

.field public redact_masked_pan_to_last_4:Z

.field public refund_signature_threshold:J

.field public signature_threshold:J

.field public summary_delay:J

.field public uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

.field public vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

.field public volume:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 304
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 342
    sget-object v0, Lcom/stripe/proto/model/config/Locale;->INVALID_LOCALE:Lcom/stripe/proto/model/config/Locale;

    iput-object v0, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->default_locale:Lcom/stripe/proto/model/config/Locale;

    return-void
.end method


# virtual methods
.method public final allow_tipping(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->allow_tipping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->build()Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ClientCheckoutOptions;
    .locals 24

    move-object/from16 v0, p0

    .line 454
    new-instance v1, Lcom/stripe/proto/model/config/ClientCheckoutOptions;

    .line 455
    iget-object v2, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->volume:Ljava/lang/Integer;

    .line 456
    iget-object v3, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 457
    iget-object v4, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    .line 458
    iget-wide v5, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->signature_threshold:J

    .line 459
    iget-wide v7, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->refund_signature_threshold:J

    .line 460
    iget-object v9, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 461
    iget-wide v10, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->summary_delay:J

    .line 462
    iget-wide v12, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->confirm_amount_threshold:J

    .line 463
    iget-object v14, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->collect_signature_on_swipe:Ljava/lang/Boolean;

    .line 464
    iget-object v15, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    move-object/from16 v16, v1

    .line 465
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->redact_masked_pan_to_last_4:Z

    move/from16 v17, v1

    .line 466
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->disable_screen_dimming:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    .line 467
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->default_locale:Lcom/stripe/proto/model/config/Locale;

    move-object/from16 v19, v1

    .line 468
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->allow_tipping:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    .line 469
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    move-object/from16 v21, v1

    .line 470
    iget-object v1, v0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    .line 471
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v22

    move-object/from16 v23, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v23

    .line 454
    invoke-direct/range {v1 .. v22}, Lcom/stripe/proto/model/config/ClientCheckoutOptions;-><init>(Ljava/lang/Integer;Lcom/stripe/proto/model/config/ContactEmvConfig;Lcom/stripe/proto/model/config/ContactEmvConfig;JJLcom/stripe/proto/model/config/DeviceTraceLevel;JJLjava/lang/Boolean;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;ZLjava/lang/Boolean;Lcom/stripe/proto/model/config/Locale;Ljava/lang/Boolean;Lcom/stripe/proto/model/config/VectorRegionalConfiguration;Ljava/lang/Boolean;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final collect_signature_on_swipe(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->collect_signature_on_swipe:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final confirm_amount_threshold(J)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 407
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->confirm_amount_threshold:J

    return-object p0
.end method

.method public final contact_emv_config(Lcom/stripe/proto/model/config/ContactEmvConfig;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "contact_emv_config is deprecated"
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    return-object p0
.end method

.method public final default_locale(Lcom/stripe/proto/model/config/Locale;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 1

    const-string v0, "default_locale"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->default_locale:Lcom/stripe/proto/model/config/Locale;

    return-object p0
.end method

.method public final device_trace_level(Lcom/stripe/proto/model/config/DeviceTraceLevel;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    return-object p0
.end method

.method public final disable_screen_dimming(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->disable_screen_dimming:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final increment_num_of_canceled_payments_on_query(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->increment_num_of_canceled_payments_on_query:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final offline_contact_emv_config(Lcom/stripe/proto/model/config/ContactEmvConfig;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "offline_contact_emv_config is deprecated"
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->offline_contact_emv_config:Lcom/stripe/proto/model/config/ContactEmvConfig;

    return-object p0
.end method

.method public final redact_masked_pan_to_last_4(Z)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->redact_masked_pan_to_last_4:Z

    return-object p0
.end method

.method public final refund_signature_threshold(J)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 392
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->refund_signature_threshold:J

    return-object p0
.end method

.method public final signature_threshold(J)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 384
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->signature_threshold:J

    return-object p0
.end method

.method public final summary_delay(J)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 402
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->summary_delay:J

    return-object p0
.end method

.method public final uptime_reset_parameters(Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->uptime_reset_parameters:Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;

    return-object p0
.end method

.method public final vector_config(Lcom/stripe/proto/model/config/VectorRegionalConfiguration;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->vector_config:Lcom/stripe/proto/model/config/VectorRegionalConfiguration;

    return-object p0
.end method

.method public final volume(Ljava/lang/Integer;)Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/model/config/ClientCheckoutOptions$Builder;->volume:Ljava/lang/Integer;

    return-object p0
.end method
