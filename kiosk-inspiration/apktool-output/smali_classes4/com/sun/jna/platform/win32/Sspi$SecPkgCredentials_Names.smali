.class public Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;
.super Lcom/sun/jna/Structure;
.source "Sspi.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "sUserName"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Sspi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecPkgCredentials_Names"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names$ByReference;
    }
.end annotation


# instance fields
.field public sUserName:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 796
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized free()I
    .locals 2

    monitor-enter p0

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lcom/sun/jna/platform/win32/Secur32;->INSTANCE:Lcom/sun/jna/platform/win32/Secur32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Secur32;->FreeContextBuffer(Lcom/sun/jna/Pointer;)I

    move-result v0

    const/4 v1, 0x0

    .line 817
    iput-object v1, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    monitor-exit p0

    return v0

    .line 820
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getUserName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 804
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 806
    :cond_0
    :try_start_1
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Sspi$SecPkgCredentials_Names;->sUserName:Lcom/sun/jna/Pointer;

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
