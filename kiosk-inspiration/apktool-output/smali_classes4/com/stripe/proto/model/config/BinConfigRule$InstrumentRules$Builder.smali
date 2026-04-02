.class public final Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BinConfigRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;",
        "()V",
        "allow_pin_bypass",
        "",
        "Ljava/lang/Boolean;",
        "forbidden",
        "process_offline",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;",
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
.field public allow_pin_bypass:Ljava/lang/Boolean;

.field public forbidden:Ljava/lang/Boolean;

.field public process_offline:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final allow_pin_bypass(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->allow_pin_bypass:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 451
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->build()Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;
    .locals 5

    .line 485
    new-instance v0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;

    .line 486
    iget-object v1, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->forbidden:Ljava/lang/Boolean;

    .line 487
    iget-object v2, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->process_offline:Ljava/lang/Boolean;

    .line 488
    iget-object v3, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->allow_pin_bypass:Ljava/lang/Boolean;

    .line 489
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 485
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final forbidden(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->forbidden:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final process_offline(Ljava/lang/Boolean;)Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/stripe/proto/model/config/BinConfigRule$InstrumentRules$Builder;->process_offline:Ljava/lang/Boolean;

    return-object p0
.end method
