.class public interface abstract Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;
.super Ljava/lang/Object;
.source "CollectInputsResultInternal.kt"

# interfaces
.implements Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;,
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;,
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;,
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;,
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;,
        Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0006\u0006\u0007\u0008\t\n\u000bR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0001\u0006\u000c\r\u000e\u000f\u0010\u0011\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;",
        "errorMessage",
        "",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "ApplicationError",
        "CommunicationError",
        "InvalidParameter",
        "MerchantCancelled",
        "Timeout",
        "Unsupported",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$ApplicationError;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$CommunicationError;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$InvalidParameter;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$MerchantCancelled;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Timeout;",
        "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal$Failure$Unsupported;",
        "jackrabbitclient_release"
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
.method public abstract getErrorMessage()Ljava/lang/String;
.end method
