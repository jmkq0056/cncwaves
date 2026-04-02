.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiAppThemeConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;",
        "()V",
        "accent",
        "",
        "base_1_color_value",
        "base_2_color_value",
        "base_3_color_value",
        "base_4_color_value",
        "base_5_color_value",
        "base_6_color_value",
        "base_7_color_value",
        "base_8_color_value",
        "base_9_color_value",
        "critical_color_value",
        "disabled_color_value",
        "primary",
        "secondary",
        "secondary_button_background_color_value",
        "style",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;",
        "success_color_value",
        "warning_color_value",
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
.field public accent:Ljava/lang/String;

.field public base_1_color_value:Ljava/lang/String;

.field public base_2_color_value:Ljava/lang/String;

.field public base_3_color_value:Ljava/lang/String;

.field public base_4_color_value:Ljava/lang/String;

.field public base_5_color_value:Ljava/lang/String;

.field public base_6_color_value:Ljava/lang/String;

.field public base_7_color_value:Ljava/lang/String;

.field public base_8_color_value:Ljava/lang/String;

.field public base_9_color_value:Ljava/lang/String;

.field public critical_color_value:Ljava/lang/String;

.field public disabled_color_value:Ljava/lang/String;

.field public primary:Ljava/lang/String;

.field public secondary:Ljava/lang/String;

.field public secondary_button_background_color_value:Ljava/lang/String;

.field public style:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;

.field public success_color_value:Ljava/lang/String;

.field public warning_color_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 321
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;->STYLE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->style:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->primary:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary:Ljava/lang/String;

    .line 330
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->accent:Ljava/lang/String;

    .line 333
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_1_color_value:Ljava/lang/String;

    .line 336
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_2_color_value:Ljava/lang/String;

    .line 339
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_3_color_value:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_4_color_value:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_5_color_value:Ljava/lang/String;

    .line 348
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_6_color_value:Ljava/lang/String;

    .line 351
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_7_color_value:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_8_color_value:Ljava/lang/String;

    .line 357
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_9_color_value:Ljava/lang/String;

    .line 360
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->disabled_color_value:Ljava/lang/String;

    .line 363
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->success_color_value:Ljava/lang/String;

    .line 366
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->warning_color_value:Ljava/lang/String;

    .line 369
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->critical_color_value:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accent(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "accent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->accent:Ljava/lang/String;

    return-object p0
.end method

.method public final base_1_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_1_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_1_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_2_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_2_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_2_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_3_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_3_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_3_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_4_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_4_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_4_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_5_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_5_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_5_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_6_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_6_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_6_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_7_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_7_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_7_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_8_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_8_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_8_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_9_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "base_9_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_9_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;
    .locals 22

    move-object/from16 v0, p0

    .line 468
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;

    .line 469
    iget-object v2, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->style:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;

    .line 470
    iget-object v3, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->primary:Ljava/lang/String;

    .line 471
    iget-object v4, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary:Ljava/lang/String;

    .line 472
    iget-object v5, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->accent:Ljava/lang/String;

    .line 473
    iget-object v6, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_1_color_value:Ljava/lang/String;

    .line 474
    iget-object v7, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_2_color_value:Ljava/lang/String;

    .line 475
    iget-object v8, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_3_color_value:Ljava/lang/String;

    .line 476
    iget-object v9, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_4_color_value:Ljava/lang/String;

    .line 477
    iget-object v10, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_5_color_value:Ljava/lang/String;

    .line 478
    iget-object v11, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_6_color_value:Ljava/lang/String;

    .line 479
    iget-object v12, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_7_color_value:Ljava/lang/String;

    .line 480
    iget-object v13, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_8_color_value:Ljava/lang/String;

    .line 481
    iget-object v14, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->base_9_color_value:Ljava/lang/String;

    .line 482
    iget-object v15, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->disabled_color_value:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 483
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->success_color_value:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 484
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->warning_color_value:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 485
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->critical_color_value:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 486
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    .line 487
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v20

    move-object/from16 v21, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v21

    .line 468
    invoke-direct/range {v1 .. v20}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final critical_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "critical_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->critical_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final disabled_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "disabled_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->disabled_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final primary(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "primary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->primary:Ljava/lang/String;

    return-object p0
.end method

.method public final secondary(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "secondary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary:Ljava/lang/String;

    return-object p0
.end method

.method public final secondary_button_background_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "secondary_button_background_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final style(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->style:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Style;

    return-object p0
.end method

.method public final success_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "success_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->success_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final warning_color_value(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;
    .locals 1

    const-string v0, "warning_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiAppThemeConfig$Builder;->warning_color_value:Ljava/lang/String;

    return-object p0
.end method
