.class public Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;
.super Ljava/lang/Object;
.source "Netapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Netapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainController"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public addressType:I

.field public clientSiteName:Ljava/lang/String;

.field public dnsForestName:Ljava/lang/String;

.field public domainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public domainName:Ljava/lang/String;

.field public flags:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
