.class public interface abstract Lcom/sun/jna/platform/win32/Crypt32;
.super Ljava/lang/Object;
.source "Crypt32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lcom/sun/jna/platform/win32/Crypt32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Crypt32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Crypt32;

    sput-object v0, Lcom/sun/jna/platform/win32/Crypt32;->INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;

    return-void
.end method


# virtual methods
.method public abstract CertAddEncodedCertificateToSystemStore(Ljava/lang/String;Lcom/sun/jna/Pointer;I)Z
.end method

.method public abstract CertCloseStore(Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;I)Z
.end method

.method public abstract CertFindCertificateInStore(Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;IIILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;)Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT$ByReference;
.end method

.method public abstract CertFreeCertificateChain(Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;)V
.end method

.method public abstract CertFreeCertificateContext(Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;)Z
.end method

.method public abstract CertGetCertificateChain(Lcom/sun/jna/platform/win32/WinCrypt$HCERTCHAINENGINE;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CONTEXT;Lcom/sun/jna/platform/win32/WinBase$FILETIME;Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_PARA;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract CertNameToStr(ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;ILcom/sun/jna/Pointer;I)I
.end method

.method public abstract CertOpenSystemStore(Lcom/sun/jna/Pointer;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;
.end method

.method public abstract CertVerifyCertificateChainPolicy(Lcom/sun/jna/platform/win32/WTypes$LPSTR;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_CONTEXT;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_PARA;Lcom/sun/jna/platform/win32/WinCrypt$CERT_CHAIN_POLICY_STATUS;)Z
.end method

.method public abstract CryptProtectData(Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;)Z
.end method

.method public abstract CryptSignMessage(Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_SIGN_MESSAGE_PARA;ZI[Lcom/sun/jna/Pointer;[ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract CryptUnprotectData(Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;)Z
.end method

.method public abstract CryptVerifyMessageSignature(Lcom/sun/jna/platform/win32/WinCrypt$CRYPT_VERIFY_MESSAGE_PARA;ILcom/sun/jna/Pointer;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z
.end method

.method public abstract PFXImportCertStore(Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/platform/win32/WTypes$LPWSTR;I)Lcom/sun/jna/platform/win32/WinCrypt$HCERTSTORE;
.end method
