.class public Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Revision",
        "Sbz1",
        "Control",
        "Owner",
        "Group",
        "Sacl",
        "Dacl"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SECURITY_DESCRIPTOR_RELATIVE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE$ByReference;
    }
.end annotation


# instance fields
.field public Control:S

.field private DACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

.field public Dacl:I

.field private GROUP:Lcom/sun/jna/platform/win32/WinNT$PSID;

.field public Group:I

.field private OWNER:Lcom/sun/jna/platform/win32/WinNT$PSID;

.field public Owner:I

.field public Revision:B

.field private SACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

.field public Sacl:I

.field public Sbz1:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2587
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2597
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2601
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2602
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->setMembers()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 2591
    new-instance v0, Lcom/sun/jna/Memory;

    array-length v1, p1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2592
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    const/4 v7, 0x0

    array-length v8, p1

    const-wide/16 v4, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 2593
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->setMembers()V

    return-void
.end method

.method private final setMembers()V
    .locals 4

    .line 2622
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->read()V

    .line 2623
    iget v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Dacl:I

    if-eqz v0, :cond_0

    .line 2624
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$ACL;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget v2, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Dacl:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$ACL;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->DACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

    .line 2626
    :cond_0
    iget v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Sacl:I

    if-eqz v0, :cond_1

    .line 2627
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$ACL;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget v2, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Sacl:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$ACL;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->SACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

    .line 2629
    :cond_1
    iget v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Group:I

    if-eqz v0, :cond_2

    .line 2630
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget v2, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Group:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->GROUP:Lcom/sun/jna/platform/win32/WinNT$PSID;

    .line 2632
    :cond_2
    iget v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Owner:I

    if-eqz v0, :cond_3

    .line 2633
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    iget v2, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Owner:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->OWNER:Lcom/sun/jna/platform/win32/WinNT$PSID;

    :cond_3
    return-void
.end method


# virtual methods
.method public getDiscretionaryACL()Lcom/sun/jna/platform/win32/WinNT$ACL;
    .locals 1

    .line 2614
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->DACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

    return-object v0
.end method

.method public getGroup()Lcom/sun/jna/platform/win32/WinNT$PSID;
    .locals 1

    .line 2610
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->GROUP:Lcom/sun/jna/platform/win32/WinNT$PSID;

    return-object v0
.end method

.method public getOwner()Lcom/sun/jna/platform/win32/WinNT$PSID;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->OWNER:Lcom/sun/jna/platform/win32/WinNT$PSID;

    return-object v0
.end method

.method public getSystemACL()Lcom/sun/jna/platform/win32/WinNT$ACL;
    .locals 1

    .line 2618
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->SACL:Lcom/sun/jna/platform/win32/WinNT$ACL;

    return-object v0
.end method
