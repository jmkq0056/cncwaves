.class public Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;
.super Lcom/sun/jna/Structure;
.source "DsGetDC.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "NetbiosDomainName",
        "DnsDomainName",
        "Flags",
        "ParentIndex",
        "TrustType",
        "TrustAttributes",
        "DomainSid",
        "DomainGuid"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/DsGetDC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DS_DOMAIN_TRUSTS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS$ByReference;
    }
.end annotation


# instance fields
.field public DnsDomainName:Ljava/lang/String;

.field public DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

.field public Flags:I

.field public NetbiosDomainName:Ljava/lang/String;

.field public ParentIndex:I

.field public TrustAttributes:I

.field public TrustType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 233
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 237
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 238
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->read()V

    return-void
.end method
