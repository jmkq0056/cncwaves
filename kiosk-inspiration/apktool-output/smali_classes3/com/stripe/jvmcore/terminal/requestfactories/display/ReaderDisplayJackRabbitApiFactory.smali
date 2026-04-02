.class public interface abstract Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;
.super Ljava/lang/Object;
.source "ReaderDisplayJackRabbitApiFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;",
        "",
        "clearReaderDisplay",
        "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;",
        "setReaderDisplay",
        "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "terminal-requestfactories"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract clearReaderDisplay()Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;
.end method

.method public abstract setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;
.end method
