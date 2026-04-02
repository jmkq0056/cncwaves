.class public interface abstract Lcom/sun/jna/platform/win32/WinRas;
.super Ljava/lang/Object;
.source "WinRas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RasDialFunc2;,
        Lcom/sun/jna/platform/win32/WinRas$RASENTRY;,
        Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;,
        Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS;,
        Lcom/sun/jna/platform/win32/WinRas$RASCONNSTATUS;,
        Lcom/sun/jna/platform/win32/WinRas$RASTUNNELENDPOINT;,
        Lcom/sun/jna/platform/win32/WinRas$RASPPPIP;,
        Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;,
        Lcom/sun/jna/platform/win32/WinRas$RASIPV4ADDR;,
        Lcom/sun/jna/platform/win32/WinRas$RAS_STATS;,
        Lcom/sun/jna/platform/win32/WinRas$RASCONN;,
        Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS;,
        Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS;,
        Lcom/sun/jna/platform/win32/WinRas$RASDEVSPECIFICINFO;,
        Lcom/sun/jna/platform/win32/WinRas$RASEAPINFO;
    }
.end annotation


# static fields
.field public static final DNLEN:I = 0xf

.field public static final ERROR_BUFFER_TOO_SMALL:I = 0x25b

.field public static final ERROR_CANNOT_FIND_PHONEBOOK_ENTRY:I = 0x26f

.field public static final MAX_PATH:I = 0x104

.field public static final PWLEN:I = 0x100

.field public static final RASCM_Domain:I = 0x4

.field public static final RASCM_Password:I = 0x2

.field public static final RASCM_UserName:I = 0x1

.field public static final RASCS_Connected:I = 0x2000

.field public static final RASCS_Disconnected:I = 0x2001

.field public static final RASDT_Modem:Ljava/lang/String; = "modem"

.field public static final RASTUNNELENDPOINT_IPv4:I = 0x1

.field public static final RASTUNNELENDPOINT_IPv6:I = 0x2

.field public static final RAS_MaxAreaCode:I = 0xa

.field public static final RAS_MaxCallbackNumber:I = 0x80

.field public static final RAS_MaxDeviceName:I = 0x80

.field public static final RAS_MaxDeviceType:I = 0x10

.field public static final RAS_MaxDnsSuffix:I = 0x100

.field public static final RAS_MaxEntryName:I = 0x100

.field public static final RAS_MaxFacilities:I = 0xc8

.field public static final RAS_MaxIpAddress:I = 0xf

.field public static final RAS_MaxPadType:I = 0x20

.field public static final RAS_MaxPhoneNumber:I = 0x80

.field public static final RAS_MaxUserData:I = 0xc8

.field public static final RAS_MaxX25Address:I = 0xc8

.field public static final UNLEN:I = 0x100
