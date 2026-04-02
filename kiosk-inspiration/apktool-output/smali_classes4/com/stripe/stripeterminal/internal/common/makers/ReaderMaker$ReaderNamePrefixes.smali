.class public final Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;
.super Ljava/lang/Object;
.source "ReaderMaker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReaderNamePrefixes"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;",
        "",
        "()V",
        "Chipper1x",
        "",
        "",
        "getChipper1x",
        "()Ljava/util/List;",
        "Chipper2x",
        "getChipper2x",
        "StripeM2",
        "getStripeM2",
        "Wisecube",
        "getWisecube",
        "Wisepad3",
        "getWisepad3",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Chipper1x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Chipper2x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

.field private static final StripeM2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Wisecube:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Wisepad3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;

    const/4 v0, 0x2

    .line 188
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Shopi"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 189
    const-string v2, "CHB1"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 187
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Chipper1x:Ljava/util/List;

    .line 192
    const-string v1, "CHB20"

    .line 191
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Chipper2x:Ljava/util/List;

    const/4 v1, 0x4

    .line 195
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CHB30"

    aput-object v2, v1, v3

    .line 196
    const-string v2, "CHB31"

    aput-object v2, v1, v4

    .line 197
    const-string v2, "STRM2"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    .line 200
    const-string v5, "Stripe M2"

    aput-object v5, v1, v2

    .line 194
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->StripeM2:Ljava/util/List;

    .line 203
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Tap &"

    aput-object v1, v0, v3

    .line 204
    const-string v1, "CHB6"

    aput-object v1, v0, v4

    .line 202
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Wisecube:Ljava/util/List;

    .line 207
    const-string v0, "WPC3"

    .line 206
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Wisepad3:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChipper1x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Chipper1x:Ljava/util/List;

    return-object v0
.end method

.method public final getChipper2x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Chipper2x:Ljava/util/List;

    return-object v0
.end method

.method public final getStripeM2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->StripeM2:Ljava/util/List;

    return-object v0
.end method

.method public final getWisecube()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Wisecube:Ljava/util/List;

    return-object v0
.end method

.method public final getWisepad3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker$ReaderNamePrefixes;->Wisepad3:Ljava/util/List;

    return-object v0
.end method
