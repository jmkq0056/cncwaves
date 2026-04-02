.class public Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_3;
.super Lcom/sun/jna/Structure;
.source "LMAccess.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "grpi3_name",
        "grpi3_comment",
        "grpi3_group_sid",
        "grpi3_attributes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GROUP_INFO_3"
.end annotation


# instance fields
.field public grpi3_attributes:I

.field public grpi3_comment:Ljava/lang/String;

.field public grpi3_group_sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

.field public grpi3_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 389
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 393
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 394
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_3;->read()V

    return-void
.end method
