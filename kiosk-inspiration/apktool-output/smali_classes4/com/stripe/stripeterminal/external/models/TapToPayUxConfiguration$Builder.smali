.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapToPayUxConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapToPayUxConfiguration.kt\ncom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;",
        "",
        "()V",
        "colors",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;",
        "darkMode",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;",
        "tapZone",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;",
        "build",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
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
.field private colors:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

.field private darkMode:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

.field private tapZone:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone$Default;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->tapZone:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    .line 34
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->colors:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    .line 35
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;->LIGHT:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->darkMode:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;
    .locals 4

    .line 58
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->tapZone:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->colors:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->darkMode:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;)V

    return-object v0
.end method

.method public final colors(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;
    .locals 1

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->colors:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    return-object p0
.end method

.method public final darkMode(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;
    .locals 1

    const-string v0, "darkMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->darkMode:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$DarkMode;

    return-object p0
.end method

.method public final tapZone(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;
    .locals 1

    const-string v0, "tapZone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Builder;->tapZone:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$TapZone;

    return-object p0
.end method
