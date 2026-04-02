.class public abstract Lcom/sun/jna/platform/win32/Netapi32Util;
.super Ljava/lang/Object;
.source "Netapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;,
        Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;,
        Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;,
        Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;,
        Lcom/sun/jna/platform/win32/Netapi32Util$User;,
        Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUserLocalGroups()[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 1

    const/4 v0, 0x2

    .line 344
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Secur32Util;->getUserNameEx(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getUserLocalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    move-result-object v0

    return-object v0
.end method

.method public static getDC()Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;
    .locals 7

    .line 494
    new-instance v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;-><init>()V

    .line 495
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Netapi32;->DsGetDcName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/Guid$GUID;Ljava/lang/String;ILcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;)I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;-><init>()V

    .line 500
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DomainControllerAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->address:Ljava/lang/String;

    .line 501
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DomainControllerAddressType:I

    iput v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->addressType:I

    .line 502
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->ClientSiteName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->clientSiteName:Ljava/lang/String;

    .line 503
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DnsForestName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->dnsForestName:Ljava/lang/String;

    .line 504
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->domainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 505
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DomainName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->domainName:Ljava/lang/String;

    .line 506
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->Flags:I

    iput v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->flags:I

    .line 507
    iget-object v1, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->DomainControllerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Netapi32Util$DomainController;->name:Ljava/lang/String;

    .line 508
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    iget-object v2, v6, Lcom/sun/jna/platform/win32/DsGetDC$PDOMAIN_CONTROLLER_INFO;->dci:Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/DsGetDC$DOMAIN_CONTROLLER_INFO$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 510
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 497
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public static getDCName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {v0, v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getDCName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDCName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 121
    :try_start_0
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-interface {v1, p1, p0, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetGetDCName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p0

    if-nez p0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 128
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 123
    :cond_1
    :try_start_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 127
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 130
    :cond_2
    throw p0
.end method

.method public static getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 172
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 173
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 176
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-interface {v2, p0, v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetGetJoinInformation(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 181
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 178
    :cond_2
    :try_start_1
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 183
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 184
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 189
    :cond_3
    throw p0
.end method

.method public static getDomainTrusts()[Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getDomainTrusts(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;

    move-result-object v0

    return-object v0
.end method

.method public static getDomainTrusts(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;
    .locals 8

    .line 632
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 633
    new-instance v1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 634
    sget-object v2, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/16 v3, 0x3f

    invoke-interface {v2, p0, v3, v1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->DsEnumerateDomainTrusts(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_7

    .line 640
    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    .line 643
    new-instance v2, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;-><init>(Lcom/sun/jna/Pointer;)V

    .line 644
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    new-array v0, v0, [Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;

    invoke-virtual {v2, v0}, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;

    check-cast v0, [Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;

    .line 645
    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 646
    new-instance v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;-><init>()V

    .line 647
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DnsDomainName:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 648
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DnsDomainName:Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->DnsDomainName:Ljava/lang/String;

    .line 650
    :cond_0
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->NetbiosDomainName:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 651
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->NetbiosDomainName:Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->NetbiosDomainName:Ljava/lang/String;

    .line 653
    :cond_1
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    .line 654
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    if-eqz v7, :cond_2

    .line 655
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainSid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    invoke-static {v7}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->DomainSidString:Ljava/lang/String;

    .line 657
    :cond_2
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 658
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    if-eqz v7, :cond_3

    .line 659
    iget-object v7, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->DomainGuid:Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-static {v7}, Lcom/sun/jna/platform/win32/Ole32Util;->getStringFromGUID(Lcom/sun/jna/platform/win32/Guid$GUID;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->DomainGuidString:Ljava/lang/String;

    .line 661
    :cond_3
    iget v5, v5, Lcom/sun/jna/platform/win32/DsGetDC$DS_DOMAIN_TRUSTS;->Flags:I

    invoke-static {v6, v5}, Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;->access$002(Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;I)I

    .line 662
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 666
    :cond_4
    new-array v0, v3, [Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$DomainTrust;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_5

    return-object p0

    .line 670
    :cond_5
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception p0

    .line 668
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 670
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 672
    :cond_6
    throw p0

    .line 637
    :cond_7
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static getGlobalGroups()[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getGlobalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 8

    .line 253
    new-instance v3, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v3}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 254
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 255
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 257
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Netapi32;->NetGroupEnum(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_3

    .line 260
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_3

    .line 264
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 267
    new-instance v0, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;-><init>(Lcom/sun/jna/Pointer;)V

    .line 268
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;

    .line 269
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 270
    new-instance v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;-><init>()V

    .line 271
    iget-object v7, v5, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;->grpi1_name:Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;->name:Ljava/lang/String;

    .line 272
    iget-object v5, v5, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_1;->grpi1_comment:Ljava/lang/String;

    iput-object v5, v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;->comment:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_0
    new-array v0, v1, [Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_2

    .line 280
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_2
    :goto_1
    return-object p0

    .line 261
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 279
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_4

    .line 280
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 285
    :cond_4
    throw p0
.end method

.method public static getJoinStatus()I
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getJoinStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getJoinStatus(Ljava/lang/String;)I
    .locals 3

    .line 147
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 148
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 151
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-interface {v2, p0, v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetGetJoinInformation(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 155
    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    return p0

    .line 153
    :cond_2
    :try_start_1
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 157
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 163
    :cond_3
    throw p0
.end method

.method public static getLocalGroups()[Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getLocalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;
    .locals 8

    .line 206
    new-instance v3, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v3}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 207
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 208
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 210
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Netapi32;->NetLocalGroupEnum(Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_3

    .line 211
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_3

    .line 215
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 218
    new-instance v0, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;-><init>(Lcom/sun/jna/Pointer;)V

    .line 219
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;

    .line 220
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 221
    new-instance v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;-><init>()V

    .line 222
    iget-object v7, v5, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;->lgrui1_name:Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;->name:Ljava/lang/String;

    .line 223
    iget-object v5, v5, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;->lgrui1_comment:Ljava/lang/String;

    iput-object v5, v6, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;->comment:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_0
    new-array v0, v1, [Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_2

    .line 231
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_2
    :goto_1
    return-object p0

    .line 212
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 230
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_4

    .line 231
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 236
    :cond_4
    throw p0
.end method

.method public static getUserGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getUserGroups(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    move-result-object p0

    return-object p0
.end method

.method public static getUserGroups(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 8

    .line 412
    new-instance v4, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 413
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 414
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 416
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v2, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Netapi32;->NetUserGetGroups(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_4

    .line 423
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 426
    new-instance p1, Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;-><init>(Lcom/sun/jna/Pointer;)V

    .line 427
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;

    check-cast p1, [Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;

    .line 428
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 429
    new-instance v5, Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/Netapi32Util$Group;-><init>()V

    .line 430
    iget-object v6, v3, Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;->grui0_name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 431
    iget-object v3, v3, Lcom/sun/jna/platform/win32/LMAccess$GROUP_USERS_INFO_0;->grui0_name:Ljava/lang/String;

    iput-object v3, v5, Lcom/sun/jna/platform/win32/Netapi32Util$Group;->name:Ljava/lang/String;

    .line 433
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_1
    new-array p1, v0, [Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_3

    .line 440
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 442
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_3
    :goto_1
    return-object p0

    .line 420
    :cond_4
    :try_start_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 439
    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_5

    .line 440
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 442
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 445
    :cond_5
    throw p0
.end method

.method public static getUserInfo(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;
    .locals 1

    .line 676
    invoke-static {}, Lcom/sun/jna/platform/win32/Netapi32Util;->getDCName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;
    .locals 3

    .line 680
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 682
    :try_start_0
    sget-object v1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/16 v2, 0x17

    invoke-interface {v1, p1, p0, v2, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetUserGetInfo(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 684
    new-instance p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;-><init>(Lcom/sun/jna/Pointer;)V

    .line 685
    new-instance p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;-><init>()V

    .line 686
    iget-object v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_comment:Ljava/lang/String;

    iput-object v1, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->comment:Ljava/lang/String;

    .line 687
    iget v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_flags:I

    iput v1, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->flags:I

    .line 688
    iget-object v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_full_name:Ljava/lang/String;

    iput-object v1, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->fullName:Ljava/lang/String;

    .line 689
    iget-object v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_name:Ljava/lang/String;

    iput-object v1, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->name:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_user_sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    if-eqz v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_user_sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    invoke-static {v1}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->sidString:Ljava/lang/String;

    .line 693
    :cond_0
    iget-object p0, p0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_23;->usri23_user_sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    iput-object p0, p1, Lcom/sun/jna/platform/win32/Netapi32Util$UserInfo;->sid:Lcom/sun/jna/platform/win32/WinNT$PSID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p0, v1, :cond_1

    .line 700
    sget-object p0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    :cond_1
    return-object p1

    .line 696
    :cond_2
    :try_start_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 699
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p1, v1, :cond_3

    .line 700
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    .line 702
    :cond_3
    throw p0
.end method

.method public static getUserLocalGroups(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 1

    const/4 v0, 0x0

    .line 353
    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getUserLocalGroups(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    move-result-object p0

    return-object p0
.end method

.method public static getUserLocalGroups(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    .locals 9

    .line 363
    new-instance v5, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 364
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 365
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 367
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Netapi32;->NetUserGetLocalGroups(Ljava/lang/String;Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_4

    .line 373
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 375
    new-instance p1, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;-><init>(Lcom/sun/jna/Pointer;)V

    .line 376
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;

    check-cast p1, [Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;

    .line 377
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 378
    new-instance v4, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;-><init>()V

    .line 379
    iget-object v6, v3, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;->lgrui0_name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 380
    iget-object v3, v3, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_USERS_INFO_0;->lgrui0_name:Ljava/lang/String;

    iput-object v3, v4, Lcom/sun/jna/platform/win32/Netapi32Util$LocalGroup;->name:Ljava/lang/String;

    .line 382
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    new-array p1, v0, [Lcom/sun/jna/platform/win32/Netapi32Util$Group;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$Group;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_3

    .line 388
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 390
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_3
    :goto_1
    return-object p0

    .line 371
    :cond_4
    :try_start_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 387
    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq p1, v0, :cond_5

    .line 388
    sget-object p1, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 390
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 393
    :cond_5
    throw p0
.end method

.method public static getUsers()[Lcom/sun/jna/platform/win32/Netapi32Util$User;
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Netapi32Util;->getUsers(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$User;

    move-result-object v0

    return-object v0
.end method

.method public static getUsers(Ljava/lang/String;)[Lcom/sun/jna/platform/win32/Netapi32Util$User;
    .locals 9

    .line 302
    new-instance v4, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 303
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 304
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 306
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Netapi32;->NetUserEnum(Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_4

    .line 310
    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_4

    .line 314
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 317
    new-instance v0, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;-><init>(Lcom/sun/jna/Pointer;)V

    .line 318
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;

    check-cast v0, [Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;

    .line 319
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    .line 320
    new-instance v6, Lcom/sun/jna/platform/win32/Netapi32Util$User;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/Netapi32Util$User;-><init>()V

    .line 321
    iget-object v7, v5, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;->usri1_name:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 322
    iget-object v5, v5, Lcom/sun/jna/platform/win32/LMAccess$USER_INFO_1;->usri1_name:Ljava/lang/String;

    iput-object v5, v6, Lcom/sun/jna/platform/win32/Netapi32Util$User;->name:Ljava/lang/String;

    .line 324
    :cond_0
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    :cond_1
    new-array v0, v1, [Lcom/sun/jna/platform/win32/Netapi32Util$User;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Netapi32Util$User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_3

    .line 331
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 333
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :cond_3
    :goto_1
    return-object p0

    .line 311
    :cond_4
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 330
    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    if-eq v0, v1, :cond_5

    .line 331
    sget-object v0, Lcom/sun/jna/platform/win32/Netapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Netapi32;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Netapi32;->NetApiBufferFree(Lcom/sun/jna/Pointer;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 336
    :cond_5
    throw p0
.end method
