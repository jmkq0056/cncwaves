.class public final Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;
.super Ljava/lang/Object;
.source "TapToPayUxConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapToPayUxConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapToPayUxConfiguration.kt\ncom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n1#2:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;",
        "",
        "()V",
        "error",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;",
        "primary",
        "success",
        "build",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;",
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
.field private error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

.field private primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

.field private success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    .line 181
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    .line 182
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;->INSTANCE:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color$Default;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-void
.end method


# virtual methods
.method public final build()Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;
    .locals 4

    .line 206
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme;-><init>(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)V

    return-object v0
.end method

.method public final error(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->error:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object p0
.end method

.method public final primary(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;
    .locals 1

    const-string v0, "primary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->primary:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object p0
.end method

.method public final success(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;)Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;
    .locals 1

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$ColorScheme$Builder;->success:Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration$Color;

    return-object p0
.end method
