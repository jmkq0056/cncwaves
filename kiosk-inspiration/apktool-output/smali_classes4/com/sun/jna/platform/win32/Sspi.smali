.class public interface abstract Lcom/sun/jna/platform/win32/Sspi;
.super Ljava/lang/Object;
.source "Sspi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SEC_WINNT_AUTH_IDENTITY;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_Flags;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_NegotiationInfo;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_Lifespan;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_SessionKey;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_Sizes;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_PackageInfo;,
        Lcom/sun/jna/platform/win32/Sspi$SecPkgInfo;,
        Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;,
        Lcom/sun/jna/platform/win32/Sspi$TimeStamp;,
        Lcom/sun/jna/platform/win32/Sspi$SECURITY_INTEGER;,
        Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;,
        Lcom/sun/jna/platform/win32/Sspi$SecBuffer;,
        Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;,
        Lcom/sun/jna/platform/win32/Sspi$CredHandle;,
        Lcom/sun/jna/platform/win32/Sspi$PSecHandle;,
        Lcom/sun/jna/platform/win32/Sspi$SecHandle;
    }
.end annotation


# static fields
.field public static final ISC_REQ_ALLOCATE_MEMORY:I = 0x100

.field public static final ISC_REQ_CONFIDENTIALITY:I = 0x10

.field public static final ISC_REQ_CONNECTION:I = 0x800

.field public static final ISC_REQ_DELEGATE:I = 0x1

.field public static final ISC_REQ_EXTENDED_ERROR:I = 0x4000

.field public static final ISC_REQ_INTEGRITY:I = 0x10000

.field public static final ISC_REQ_MUTUAL_AUTH:I = 0x2

.field public static final ISC_REQ_REPLAY_DETECT:I = 0x4

.field public static final ISC_REQ_SEQUENCE_DETECT:I = 0x8

.field public static final ISC_REQ_STREAM:I = 0x8000

.field public static final MAX_TOKEN_SIZE:I = 0x3000

.field public static final SECBUFFER_DATA:I = 0x1

.field public static final SECBUFFER_EMPTY:I = 0x0

.field public static final SECBUFFER_TOKEN:I = 0x2

.field public static final SECBUFFER_VERSION:I = 0x0

.field public static final SECPKG_ATTR_ACCESS_TOKEN:I = 0x12

.field public static final SECPKG_ATTR_AUTHENTICATION_ID:I = 0x14

.field public static final SECPKG_ATTR_AUTHORITY:I = 0x6

.field public static final SECPKG_ATTR_CLIENT_SPECIFIED_TARGET:I = 0x1b

.field public static final SECPKG_ATTR_CONTEXT_DELETED:I = 0x21

.field public static final SECPKG_ATTR_CREDENTIAL_NAME:I = 0x10

.field public static final SECPKG_ATTR_DCE_INFO:I = 0x3

.field public static final SECPKG_ATTR_ENDPOINT_BINDINGS:I = 0x1a

.field public static final SECPKG_ATTR_FLAGS:I = 0xe

.field public static final SECPKG_ATTR_KEY_INFO:I = 0x5

.field public static final SECPKG_ATTR_LAST_CLIENT_TOKEN_STATUS:I = 0x1e

.field public static final SECPKG_ATTR_LIFESPAN:I = 0x2

.field public static final SECPKG_ATTR_LOGOFF_TIME:I = 0x15

.field public static final SECPKG_ATTR_NAMES:I = 0x1

.field public static final SECPKG_ATTR_NATIVE_NAMES:I = 0xd

.field public static final SECPKG_ATTR_NEGOTIATION_INFO:I = 0xc

.field public static final SECPKG_ATTR_NEGO_KEYS:I = 0x16

.field public static final SECPKG_ATTR_NEGO_PKG_INFO:I = 0x1f

.field public static final SECPKG_ATTR_NEGO_STATUS:I = 0x20

.field public static final SECPKG_ATTR_PACKAGE_INFO:I = 0xa

.field public static final SECPKG_ATTR_PASSWORD_EXPIRY:I = 0x8

