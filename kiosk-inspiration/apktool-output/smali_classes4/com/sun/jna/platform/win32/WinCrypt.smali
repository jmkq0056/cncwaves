.class public interface abstract Lcom/sun/jna/platform/win32/WinCrypt;
.super Ljava/lang/Object;
.source "WinCrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;,
        Lcom/sun/jna/platform/win32/WinCrypt$HCRYPTPROV_LEGACY;,
        Lcom/sun/jna/platform/win32/WinCrypt$HCRYPTMSG;,
        Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;,
        Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;,
        Lcom/sun/jna/platform/win32/WinCrypt$CryptGetSignerCertificateCallback;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_PARAM;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_KEY_PROV_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_BIT_BLOB;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ATTRIBUTE;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_ALGORITHM_IDENTIFIER;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRL_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRL_ENTRY;,
        Lcom/sun/jna/platform/win32/WinCrypt$CRL_CONTEXT;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_PUBLIC_KEY_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSIONS;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_EXTENSION;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_PARA;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_SIMPLE_CHAIN;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_STATUS;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_SERIALIZED_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_STRONG_SIGN_PARA;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_PARA;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_USAGE_MATCH;,
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_USAGE;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_LIST_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_CONTEXT;,
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_ELEMENT;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_REVOCATION_CRL_INFO;,
        Lcom/sun/jna/platform/win32/WinCrypt$CTL_ENTRY;,
        Lcom/sun/jna/platform/win32/WinCrypt$CERT_TRUST_STATUS;,
        Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;
    }
.end annotation


# static fields
.field public static final CERT_CHAIN_POLICY_BASE:I = 0x1

.field public static final CERT_CLOSE_STORE_CHECK_FLAG:I = 0x2

.field public static final CERT_CLOSE_STORE_FORCE_FLAG:I = 0x1

.field public static final CERT_COMPARE_NAME_STR_W:I = 0x8

.field public static final CERT_COMPARE_SHIFT:I = 0x10

.field public static final CERT_FIND_SUBJECT_STR:I = 0x80007

.field public static final CERT_FIND_SUBJECT_STR_W:I = 0x80007

.field public static final CERT_INFO_SUBJECT_FLAG:I = 0x7

.field public static final CERT_OID_NAME_STR:I = 0x2

.field public static final CERT_SIMPLE_NAME_STR:I = 0x1

.field public static final CERT_X500_NAME_STR:I = 0x3

.field public static final CERT_XML_NAME_STR:I = 0x4

.field public static final CRYPTPROTECT_AUDIT:I = 0x10

.field public static final CRYPTPROTECT_CRED_REGENERATE:I = 0x80

.field public static final CRYPTPROTECT_CRED_SYNC:I = 0x8

.field public static final CRYPTPROTECT_LOCAL_MACHINE:I = 0x4

.field public static final CRYPTPROTECT_NO_RECOVERY:I = 0x20

.field public static final CRYPTPROTECT_PROMPT_ON_PROTECT:I = 0x2

.field public static final CRYPTPROTECT_PROMPT_ON_UNPROTECT:I = 0x1

.field public static final CRYPTPROTECT_PROMPT_REQUIRE_STRONG:I = 0x10

.field public static final CRYPTPROTECT_PROMPT_RESERVED:I = 0x4

.field public static final CRYPTPROTECT_PROMPT_STRONG:I = 0x8

.field public static final CRYPTPROTECT_UI_FORBIDDEN:I = 0x1

.field public static final CRYPTPROTECT_VERIFY_PROTECTION:I = 0x40

.field public static final CRYPT_ASN_ENCODING:I = 0x1

.field public static final CRYPT_EXPORTABLE:I = 0x1

.field public static final CRYPT_E_ASN1_BADARGS:I = -0x7ff6cef7

.field public static final CRYPT_E_ASN1_BADPDU:I = -0x7ff6cef8

.field public static final CRYPT_E_ASN1_BADREAL:I = -0x7ff6cef6

.field public static final CRYPT_E_ASN1_BADTAG:I = -0x7ff6cef5

.field public static final CRYPT_E_ASN1_CHOICE:I = -0x7ff6cef4

.field public static final CRYPT_E_ASN1_CONSTRAINT:I = -0x7ff6cefb

.field public static final CRYPT_E_ASN1_CORRUPT:I = -0x7ff6cefd

.field public static final CRYPT_E_ASN1_EOD:I = -0x7ff6cefe

.field public static final CRYPT_E_ASN1_ERROR:I = -0x7ff6cf00

.field public static final CRYPT_E_ASN1_EXTENDED:I = -0x7ff6cdff

.field public static final CRYPT_E_ASN1_INTERNAL:I = -0x7ff6ceff

.field public static final CRYPT_E_ASN1_LARGE:I = -0x7ff6cefc

.field public static final CRYPT_E_ASN1_MEMORY:I = -0x7ff6cefa

.field public static final CRYPT_E_ASN1_NOEOD:I = -0x7ff6cdfe

.field public static final CRYPT_E_ASN1_NYI:I = -0x7ff6cecc

.field public static final CRYPT_E_ASN1_OVERFLOW:I = -0x7ff6cef9

.field public static final CRYPT_E_ASN1_PDU_TYPE:I = -0x7ff6cecd

.field public static final CRYPT_E_ASN1_RULE:I = -0x7ff6cef3

.field public static final CRYPT_E_ASN1_UTF8:I = -0x7ff6cef2

.field public static final CRYPT_MACHINE_KEYSET:I = 0x20

.field public static final CRYPT_NDR_ENCODING:I = 0x2

.field public static final CRYPT_USER_KEYSET:I = 0x1000

.field public static final CRYPT_USER_PROTECTED:I = 0x2

.field public static final HCCE_CURRENT_USER:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

.field public static final HCCE_LOCAL_MACHINE:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

.field public static final HCCE_SERIAL_LOCAL_MACHINE:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

.field public static final PKCS12_ALLOW_OVERWRITE_KEY:I = 0x4000

.field public static final PKCS12_ALWAYS_CNG_KSP:I = 0x200

.field public static final PKCS12_INCLUDE_EXTENDED_PROPERTIES:I = 0x10

.field public static final PKCS12_NO_PERSIST_KEY:I = 0x8000

.field public static final PKCS12_PREFER_CNG_KSP:I = 0x100

.field public static final PKCS_7_ASN_ENCODING:I = 0x10000

.field public static final PKCS_7_NDR_ENCODING:I = 0x20000

.field public static final PP_CLIENT_HWND:I = 0x1

.field public static final USAGE_MATCH_TYPE_AND:I = 0x0

.field public static final USAGE_MATCH_TYPE_OR:I = 0x1

.field public static final X509_ASN_ENCODING:I = 0x1

.field public static final X509_NDR_ENCODING:I = 0x2

.field public static final szOID_RSA_SHA1RSA:Ljava/lang/String; = "1.2.840.113549.1.1.5"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1466
    new-instance v0, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinCrypt;->HCCE_CURRENT_USER:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    .line 1474
    new-instance v0, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinCrypt;->HCCE_LOCAL_MACHINE:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    .line 1482
    new-instance v0, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sun/jna/Pointer;->createConstant(I)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;-><init>(Lcom/sun/jna/Pointer;)V

    sput-object v0, Lcom/sun/jna/platform/win32/WinCrypt;->HCCE_SERIAL_LOCAL_MACHINE:Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;

    return-void
.end method
