.class public Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_2;
.super Lcom/sun/jna/Structure;
.source "LMAccess.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "grpi2_name",
        "grpi2_comment",
        "grpi2_group_id",
        "grpi2_attributes"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LMAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GROUP_INFO_2"
.end annotation


# instance fields
.field public grpi2_attributes:I

.field public grpi2_comment:Ljava/lang/String;

.field public grpi2_group_id:I

.field public grpi2_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 351
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 355
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    .line 356
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LMAccess$GROUP_INFO_2;->read()V

    return-void
.end method
