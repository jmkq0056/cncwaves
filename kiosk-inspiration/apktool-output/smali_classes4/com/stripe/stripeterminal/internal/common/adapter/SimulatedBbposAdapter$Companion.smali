.class public final Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;
.super Ljava/lang/Object;
.source "SimulatedBbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;",
        "",
        "()V",
        "CONNECTED_READER_BATTERY_INFO",
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "getCONNECTED_READER_BATTERY_INFO$adapter_release",
        "()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "CONNECTED_READER_LOW_BATTERY_INFO",
        "getCONNECTED_READER_LOW_BATTERY_INFO$adapter_release",
        "SLEEP_QUANTUM_MS",
        "",
        "UPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION",
        "",
        "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
        "getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$adapter_release",
        "()Ljava/util/List;",
        "adapter_release"
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

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONNECTED_READER_BATTERY_INFO$adapter_release()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 1

    .line 306
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->access$getCONNECTED_READER_BATTERY_INFO$cp()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getCONNECTED_READER_LOW_BATTERY_INFO$adapter_release()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 1

    .line 312
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->access$getCONNECTED_READER_LOW_BATTERY_INFO$cp()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$adapter_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
            ">;"
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;->access$getUPDATE_STATES_WITH_DISALLOWED_OFFLINE_CONNECTION$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
