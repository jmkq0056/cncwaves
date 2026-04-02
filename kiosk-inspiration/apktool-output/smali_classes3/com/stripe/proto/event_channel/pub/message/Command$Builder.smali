.class public final Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Command.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0013J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0013J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0013R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        "()V",
        "cancel_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CancelPayload;",
        "collect_inputs_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        "collect_payment_method_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "confirm_payment_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;",
        "display_payload",
        "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;",
        "metadata",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
        "payment_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "reader_id",
        "",
        "refund_payment_payload",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "setup_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;",
        "stripe_account",
        "stripe_ephemeral_key",
        "trace_id",
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
.field public cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

.field public collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

.field public collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

.field public confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

.field public display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

.field public metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

.field public payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

.field public reader_id:Ljava/lang/String;

.field public refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

.field public setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

.field public stripe_account:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public trace_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->trace_id:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_account:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->reader_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/Command;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/Command;
    .locals 15

    .line 434
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Command;

    .line 435
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->trace_id:Ljava/lang/String;

    .line 436
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 437
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_account:Ljava/lang/String;

    .line 438
    iget-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 439
    iget-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 440
    iget-object v6, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 441
    iget-object v7, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 442
    iget-object v8, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 443
    iget-object v9, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 444
    iget-object v10, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 445
    iget-object v11, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 446
    iget-object v12, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->reader_id:Ljava/lang/String;

    .line 447
    iget-object v13, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 448
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v14

    .line 434
    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/event_channel/pub/message/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cancel_payload(Lcom/stripe/proto/event_channel/pub/message/CancelPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 353
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 356
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 358
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final collect_inputs_payload(Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 401
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 402
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 403
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 404
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 405
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 406
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final collect_payment_method_payload(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    const/4 p1, 0x0

    .line 424
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 425
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 428
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 429
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 430
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    return-object p0
.end method

.method public final confirm_payment_intent_payload(Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    const/4 p1, 0x0

    .line 412
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 413
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 414
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 415
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 416
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 417
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 418
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final display_payload(Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 377
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 378
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 379
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 380
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 381
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 382
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final metadata(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    return-object p0
.end method

.method public final payment_intent_payload(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    const/4 p1, 0x0

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 342
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 343
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 344
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 346
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_payment_payload(Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 389
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 390
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 391
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 392
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 393
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 394
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final setup_intent_payload(Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 365
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 366
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 367
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 368
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 369
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 370
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    return-object p0
.end method

.method public final stripe_account(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 1

    const-string v0, "stripe_account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_account:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final trace_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 1

    const-string v0, "trace_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->trace_id:Ljava/lang/String;

    return-object p0
.end method
