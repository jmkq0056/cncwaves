.class public final Lcom/stripe/proto/model/common/DeployHardwareType$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeployHardwareType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/DeployHardwareType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/DeployHardwareType;",
        "Lcom/stripe/proto/model/common/DeployHardwareType$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/DeployHardwareType$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/DeployHardwareType;",
        "()V",
        "bbpos_hardware",
        "Lcom/stripe/proto/model/common/BBPosHardware;",
        "morph_hardware",
        "Lcom/stripe/proto/model/common/MorphHardware;",
        "sunmi_hardware",
        "Lcom/stripe/proto/model/common/SunmiHardware;",
        "verifone_hardware",
        "Lcom/stripe/proto/model/common/VerifoneHardware;",
        "build",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

.field public morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

.field public sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

.field public verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bbpos_hardware(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/proto/model/common/DeployHardwareType$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 150
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 151
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->build()Lcom/stripe/proto/model/common/DeployHardwareType;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/DeployHardwareType;
    .locals 6

    .line 171
    new-instance v0, Lcom/stripe/proto/model/common/DeployHardwareType;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 173
    iget-object v2, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 174
    iget-object v3, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 175
    iget-object v4, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    .line 176
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/common/DeployHardwareType;-><init>(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V

    return-object v0
.end method

.method public final morph_hardware(Lcom/stripe/proto/model/common/MorphHardware;)Lcom/stripe/proto/model/common/DeployHardwareType$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    return-object p0
.end method

.method public final sunmi_hardware(Lcom/stripe/proto/model/common/SunmiHardware;)Lcom/stripe/proto/model/common/DeployHardwareType$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 158
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 159
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final verifone_hardware(Lcom/stripe/proto/model/common/VerifoneHardware;)Lcom/stripe/proto/model/common/DeployHardwareType$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/model/common/DeployHardwareType$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method
