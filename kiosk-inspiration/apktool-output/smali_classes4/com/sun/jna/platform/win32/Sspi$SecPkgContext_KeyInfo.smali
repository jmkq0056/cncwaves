.class public Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sSignatureAlgorithmName",
        "sEncryptAlgorithmName",
        "KeySize",
        "SignatureAlgorithm",
        "EncryptAlgorithm"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecPkgContext_KeyInfo"
.end annotation


# instance fields
.field public EncryptAlgorithm:I

.field public KeySize:I

.field public SignatureAlgorithm:I

.field public sEncryptAlgorithmName:Lcom/sun/jna/Pointer;

.field public sSignatureAlgorithmName:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 936
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized free()V
    .locals 3

    monitor-enter p0

    .line 954
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v2}, Lcom/sun/jna/platform/win32/Secur32;->FreeContextBuffer(Lcom/sun/jna/Pointer;)I

    .line 956
    iput-object v1, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_1

    .line 959
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v2}, Lcom/sun/jna/platform/win32/Secur32;->FreeContextBuffer(Lcom/sun/jna/Pointer;)I

    .line 960
    iput-object v1, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getEncryptAlgorithmName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 948
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 950
    :cond_0
    :try_start_1
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sEncryptAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSignatureAlgorithmName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 941
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 943
    :cond_0
    :try_start_1
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgContext_KeyInfo;->sSignatureAlgorithmName:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
