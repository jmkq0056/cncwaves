.class public Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;
.super Lcom/sun/jna/Structure;
.source "LMAccess.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "lgrui1_name",
        "lgrui1_comment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LOCALGROUP_INFO_1"
.end annotation


# instance fields
.field public lgrui1_comment:Ljava/lang/String;

.field public lgrui1_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 65
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 66
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMAccess$LOCALGROUP_INFO_1;->read()V

    return-void
.end method
