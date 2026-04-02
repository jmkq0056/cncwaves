.class public Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;
.super Lcom/sun/jna/Structure;
.source "Winsvc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lpServiceName",
        "lpDisplayName",
        "ServiceStatusProcess"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winsvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ENUM_SERVICE_STATUS_PROCESS"
.end annotation


# instance fields
.field public ServiceStatusProcess:Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

.field public lpDisplayName:Ljava/lang/String;

.field public lpServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 885
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method
