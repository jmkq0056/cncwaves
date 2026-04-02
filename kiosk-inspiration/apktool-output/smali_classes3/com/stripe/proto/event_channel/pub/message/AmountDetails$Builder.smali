.class public final Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AmountDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/AmountDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
        "()V",
        "amount_discount",
        "",
        "Ljava/lang/Long;",
        "surcharge",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;",
        "tip",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;",
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
.field public amount_discount:Ljava/lang/Long;

.field public surcharge:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;

.field public tip:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final amount_discount(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->amount_discount:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/AmountDetails;
    .locals 5

    .line 124
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->tip:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;

    .line 126
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->surcharge:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;

    .line 127
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->amount_discount:Ljava/lang/Long;

    .line 128
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 124
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;-><init>(Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final surcharge(Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;)Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->surcharge:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$SurchargeDetails;

    return-object p0
.end method

.method public final tip(Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;)Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/AmountDetails$Builder;->tip:Lcom/stripe/proto/event_channel/pub/message/AmountDetails$TipDetails;

    return-object p0
.end method
