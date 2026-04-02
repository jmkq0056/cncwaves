.class public interface abstract Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;
.super Ljava/lang/Object;
.source "RefundParameters.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/RefundParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;,
        Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0007\u0008R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "Charge",
        "PaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;",
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


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method
