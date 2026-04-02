.class public Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;
.super Ljava/lang/Object;
.source "Netapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Netapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainTrust"
.end annotation


# instance fields
.field public DnsDomainName:Ljava/lang/String;

.field public DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public DomainGuidString:Ljava/lang/String;

.field public DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID;

.field public DomainSidString:Ljava/lang/String;

.field public NetbiosDomainName:Ljava/lang/String;

.field private flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;I)I
    .locals 0

    .line 518
    iput p1, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    return p1
.end method


# virtual methods
.method public isInForest()Z
    .locals 2

    .line 559
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInbound()Z
    .locals 1

    .line 611
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNativeMode()Z
    .locals 1

    .line 600
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutbound()Z
    .locals 1

    .line 570
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 591
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 581
    iget v0, p0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
