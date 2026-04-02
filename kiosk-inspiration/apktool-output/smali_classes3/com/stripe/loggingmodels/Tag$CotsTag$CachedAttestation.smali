.class public final Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;
.super Lcom/stripe/loggingmodels/Tag;
.source "Tag.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Tag$CotsTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedAttestation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;",
        "Lcom/stripe/loggingmodels/Tag;",
        "usedCache",
        "",
        "(Z)V",
        "value",
        "",
        "getValue",
        "()Ljava/lang/String;",
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
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 123
    const-string v0, "cached_attestation"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stripe/loggingmodels/Tag;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;->value:Ljava/lang/String;

    return-object v0
.end method
