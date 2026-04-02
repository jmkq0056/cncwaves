.class public Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_0;
.super Lcom/sun/jna/Structure;
.source "LMAccess.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lgrui0_name"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LOCALGROUP_INFO_0"
.end annotation


# instance fields
.field public lgrui0_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 50
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 51
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_0;->read()V

    return-void
.end method
