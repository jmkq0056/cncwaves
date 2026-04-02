.class public Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;
.super Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "flags",
        "efficiencyClass",
        "reserved",
        "groupCount",
        "groupMask"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROCESSOR_RELATIONSHIP"
.end annotation


# instance fields
.field public efficiencyClass:B

.field public flags:B

.field public groupCount:S

.field public groupMask:[Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

.field public reserved:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3077
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>()V

    const/16 v0, 0x14

    .line 3051
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->reserved:[B

    const/4 v0, 0x1

    .line 3075
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->groupMask:[Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 3081
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x14

    .line 3051
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->reserved:[B

    const/4 p1, 0x1

    .line 3075
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->groupMask:[Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    return-void
.end method


# virtual methods
.method public read()V
    .locals 1

    .line 3086
    const-string v0, "groupCount"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->readField(Ljava/lang/String;)Ljava/lang/Object;

    .line 3087
    iget-short v0, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->groupCount:S

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$PROCESSOR_RELATIONSHIP;->groupMask:[Lcom/sun/jna/platform/win32/WinNT$GROUP_AFFINITY;

    .line 3088
    invoke-super {p0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;->read()V

    return-void
.end method
