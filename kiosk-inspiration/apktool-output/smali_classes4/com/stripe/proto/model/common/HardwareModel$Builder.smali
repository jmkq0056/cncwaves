.class public final Lcom/stripe/proto/model/common/HardwareModel$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "HardwareModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/common/HardwareModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "Lcom/stripe/proto/model/common/HardwareModel$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/HardwareModel$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/common/HardwareModel;",
        "()V",
        "bbpos_hardware",
        "Lcom/stripe/proto/model/common/BBPosHardware;",
        "cots_hardware",
        "Lcom/stripe/proto/model/common/COTSHardware;",
        "morph_hardware",
        "Lcom/stripe/proto/model/common/MorphHardware;",
        "pos_info",
        "Lcom/stripe/proto/model/common/POSInfo;",
        "simulated_hardware",
        "Lcom/stripe/proto/model/common/SimulatedHardware;",
        "sunmi_hardware",
        "Lcom/stripe/proto/model/common/SunmiHardware;",
        "unknown_hardware",
        "Lcom/stripe/proto/model/common/UnknownHardware;",
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

.field public cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

.field public morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

.field public pos_info:Lcom/stripe/proto/model/common/POSInfo;

.field public simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

.field public sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

.field public unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

.field public verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bbpos_hardware(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 247
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 248
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel$Builder;->build()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/common/HardwareModel;
    .locals 10

    .line 303
    new-instance v0, Lcom/stripe/proto/model/common/HardwareModel;

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 305
    iget-object v2, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 306
    iget-object v3, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 307
    iget-object v4, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 308
    iget-object v5, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 309
    iget-object v6, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 310
    iget-object v7, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 311
    iget-object v8, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    .line 312
    invoke-virtual {p0}, Lcom/stripe/proto/model/common/HardwareModel$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 303
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/common/HardwareModel;-><init>(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cots_hardware(Lcom/stripe/proto/model/common/COTSHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final morph_hardware(Lcom/stripe/proto/model/common/MorphHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 294
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 295
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 296
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 297
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    return-object p0
.end method

.method public final pos_info(Lcom/stripe/proto/model/common/POSInfo;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 234
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 235
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final simulated_hardware(Lcom/stripe/proto/model/common/SimulatedHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    const/4 p1, 0x0

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 259
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 260
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 263
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final sunmi_hardware(Lcom/stripe/proto/model/common/SunmiHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 284
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 285
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 286
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 287
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final unknown_hardware(Lcom/stripe/proto/model/common/UnknownHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 213
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 215
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method

.method public final verifone_hardware(Lcom/stripe/proto/model/common/VerifoneHardware;)Lcom/stripe/proto/model/common/HardwareModel$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    .line 223
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/model/common/HardwareModel$Builder;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    return-object p0
.end method