.field public static final SECPKG_ATTR_PROMPTING_NEEDED:I = 0x18

.field public static final SECPKG_ATTR_PROTO_INFO:I = 0x7

.field public static final SECPKG_ATTR_SESSION_KEY:I = 0x9

.field public static final SECPKG_ATTR_SIZES:I = 0x0

.field public static final SECPKG_ATTR_STREAM_SIZES:I = 0x4

.field public static final SECPKG_ATTR_SUBJECT_SECURITY_ATTRIBUTES:I = 0x80

.field public static final SECPKG_ATTR_TARGET:I = 0x13

.field public static final SECPKG_ATTR_TARGET_INFORMATION:I = 0x11

.field public static final SECPKG_ATTR_UNIQUE_BINDINGS:I = 0x19

.field public static final SECPKG_ATTR_USER_FLAGS:I = 0xb

.field public static final SECPKG_ATTR_USE_VALIDATED:I = 0xf

.field public static final SECPKG_CRED_ATTR_NAMES:I = 0x1

.field public static final SECPKG_CRED_INBOUND:I = 0x1

.field public static final SECPKG_CRED_OUTBOUND:I = 0x2

.field public static final SECPKG_FLAG_ACCEPT_WIN32_NAME:I = 0x200

.field public static final SECPKG_FLAG_APPCONTAINER_CHECKS:I = 0x800000

.field public static final SECPKG_FLAG_APPCONTAINER_PASSTHROUGH:I = 0x400000

.field public static final SECPKG_FLAG_ASCII_BUFFERS:I = 0x4000

.field public static final SECPKG_FLAG_CLIENT_ONLY:I = 0x40

.field public static final SECPKG_FLAG_CONNECTION:I = 0x10

.field public static final SECPKG_FLAG_DATAGRAM:I = 0x8

.field public static final SECPKG_FLAG_DELEGATION:I = 0x20000

.field public static final SECPKG_FLAG_EXTENDED_ERROR:I = 0x80

.field public static final SECPKG_FLAG_FRAGMENT:I = 0x8000

.field public static final SECPKG_FLAG_GSS_COMPATIBLE:I = 0x1000

.field public static final SECPKG_FLAG_IMPERSONATION:I = 0x100

.field public static final SECPKG_FLAG_INTEGRITY:I = 0x1

.field public static final SECPKG_FLAG_LOGON:I = 0x2000

.field public static final SECPKG_FLAG_MULTI_REQUIRED:I = 0x20

.field public static final SECPKG_FLAG_MUTUAL_AUTH:I = 0x10000

.field public static final SECPKG_FLAG_NEGOTIABLE:I = 0x800

.field public static final SECPKG_FLAG_NEGOTIABLE2:I = 0x200000

.field public static final SECPKG_FLAG_NEGO_EXTENDER:I = 0x100000

.field public static final SECPKG_FLAG_PRIVACY:I = 0x2

.field public static final SECPKG_FLAG_RESTRICTED_TOKENS:I = 0x80000

.field public static final SECPKG_FLAG_STREAM:I = 0x400

.field public static final SECPKG_FLAG_TOKEN_ONLY:I = 0x4

.field public static final SECPKG_NEGOTIATION_COMPLETE:I = 0x0

.field public static final SECPKG_NEGOTIATION_DIRECT:I = 0x3

.field public static final SECPKG_NEGOTIATION_IN_PROGRESS:I = 0x2

.field public static final SECPKG_NEGOTIATION_OPTIMISTIC:I = 0x1

.field public static final SECPKG_NEGOTIATION_TRY_MULTICRED:I = 0x4

.field public static final SECQOP_WRAP_NO_ENCRYPT:I = -0x7fffffff

.field public static final SECQOP_WRAP_OOB_DATA:I = 0x40000000

.field public static final SECURITY_NATIVE_DREP:I = 0x10

.field public static final SECURITY_NETWORK_DREP:I = 0x0

.field public static final SEC_WINNT_AUTH_IDENTITY_ANSI:I = 0x1

.field public static final SEC_WINNT_AUTH_IDENTITY_UNICODE:I = 0x2
