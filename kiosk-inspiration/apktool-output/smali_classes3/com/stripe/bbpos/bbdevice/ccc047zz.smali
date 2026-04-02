.class Lcom/stripe/bbpos/bbdevice/ccc047zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aaa000:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc047zz;->aaa000:Ljava/util/Random;

    return-void
.end method

.method static aaa000([B)V
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc047zz;->aaa000:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method
