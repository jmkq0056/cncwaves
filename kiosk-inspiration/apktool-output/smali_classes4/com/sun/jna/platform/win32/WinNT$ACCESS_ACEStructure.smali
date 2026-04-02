.class public abstract Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;
.super Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Mask",
        "SidStart"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ACCESS_ACEStructure"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public Mask:I

.field public SidStart:[B

.field psid:Lcom/sun/jna/platform/win32/WinNT$PSID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2665
    const-class v0, Lcom/sun/jna/platform/win32/WinNT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2677
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;-><init>()V

    const/4 v0, 0x4

    .line 2672
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    return-void
.end method

.method public constructor <init>(IBBLcom/sun/jna/platform/win32/WinNT$PSID;)V
    .locals 1

    .line 2681
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;-><init>()V

    const/4 v0, 0x4

    .line 2672
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    const/4 v0, 0x1

    .line 2682
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->calculateSize(Z)I

    .line 2683
    iput-byte p2, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->AceType:B

    .line 2684
    iput-byte p3, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->AceFlags:B

    .line 2685
    const-string p2, "SidStart"

    invoke-super {p0, p2}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->fieldOffset(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getBytes()[B

    move-result-object p3

    array-length p3, p3

    add-int/2addr p2, p3

    int-to-short p2, p2

    iput-short p2, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->AceSize:S

    .line 2686
    iput-object p4, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    .line 2687
    iput p1, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->Mask:I

    .line 2688
    invoke-virtual {p4}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    array-length p2, p2

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p3, p4, p2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    .line 2689
    iget-short p1, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->AceSize:S

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->allocateMemory(I)V

    .line 2690
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->write()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 2694
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x4

    .line 2672
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    .line 2695
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->read()V

    return-void
.end method


# virtual methods
.method public getSID()Lcom/sun/jna/platform/win32/WinNT$PSID;
    .locals 1

    .line 2703
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    return-object v0
.end method

.method public getSidString()Ljava/lang/String;
    .locals 1

    .line 2699
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-static {v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()V
    .locals 6

    .line 2725
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 2726
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->SidStart:[B

    .line 2728
    :cond_0
    invoke-super {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->read()V

    .line 2729
    const-string v0, "SidStart"

    invoke-super {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->fieldOffset(Ljava/lang/String;)I

    move-result v1

    .line 2730
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceSize:S

    invoke-super {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->fieldOffset(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v2, v0

    if-lez v2, :cond_1

    .line 2732
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>([B)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    return-void

    .line 2734
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    return-void
.end method

.method public write()V
    .locals 9

    .line 2711
    invoke-super {p0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->write()V

    .line 2712
    const-string v0, "SidStart"

    invoke-super {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->fieldOffset(Ljava/lang/String;)I

    move-result v1

    .line 2713
    iget-short v2, p0, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceSize:S

    invoke-super {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->fieldOffset(Ljava/lang/String;)I

    move-result v0

    sub-int v8, v2, v0

    .line 2714
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->psid:Lcom/sun/jna/platform/win32/WinNT$PSID;

    if-eqz v0, :cond_0

    .line 2716
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getBytes()[B

    move-result-object v6

    .line 2719
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    int-to-long v4, v1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sun/jna/Pointer;->write(J[BII)V

    :cond_0
    return-void
.end method
