.class public Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO;
.super Lcom/sun/jna/Structure;
.source "DsGetDC.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "DomainControllerName",
        "DomainControllerAddress",
        "DomainControllerAddressType",
        "DomainGuid",
        "DomainName",
        "DnsForestName",
        "Flags",
        "DcSiteName",
        "ClientSiteName"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DsGetDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DOMAIN_CONTROLLER_INFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;
    }
.end annotation


# instance fields
.field public ClientSiteName:Ljava/lang/String;

.field public DcSiteName:Ljava/lang/String;

.field public DnsForestName:Ljava/lang/String;

.field public DomainControllerAddress:Ljava/lang/String;

.field public DomainControllerAddressType:I

.field public DomainControllerName:Ljava/lang/String;

.field public DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public DomainName:Ljava/lang/String;

.field public Flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 126
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 127
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO;->read()V

    return-void
.end method
