.class public final Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CellPinning.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/CellPinning$CellPinningSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/CellPinning$CellPinningSpec;",
        "()V",
        "enforcement_mode",
        "Lcom/stripe/ext/CellPinning$EnforcementMode;",
        "entity_id_field",
        "",
        "routing_fallback",
        "Lcom/stripe/ext/CellPinning$RoutingFallback;",
        "routing_preference",
        "Lcom/stripe/ext/CellPinning$RoutingPreference;",
        "type",
        "Lcom/stripe/ext/CellPinning$CellType;",
        "build",
        "common_release"
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
.field public enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

.field public entity_id_field:Ljava/lang/String;

.field public routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

.field public routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

.field public type:Lcom/stripe/ext/CellPinning$CellType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->build()Lcom/stripe/ext/CellPinning$CellPinningSpec;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/CellPinning$CellPinningSpec;
    .locals 7

    .line 517
    new-instance v0, Lcom/stripe/ext/CellPinning$CellPinningSpec;

    .line 518
    iget-object v1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->type:Lcom/stripe/ext/CellPinning$CellType;

    .line 519
    iget-object v2, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->entity_id_field:Ljava/lang/String;

    .line 520
    iget-object v3, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    .line 521
    iget-object v4, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    .line 522
    iget-object v5, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    .line 523
    invoke-virtual {p0}, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 517
    invoke-direct/range {v0 .. v6}, Lcom/stripe/ext/CellPinning$CellPinningSpec;-><init>(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enforcement_mode(Lcom/stripe/ext/CellPinning$EnforcementMode;)Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->enforcement_mode:Lcom/stripe/ext/CellPinning$EnforcementMode;

    return-object p0
.end method

.method public final entity_id_field(Ljava/lang/String;)Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->entity_id_field:Ljava/lang/String;

    return-object p0
.end method

.method public final routing_fallback(Lcom/stripe/ext/CellPinning$RoutingFallback;)Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_fallback:Lcom/stripe/ext/CellPinning$RoutingFallback;

    return-object p0
.end method

.method public final routing_preference(Lcom/stripe/ext/CellPinning$RoutingPreference;)Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->routing_preference:Lcom/stripe/ext/CellPinning$RoutingPreference;

    return-object p0
.end method

.method public final type(Lcom/stripe/ext/CellPinning$CellType;)Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;->type:Lcom/stripe/ext/CellPinning$CellType;

    return-object p0
.end method
