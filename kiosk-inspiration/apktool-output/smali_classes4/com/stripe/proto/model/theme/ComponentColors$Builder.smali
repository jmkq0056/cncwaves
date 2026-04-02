.class public final Lcom/stripe/proto/model/theme/ComponentColors$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ComponentColors.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/theme/ComponentColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/theme/ComponentColors;",
        "Lcom/stripe/proto/model/theme/ComponentColors$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/theme/ComponentColors$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/theme/ComponentColors;",
        "()V",
        "accent_color_value",
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
        "primary_color_value",
        "secondary_button_background_color_value",
        "secondary_color_value",
        "success_color_value",
        "warning_color_value",
        "build",
        "internal_release"
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
.field public accent_color_value:Ljava/lang/String;

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

.field public primary_color_value:Ljava/lang/String;

.field public secondary_button_background_color_value:Ljava/lang/String;

.field public secondary_color_value:Ljava/lang/String;

.field public success_color_value:Ljava/lang/String;

.field public warning_color_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 302
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_1_color_value:Ljava/lang/String;

    .line 307
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_2_color_value:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_3_color_value:Ljava/lang/String;

    .line 313
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_4_color_value:Ljava/lang/String;

    .line 316
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_5_color_value:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_6_color_value:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_7_color_value:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_8_color_value:Ljava/lang/String;

    .line 328
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_9_color_value:Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->accent_color_value:Ljava/lang/String;

    .line 334
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->primary_color_value:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_color_value:Ljava/lang/String;

    .line 340
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->disabled_color_value:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->success_color_value:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->warning_color_value:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->critical_color_value:Ljava/lang/String;

    .line 352
    iput-object v0, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accent_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "accent_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->accent_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_1_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_1_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_1_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_2_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_2_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_2_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_3_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_3_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_3_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_4_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_4_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_4_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_5_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_5_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_5_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_6_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_6_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_6_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_7_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_7_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_7_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_8_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_8_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_8_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final base_9_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "base_9_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_9_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->build()Lcom/stripe/proto/model/theme/ComponentColors;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/theme/ComponentColors;
    .locals 21

    move-object/from16 v0, p0

    .line 439
    new-instance v1, Lcom/stripe/proto/model/theme/ComponentColors;

    .line 440
    iget-object v2, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_1_color_value:Ljava/lang/String;

    .line 441
    iget-object v3, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_2_color_value:Ljava/lang/String;

    .line 442
    iget-object v4, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_3_color_value:Ljava/lang/String;

    .line 443
    iget-object v5, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_4_color_value:Ljava/lang/String;

    .line 444
    iget-object v6, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_5_color_value:Ljava/lang/String;

    .line 445
    iget-object v7, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_6_color_value:Ljava/lang/String;

    .line 446
    iget-object v8, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_7_color_value:Ljava/lang/String;

    .line 447
    iget-object v9, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_8_color_value:Ljava/lang/String;

    .line 448
    iget-object v10, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->base_9_color_value:Ljava/lang/String;

    .line 449
    iget-object v11, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->accent_color_value:Ljava/lang/String;

    .line 450
    iget-object v12, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->primary_color_value:Ljava/lang/String;

    .line 451
    iget-object v13, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_color_value:Ljava/lang/String;

    .line 452
    iget-object v14, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->disabled_color_value:Ljava/lang/String;

    .line 453
    iget-object v15, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->success_color_value:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 454
    iget-object v1, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->warning_color_value:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 455
    iget-object v1, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->critical_color_value:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 456
    iget-object v1, v0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    .line 457
    invoke-virtual {v0}, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v19

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    .line 439
    invoke-direct/range {v1 .. v19}, Lcom/stripe/proto/model/theme/ComponentColors;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final critical_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "critical_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->critical_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final disabled_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "disabled_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->disabled_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final primary_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "primary_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->primary_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final secondary_button_background_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "secondary_button_background_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_button_background_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final secondary_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "secondary_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->secondary_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final success_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "success_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->success_color_value:Ljava/lang/String;

    return-object p0
.end method

.method public final warning_color_value(Ljava/lang/String;)Lcom/stripe/proto/model/theme/ComponentColors$Builder;
    .locals 1

    const-string v0, "warning_color_value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iput-object p1, p0, Lcom/stripe/proto/model/theme/ComponentColors$Builder;->warning_color_value:Ljava/lang/String;

    return-object p0
.end method
