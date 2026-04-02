.class public final Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BatteryPercentageChanged.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;",
        "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;",
        "()V",
        "battery_percentage",
        "",
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
.field public battery_percentage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final battery_percentage(F)Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;
    .locals 0

    .line 86
    iput p1, p0, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;->battery_percentage:F

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;->build()Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;
    .locals 3

    .line 90
    new-instance v0, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;

    .line 91
    iget v1, p0, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;->battery_percentage:F

    .line 92
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 90
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/model/observability/schema/power/BatteryPercentageChanged;-><init>(FLokio/ByteString;)V

    return-object v0
.end method
