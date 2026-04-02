.class final Lcom/stripe/bbpos/bbdevice/ccc059zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aaa000:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aaa001:Ljava/lang/String;

.field private aaa002:Ljava/lang/String;

.field private aaa003:Ljava/lang/String;

.field private aaa004:Ljava/lang/String;

.field private aaa005:Ljava/lang/String;

.field private aaa006:Ljava/lang/String;

.field private aaa007:Ljava/lang/String;

.field private aaa008:Ljava/lang/String;

.field private aaa009:Ljava/lang/String;

.field private aaa010:Ljava/lang/String;

.field private aaa011:Ljava/lang/String;

.field private aaa012:Ljava/lang/String;

.field private aaa013:Ljava/lang/String;

.field private aaa014:Ljava/lang/String;

.field private aaa015:Ljava/lang/String;

.field private aaa016:Ljava/lang/String;

.field private aaa017:Ljava/lang/String;

.field private aaa018:Ljava/lang/String;

.field private aaa019:Ljava/lang/String;

.field private aaa020:Ljava/lang/String;

.field private aaa021:Ljava/lang/String;

.field private aaa022:Ljava/lang/String;

.field private aaa023:Ljava/lang/String;

.field private aaa024:Ljava/lang/String;

.field private aaa025:Ljava/lang/String;

.field private aaa026:Ljava/lang/String;

.field private aaa027:Ljava/lang/String;

.field private aaa028:Ljava/lang/String;

.field private aaa029:Ljava/lang/String;

.field private aaa030:Ljava/lang/String;

.field private aaa031:Ljava/lang/String;

.field private aaa032:Ljava/lang/String;

.field private aaa033:Ljava/lang/String;

.field private aaa034:Ljava/lang/String;

.field private aaa035:Ljava/lang/String;

.field private aaa036:Ljava/lang/String;

.field private aaa037:Ljava/lang/String;

.field private aaa038:Ljava/lang/String;

.field private aaa039:Ljava/lang/String;

.field private aaa040:Ljava/lang/String;

.field private aaa041:Ljava/lang/String;

.field private aaa042:Ljava/lang/String;

.field private aaa043:Ljava/lang/String;

.field private aaa044:Ljava/lang/String;

.field private aaa045:Ljava/lang/String;

.field private aaa046:Ljava/lang/String;

.field private aaa047:Ljava/lang/String;

.field private aaa048:Ljava/lang/String;

.field private aaa049:Z

.field private aaa050:I

.field private aaa051:Ljava/lang/String;

.field private aaa052:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "isNewProtocol"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa049:Z

    .line 8
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa000:Ljava/util/Hashtable;

    .line 9
    const-string v1, "productID"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa001:Ljava/lang/String;

    .line 10
    const-string v1, "vendorID"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa002:Ljava/lang/String;

    .line 11
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa003:Ljava/lang/String;

    .line 12
    const-string v1, "pinKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa004:Ljava/lang/String;

    .line 13
    const-string v1, "pinKsn1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa005:Ljava/lang/String;

    .line 14
    const-string v1, "pinKsn2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa006:Ljava/lang/String;

    .line 15
    const-string v1, "pinKsn3"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa007:Ljava/lang/String;

    .line 16
    const-string v1, "pinKsn4"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa008:Ljava/lang/String;

    .line 17
    const-string v1, "trackKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa009:Ljava/lang/String;

    .line 18
    const-string v1, "trackKsn1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa010:Ljava/lang/String;

    .line 19
    const-string v1, "trackKsn2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa011:Ljava/lang/String;

    .line 20
    const-string v1, "trackKsn3"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa012:Ljava/lang/String;

    .line 21
    const-string v1, "trackKsn4"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa013:Ljava/lang/String;

    .line 22
    const-string v1, "emvKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa014:Ljava/lang/String;

    .line 23
    const-string v1, "emvKsn1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa015:Ljava/lang/String;

    .line 24
    const-string v1, "emvKsn2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa016:Ljava/lang/String;

    .line 25
    const-string v1, "emvKsn3"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa017:Ljava/lang/String;

    .line 26
    const-string v1, "emvKsn4"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa018:Ljava/lang/String;

    .line 27
    const-string v1, "macKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa019:Ljava/lang/String;

    .line 28
    const-string v1, "macKsn1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa020:Ljava/lang/String;

    .line 29
    const-string v1, "macKsn2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa021:Ljava/lang/String;

    .line 30
    const-string v1, "macKsn3"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa022:Ljava/lang/String;

    .line 31
    const-string v1, "macKsn4"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa023:Ljava/lang/String;

    .line 32
    const-string v1, "nfcKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa024:Ljava/lang/String;

    .line 33
    const-string v1, "messageKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa025:Ljava/lang/String;

    .line 34
    const-string v1, "cmacKsn"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa026:Ljava/lang/String;

    .line 35
    const-string v1, "firmwareVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa027:Ljava/lang/String;

    .line 36
    const-string v1, "terminalSettingVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa030:Ljava/lang/String;

    .line 37
    const-string v1, "deviceSettingVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa031:Ljava/lang/String;

    .line 38
    const-string v1, "mainProcessorVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa029:Ljava/lang/String;

    .line 39
    const-string v1, "coprocessorVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa028:Ljava/lang/String;

    .line 40
    const-string v1, "formatID"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa032:Ljava/lang/String;

    .line 41
    const-string v1, "isSupportedTrack1"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa033:Ljava/lang/String;

    .line 42
    const-string v1, "isSupportedTrack2"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa034:Ljava/lang/String;

    .line 43
    const-string v1, "isSupportedTrack3"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa035:Ljava/lang/String;

    .line 44
    const-string v1, "isSupportedNfc"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa036:Ljava/lang/String;

    .line 45
    const-string v1, "bootloaderVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa037:Ljava/lang/String;

    .line 46
    const-string v1, "isUsbConnected"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa038:Ljava/lang/String;

    .line 47
    const-string v1, "isCharging"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa039:Ljava/lang/String;

    .line 48
    const-string v2, "batteryLevel"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa040:Ljava/lang/String;

    .line 49
    const-string v2, "batteryPercentage"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa041:Ljava/lang/String;

    .line 50
    const-string v2, "hardwareVersion"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa042:Ljava/lang/String;

    .line 51
    const-string v2, "csn"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa043:Ljava/lang/String;

    .line 52
    const-string v2, "coprocessorBootloaderVersion"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa044:Ljava/lang/String;

    .line 53
    const-string v2, "serialNumber"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa045:Ljava/lang/String;

    .line 54
    const-string v2, "modelName"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa046:Ljava/lang/String;

    .line 55
    const-string v2, "mcuInfo"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa047:Ljava/lang/String;

    .line 56
    const-string v2, "bID"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa048:Ljava/lang/String;

    .line 57
    const-string v2, "firmwareID"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa051:Ljava/lang/String;

    .line 58
    const-string v2, "hardwareID"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa052:Ljava/lang/String;

    .line 62
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa049:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 74
    :goto_0
    iput v2, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa050:I

    if-eqz p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa041:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x64

    .line 76
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa050:I

    goto :goto_1

    .line 79
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa041:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa050:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method


# virtual methods
.method aaa000()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc059zz;->aaa000:Ljava/util/Hashtable;

    return-object v0
.end method
