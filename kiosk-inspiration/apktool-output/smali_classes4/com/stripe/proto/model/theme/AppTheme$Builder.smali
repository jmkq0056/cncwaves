.class public final Lcom/stripe/proto/model/theme/AppTheme$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AppTheme.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/theme/AppTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/theme/AppTheme;",
        "Lcom/stripe/proto/model/theme/AppTheme$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/theme/AppTheme$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/theme/AppTheme;",
        "()V",
        "dark_mode_theme",
        "Lcom/stripe/proto/model/theme/DeviceTheme;",
        "light_mode_theme",
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
.field public dark_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;

.field public light_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/stripe/proto/model/theme/AppTheme$Builder;->build()Lcom/stripe/proto/model/theme/AppTheme;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/theme/AppTheme;
    .locals 4

    .line 105
    new-instance v0, Lcom/stripe/proto/model/theme/AppTheme;

    .line 106
    iget-object v1, p0, Lcom/stripe/proto/model/theme/AppTheme$Builder;->light_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;

    .line 107
    iget-object v2, p0, Lcom/stripe/proto/model/theme/AppTheme$Builder;->dark_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;

    .line 108
    invoke-virtual {p0}, Lcom/stripe/proto/model/theme/AppTheme$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/theme/AppTheme;-><init>(Lcom/stripe/proto/model/theme/DeviceTheme;Lcom/stripe/proto/model/theme/DeviceTheme;Lokio/ByteString;)V

    return-object v0
.end method

.method public final dark_mode_theme(Lcom/stripe/proto/model/theme/DeviceTheme;)Lcom/stripe/proto/model/theme/AppTheme$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/stripe/proto/model/theme/AppTheme$Builder;->dark_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;

    return-object p0
.end method

.method public final light_mode_theme(Lcom/stripe/proto/model/theme/DeviceTheme;)Lcom/stripe/proto/model/theme/AppTheme$Builder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/stripe/proto/model/theme/AppTheme$Builder;->light_mode_theme:Lcom/stripe/proto/model/theme/DeviceTheme;

    return-object p0
.end method
