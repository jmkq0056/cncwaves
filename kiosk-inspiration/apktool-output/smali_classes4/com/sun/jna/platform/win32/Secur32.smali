.class public interface abstract Lcom/sun/jna/platform/win32/Secur32;
.super Ljava/lang/Object;
.source "Secur32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Secur32$EXTENDED_NAME_FORMAT;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Secur32;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/sun/jna/platform/win32/Secur32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Secur32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Secur32;

    sput-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    return-void
.end method


# virtual methods
.method public abstract AcceptSecurityContext(Lcom/sun/jna/platform/win32/Sspi$CredHandle;Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;IILcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/Sspi$TimeStamp;)I
.end method

.method public abstract AcquireCredentialsHandle(Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Sspi$CredHandle;Lcom/sun/jna/platform/win32/Sspi$TimeStamp;)I
.end method

.method public abstract CompleteAuthToken(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;)I
.end method

.method public abstract DecryptMessage(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;ILcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract DeleteSecurityContext(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;)I
.end method

.method public abstract EncryptMessage(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;ILcom/sun/jna/platform/win32/Sspi$SecBufferDesc;I)I
.end method

.method public abstract EnumerateSecurityPackages(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;)I
.end method

.method public abstract FreeContextBuffer(Lcom/sun/jna/Pointer;)I
.end method

.method public abstract FreeCredentialsHandle(Lcom/sun/jna/platform/win32/Sspi$CredHandle;)I
.end method

.method public abstract GetUserNameEx(I[CLcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract ImpersonateSecurityContext(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;)I
.end method

.method public abstract InitializeSecurityContext(Lcom/sun/jna/platform/win32/Sspi$CredHandle;Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Ljava/lang/String;IIILcom/sun/jna/platform/win32/Sspi$SecBufferDesc;ILcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/Sspi$TimeStamp;)I
.end method

.method public abstract MakeSignature(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;ILcom/sun/jna/platform/win32/Sspi$SecBufferDesc;I)I
.end method

.method public abstract QueryContextAttributes(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;ILcom/sun/jna/Structure;)I
.end method

.method public abstract QueryCredentialsAttributes(Lcom/sun/jna/platform/win32/Sspi$CredHandle;ILcom/sun/jna/Structure;)I
.end method

.method public abstract QuerySecurityContextToken(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract QuerySecurityPackageInfo(Ljava/lang/String;Lcom/sun/jna/platform/win32/Sspi$PSecPkgInfo;)I
.end method

.method public abstract RevertSecurityContext(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;)I
.end method

.method public abstract VerifySignature(Lcom/sun/jna/platform/win32/Sspi$CtxtHandle;Lcom/sun/jna/platform/win32/Sspi$SecBufferDesc;ILcom/sun/jna/ptr/IntByReference;)I
.end method
