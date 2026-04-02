.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapToPayUxConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapToPayUxConfiguration.kt\ncom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;",
        "",
        "()V",
        "indicator",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;",
        "position",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;",
        "build",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;",
        "public_release"
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
.field private indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

.field private position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;->DEFAULT:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    .line 87
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition$Default;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;
    .locals 3

    .line 104
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    invoke-direct {v0, v1, v2}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)V

    return-object v0
.end method

.method public final indicator(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;
    .locals 1

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->indicator:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZoneIndicator;

    return-object p0
.end method

.method public final position(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;
    .locals 1

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Manual$Builder;->position:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZonePosition;

    return-object p0
.end method
