.class final Lcom/stripe/bbpos/bbdevice/ccc034zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aaa000:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final aaa001:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000:Ljava/util/Hashtable;

    .line 3
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001:[C

    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0108"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string v2, "0152"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v2, "0174"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string v2, "0218"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v2, "0262"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v2, "0324"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v2, "0352"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v2, "0392"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v2, "0410"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v2, "0548"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v2, "0600"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v2, "0646"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v2, "0704"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v2, "0800"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v2, "0940"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v2, "0950"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v2, "0952"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "0953"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v2, "0974"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v2, "0990"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0008"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v2, "0012"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v2, "0032"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v2, "0036"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v2, "0044"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v2, "0050"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v2, "0051"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "0052"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "0060"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v2, "0064"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v2, "0068"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "0072"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "0084"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "0090"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "0096"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "0104"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "0116"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "0124"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "0132"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v2, "0136"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "0144"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v2, "0156"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v2, "0170"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "0188"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v2, "0191"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v2, "0192"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v2, "0203"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v2, "0208"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v2, "0214"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "0222"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "0230"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v2, "0232"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v2, "0238"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v2, "0242"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v2, "0270"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "0292"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "0320"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "0328"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v2, "0332"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "0340"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v2, "0344"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "0348"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v2, "0356"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v2, "0360"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "0364"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "0376"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "0388"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "0398"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "0404"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "0408"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "0417"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "0418"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "0422"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "0426"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "0428"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "0430"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "0440"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "0446"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "0454"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v2, "0458"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "0462"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "0478"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "0480"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "0484"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "0496"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v2, "0498"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v2, "0504"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "0516"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "0524"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v2, "0532"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "0533"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "0554"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "0558"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "0566"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "0578"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v2, "0586"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "0590"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "0598"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "0604"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "0608"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "0634"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "0643"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "0654"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "0678"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "0682"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "0690"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "0694"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v2, "0702"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v2, "0706"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v2, "0710"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "0728"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "0748"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "0752"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "0756"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "0760"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "0764"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v2, "0776"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "0780"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "0784"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "0807"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "0818"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "0826"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "0834"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "0840"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "0858"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "0860"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "0882"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "0886"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "0901"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "0928"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "0931"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v2, "0932"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v2, "0934"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "0936"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "0937"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "0938"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "0941"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "0943"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "0944"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "0946"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "0947"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "0948"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "0949"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v2, "0951"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v2, "0967"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v2, "0968"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "0969"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "0970"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "0971"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "0972"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "0973"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "0975"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "0976"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v2, "0977"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v2, "0978"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "0979"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "0980"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v2, "0981"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "0984"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v2, "0985"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v2, "0986"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "0997"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "0998"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v2, "0933"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0048"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "0368"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "0400"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "0414"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "0434"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "0512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "0788"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static aaa000()Landroid/app/Activity;
    .locals 6

    const/4 v0, 0x0

    .line 2603
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2604
    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2605
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    .line 2606
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2608
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    return-object v0

    .line 2613
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2614
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2615
    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 2616
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2617
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2618
    const-string v1, "activity"

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2619
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2620
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method

.method static aaa000(I)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;
    .locals 1

    const/16 v0, 0x30

    if-ne p0, v0, :cond_0

    .line 2590
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    :cond_0
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1

    .line 2592
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 2594
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    :cond_2
    const/16 v0, 0x33

    if-ne p0, v0, :cond_3

    .line 2596
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    :cond_3
    const/16 v0, 0x34

    if-ne p0, v0, :cond_4

    .line 2598
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    :cond_4
    const/16 v0, 0x35

    if-ne p0, v0, :cond_5

    .line 2600
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0

    .line 2602
    :cond_5
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;

    return-object p0
.end method

.method static aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZI",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz;",
            "Z)",
            "Lcom/stripe/bbpos/bbdevice/ccc017zz;"
        }
    .end annotation

    .line 457
    new-instance p5, Lcom/stripe/bbpos/bbdevice/ccc017zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    const-string v1, ""

    invoke-direct {p5, v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc017zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p3, "invalid "

    if-eqz p4, :cond_3

    .line 462
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 463
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    if-eqz p7, :cond_0

    .line 465
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 467
    :cond_0
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Ljava/lang/String;)V

    return-object p5

    :cond_1
    move-object v1, p0

    .line 474
    :cond_2
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V

    .line 475
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Ljava/lang/String;)V

    return-object p5

    .line 478
    :cond_3
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    if-eqz p7, :cond_4

    .line 480
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 482
    :cond_4
    sget-object p0, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Ljava/lang/String;)V

    return-object p5

    .line 486
    :cond_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    invoke-virtual {p5, p1}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Ljava/lang/String;)V

    return-object p5

    :cond_6
    if-eqz p3, :cond_7

    return-object p5

    :cond_7
    const-string p0, " is missing"

    if-eqz p7, :cond_8

    .line 495
    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 497
    :cond_8
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    invoke-virtual {p5, p2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;)V

    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000(Ljava/lang/String;)V

    return-object p5
.end method

.method static aaa000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 2622
    instance-of v0, p0, Ljava/lang/Float;

    const-string v1, ""

    if-nez v0, :cond_0

    instance-of v2, p0, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_0
    const-string v2, "%f"

    if-eqz v0, :cond_1

    .line 2624
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2625
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 2626
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2628
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2631
    :cond_3
    :goto_0
    const-string p0, ","

    const-string v0, "."

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2634
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_5

    .line 2637
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    move v4, v2

    :goto_1
    if-eqz v4, :cond_5

    if-le v3, v0, :cond_4

    .line 2641
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_4

    .line 2642
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_1

    .line 2654
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2655
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_6

    .line 2656
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-class v0, [B

    const-string v1, "0"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v0, :cond_a

    .line 2
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3
    check-cast p0, Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/2addr p1, v4

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v6

    .line 13
    :cond_2
    instance-of p1, p0, [B

    if-eqz p1, :cond_3

    .line 14
    check-cast p0, [B

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_4

    .line 16
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_4
    instance-of p1, p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    if-eqz p1, :cond_3f

    .line 19
    check-cast p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    .line 20
    array-length p1, p0

    if-nez p1, :cond_5

    .line 21
    new-array p0, v5, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SPACE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object p1, p0, v3

    :cond_5
    move-object v0, v2

    move p1, v3

    .line 23
    :goto_1
    array-length v4, p0

    if-ge p1, v4, :cond_6

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc024zz;->aaa001:Ljava/util/Hashtable;

    aget-object v5, p0, p1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object v6

    .line 29
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x6

    if-le p0, p1, :cond_8

    .line 30
    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, p1, :cond_9

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    return-object v0

    .line 37
    :cond_a
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    const-string v7, "05"

    const-string v8, "04"

    const-string v9, "03"

    const-string v10, "02"

    const-string v11, "01"

    if-ne p1, v0, :cond_b

    .line 38
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    if-eqz p1, :cond_3f

    .line 39
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 41
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    return-object v6

    .line 67
    :pswitch_0
    const-string p0, "0A"

    return-object p0

    .line 68
    :pswitch_1
    const-string p0, "09"

    return-object p0

    .line 69
    :pswitch_2
    const-string p0, "07"

    return-object p0

    .line 70
    :pswitch_3
    const-string p0, "06"

    return-object p0

    :pswitch_4
    return-object v7

    :pswitch_5
    return-object v9

    :pswitch_6
    return-object v8

    :pswitch_7
    return-object v10

    :pswitch_8
    return-object v11

    .line 106
    :cond_b
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    const-string v12, "00"

    if-ne p1, v0, :cond_e

    .line 107
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    if-eqz p1, :cond_3f

    .line 108
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    .line 110
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa001:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_d

    if-eq p0, v4, :cond_c

    return-object v6

    :cond_c
    return-object v11

    :cond_d
    return-object v12

    .line 126
    :cond_e
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_13

    .line 128
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 130
    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    return-object v6

    .line 134
    :cond_f
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_12

    .line 135
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_3
    if-gez p0, :cond_10

    return-object v6

    .line 144
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 145
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    rem-int/2addr p1, v4

    if-eqz p1, :cond_11

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_11
    return-object p0

    :cond_12
    return-object v6

    .line 149
    :cond_13
    const-class v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    if-ne p1, v0, :cond_17

    .line 150
    instance-of p1, p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    if-eqz p1, :cond_3f

    .line 152
    check-cast p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    .line 153
    array-length p1, p0

    if-nez p1, :cond_14

    .line 154
    new-array p0, v5, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SPACE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object p1, p0, v3

    :cond_14
    move-object p1, v2

    .line 156
    :goto_5
    array-length v0, p0

    if-ge v3, v0, :cond_15

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc024zz;->aaa000:Ljava/util/Hashtable;

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 159
    :cond_15
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v6

    :cond_16
    return-object p1

    .line 164
    :cond_17
    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_1b

    .line 165
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 167
    :try_start_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_18

    return-object v11

    :cond_18
    return-object v12

    :catch_1
    return-object v6

    .line 175
    :cond_19
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_3f

    .line 176
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    return-object v11

    :cond_1a
    return-object v12

    .line 182
    :cond_1b
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    if-ne p1, v0, :cond_1e

    .line 183
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    if-eqz p1, :cond_3f

    .line 184
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    .line 186
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa002:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_1d

    if-eq p0, v4, :cond_1c

    return-object v6

    :cond_1c
    return-object v11

    :cond_1d
    return-object v12

    .line 202
    :cond_1e
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne p1, v0, :cond_23

    .line 203
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    if-eqz p1, :cond_3f

    .line 204
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    .line 206
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa003:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_22

    if-eq p0, v4, :cond_21

    if-eq p0, v2, :cond_20

    if-eq p0, v1, :cond_1f

    return-object v6

    :cond_1f
    return-object v9

    :cond_20
    return-object v10

    :cond_21
    return-object v11

    :cond_22
    return-object v12

    .line 236
    :cond_23
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    if-ne p1, v0, :cond_28

    .line 237
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    if-eqz p1, :cond_3f

    .line 238
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    .line 240
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa004:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_27

    if-eq p0, v4, :cond_26

    if-eq p0, v2, :cond_25

    if-eq p0, v1, :cond_24

    return-object v6

    :cond_24
    return-object v9

    :cond_25
    return-object v10

    :cond_26
    return-object v11

    :cond_27
    return-object v12

    .line 270
    :cond_28
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    if-ne p1, v0, :cond_2b

    .line 271
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    if-eqz p1, :cond_3f

    .line 272
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    .line 274
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa005:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_2a

    if-eq p0, v4, :cond_29

    return-object v6

    :cond_29
    return-object v11

    :cond_2a
    return-object v12

    .line 290
    :cond_2b
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    if-ne p1, v0, :cond_2c

    .line 291
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    if-eqz p1, :cond_3f

    .line 292
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    .line 294
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_1

    return-object v6

    :pswitch_9
    return-object v7

    :pswitch_a
    return-object v8

    :pswitch_b
    return-object v10

    :pswitch_c
    return-object v11

    :pswitch_d
    return-object v9

    :pswitch_e
    return-object v12

    .line 338
    :cond_2c
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    if-ne p1, v0, :cond_30

    .line 339
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    if-eqz p1, :cond_3f

    .line 340
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    .line 342
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa007:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_2f

    if-eq p0, v4, :cond_2e

    if-eq p0, v2, :cond_2d

    return-object v6

    :cond_2d
    return-object v10

    :cond_2e
    return-object v11

    :cond_2f
    return-object v12

    .line 365
    :cond_30
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    if-ne p1, v0, :cond_34

    .line 366
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    if-eqz p1, :cond_3f

    .line 367
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    .line 369
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa008:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_33

    if-eq p0, v4, :cond_32

    if-eq p0, v2, :cond_31

    return-object v6

    :cond_31
    return-object v10

    :cond_32
    return-object v11

    :cond_33
    return-object v12

    .line 392
    :cond_34
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    if-ne p1, v0, :cond_37

    .line 393
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    if-eqz p1, :cond_3f

    .line 394
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    .line 396
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa009:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_36

    if-eq p0, v4, :cond_35

    return-object v6

    :cond_35
    return-object v11

    :cond_36
    return-object v12

    .line 412
    :cond_37
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    if-ne p1, v0, :cond_3c

    .line 413
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    if-eqz p1, :cond_3f

    .line 414
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    .line 416
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa010:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_3b

    if-eq p0, v4, :cond_3a

    if-eq p0, v2, :cond_39

    if-eq p0, v1, :cond_38

    return-object v6

    :cond_38
    return-object v10

    :cond_39
    return-object v11

    :cond_3a
    return-object v9

    :cond_3b
    return-object v12

    .line 446
    :cond_3c
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    if-ne p1, v0, :cond_3f

    .line 447
    instance-of p1, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    if-eqz p1, :cond_3f

    .line 448
    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    .line 450
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa011:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v5, :cond_3e

    if-eq p0, v4, :cond_3d

    return-object v6

    :cond_3d
    return-object v11

    :cond_3e
    return-object v12

    :cond_3f
    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 2497
    const-class v0, [B

    invoke-static {p0, v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2503
    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 2507
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2509
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DF5C"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 2336
    const-string v0, "05"

    const-string v1, "06"

    const-string v2, "03"

    const-string v3, "04"

    const-string v4, "01"

    const-string v5, "02"

    const-string v6, "00"

    const/4 v7, 0x0

    if-eqz p0, :cond_1

    .line 2338
    instance-of v8, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    if-eqz v8, :cond_0

    .line 2339
    sget-object v8, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v8, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    move-object p0, v4

    goto :goto_0

    :pswitch_1
    move-object p0, v5

    goto :goto_0

    .line 2367
    :pswitch_2
    const-string p0, "08"

    goto :goto_0

    .line 2368
    :pswitch_3
    const-string p0, "07"

    goto :goto_0

    :pswitch_4
    move-object p0, v0

    goto :goto_0

    :pswitch_5
    move-object p0, v1

    goto :goto_0

    .line 2371
    :pswitch_6
    const-string p0, "09"

    goto :goto_0

    :pswitch_7
    move-object p0, v2

    goto :goto_0

    :pswitch_8
    move-object p0, v3

    goto :goto_0

    :cond_0
    return-object v7

    :cond_1
    move-object p0, v6

    :goto_0
    if-eqz p1, :cond_3

    .line 2408
    instance-of v8, p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    if-eqz v8, :cond_2

    .line 2409
    sget-object v8, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    check-cast p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v8, p1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 2426
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2427
    :pswitch_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2428
    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2429
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2430
    :pswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2431
    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    return-object v7

    .line 2453
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const/4 p1, 0x2

    if-eqz p2, :cond_7

    .line 2457
    instance-of v0, p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    if-eqz v0, :cond_6

    .line 2458
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa015:[I

    check-cast p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    if-eq p2, p1, :cond_4

    goto :goto_2

    .line 2463
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 2464
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    return-object v7

    .line 2474
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-eqz p3, :cond_a

    .line 2479
    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_8

    .line 2480
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2481
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    int-to-byte p2, p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 2482
    :cond_8
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 2484
    :try_start_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    int-to-byte p2, p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :cond_9
    return-object v7

    .line 2493
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2496
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DF5B"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    div-int/2addr p3, p1

    invoke-static {p3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[ILjava/lang/Object;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 1887
    array-length v8, v4

    if-lt v8, v6, :cond_0

    .line 1888
    aput v7, v4, v7

    :cond_0
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v2, :cond_3b

    if-nez v3, :cond_1

    goto/16 :goto_11

    .line 1903
    :cond_1
    const-string v11, ""

    if-eqz v0, :cond_4

    .line 1905
    instance-of v12, v0, Ljava/lang/Float;

    if-nez v12, :cond_3

    instance-of v12, v0, Ljava/lang/Double;

    if-nez v12, :cond_3

    instance-of v12, v0, Ljava/lang/Short;

    if-nez v12, :cond_3

    instance-of v12, v0, Ljava/lang/Integer;

    if-nez v12, :cond_3

    instance-of v12, v0, Ljava/lang/Long;

    if-nez v12, :cond_3

    instance-of v12, v0, Ljava/lang/String;

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    return-object v10

    .line 1906
    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v11

    :goto_1
    if-eqz v1, :cond_7

    .line 1914
    instance-of v12, v1, Ljava/lang/Float;

    if-nez v12, :cond_6

    instance-of v12, v1, Ljava/lang/Double;

    if-nez v12, :cond_6

    instance-of v12, v1, Ljava/lang/Short;

    if-nez v12, :cond_6

    instance-of v12, v1, Ljava/lang/Integer;

    if-nez v12, :cond_6

    instance-of v12, v1, Ljava/lang/Long;

    if-nez v12, :cond_6

    instance-of v12, v1, Ljava/lang/String;

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    return-object v10

    .line 1915
    :cond_6
    :goto_2
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v11

    .line 1921
    :goto_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    if-eqz v4, :cond_9

    .line 1922
    array-length v0, v4

    if-lt v0, v6, :cond_9

    .line 1923
    instance-of v0, v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eqz v0, :cond_8

    .line 1924
    move-object v0, v3

    check-cast v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 1925
    aput v0, v4, v7

    return-object v10

    :cond_8
    const/16 v0, 0x8

    .line 1929
    aput v0, v4, v7

    :cond_9
    return-object v10

    .line 1935
    :cond_a
    instance-of v12, v2, Ljava/lang/String;

    if-nez v12, :cond_c

    instance-of v13, v2, [B

    if-eqz v13, :cond_b

    goto :goto_4

    :cond_b
    return-object v10

    :cond_c
    :goto_4
    if-eqz v12, :cond_d

    .line 1937
    check-cast v2, Ljava/lang/String;

    goto :goto_5

    .line 1938
    :cond_d
    instance-of v12, v2, [B

    if-eqz v12, :cond_39

    .line 1939
    check-cast v2, [B

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v2

    .line 1947
    :goto_5
    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v4, :cond_e

    .line 1948
    array-length v0, v4

    if-lt v0, v6, :cond_e

    .line 1949
    aput v9, v4, v7

    :cond_e
    return-object v10

    .line 1954
    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_10

    return-object v10

    .line 1958
    :cond_10
    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const-string v14, "0"

    if-ge v12, v13, :cond_11

    .line 1959
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 1962
    :cond_11
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    return-object v10

    .line 1970
    :cond_12
    instance-of v12, v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eqz v12, :cond_38

    .line 1971
    check-cast v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    .line 1976
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    move-object v0, v14

    .line 1980
    :cond_13
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object v1, v14

    :cond_14
    const/4 v12, -0x1

    if-nez v5, :cond_16

    .line 1987
    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1988
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v8, v12

    goto :goto_8

    :cond_15
    return-object v10

    .line 1994
    :cond_16
    :try_start_0
    instance-of v15, v5, Ljava/lang/String;

    if-eqz v15, :cond_17

    .line 1995
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    .line 1996
    :cond_17
    instance-of v15, v5, Ljava/lang/Integer;

    if-eqz v15, :cond_36

    .line 1997
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    if-ltz v5, :cond_34

    if-le v5, v8, :cond_18

    goto/16 :goto_10

    :cond_18
    move v8, v5

    :goto_8
    if-lez v5, :cond_19

    .line 2021
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "\\d{1,"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v15, v5, 0xc

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "}(\\.\\d{1,"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "})?"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    .line 2023
    :cond_19
    const-string v13, "\\d{1,12}"

    .line 2026
    :goto_9
    invoke-static {v13, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1b

    if-eqz v4, :cond_1a

    .line 2027
    array-length v0, v4

    if-lt v0, v6, :cond_1a

    const/4 v0, 0x6

    .line 2028
    aput v0, v4, v7

    :cond_1a
    return-object v10

    .line 2032
    :cond_1b
    invoke-static {v13, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1d

    if-eqz v4, :cond_1c

    .line 2033
    array-length v0, v4

    if-lt v0, v6, :cond_1c

    const/4 v0, 0x7

    .line 2034
    aput v0, v4, v7

    :cond_1c
    return-object v10

    .line 2038
    :cond_1d
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 2039
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 2040
    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->GOODS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    const-wide/16 v19, 0x0

    if-eq v3, v13, :cond_1f

    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->SERVICES:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eq v3, v13, :cond_1f

    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->TRANSFER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eq v3, v13, :cond_1f

    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->PAYMENT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eq v3, v13, :cond_1f

    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->REFUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-eq v3, v13, :cond_1f

    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v13, :cond_1e

    goto :goto_a

    .line 2050
    :cond_1e
    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v4, :cond_22

    cmpg-double v4, v17, v19

    if-gez v4, :cond_22

    return-object v10

    :cond_1f
    :goto_a
    cmpg-double v13, v15, v19

    if-gez v13, :cond_20

    return-object v10

    :cond_20
    cmpl-double v13, v17, v19

    if-lez v13, :cond_22

    if-eqz v4, :cond_21

    .line 2051
    array-length v0, v4

    if-lt v0, v6, :cond_21

    .line 2052
    aput v6, v4, v7

    :cond_21
    return-object v10

    .line 2064
    :cond_22
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_23

    .line 2069
    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v10, v6

    .line 2070
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v13

    goto :goto_b

    :cond_23
    move-object v10, v11

    .line 2075
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    rsub-int/lit8 v15, v5, 0xc

    if-ge v13, v15, :cond_24

    .line 2076
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 2079
    :cond_24
    :goto_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v5, :cond_25

    .line 2080
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    .line 2083
    :cond_25
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2084
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "9F02"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    div-int/2addr v13, v9

    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v12, :cond_26

    .line 2092
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v6

    .line 2093
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v1, v7

    goto :goto_d

    :cond_26
    move-object v4, v11

    .line 2098
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v15, :cond_27

    .line 2099
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 2102
    :cond_27
    :goto_e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_28

    .line 2103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 2106
    :cond_28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "9F03"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v9

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5F2A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v9

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-ltz v8, :cond_29

    .line 2114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 2116
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "5F36"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v9

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2118
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->GOODS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2a

    .line 2119
    const-string v11, "04"

    goto :goto_f

    .line 2120
    :cond_2a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->SERVICES:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2b

    .line 2121
    const-string v11, "08"

    goto :goto_f

    .line 2122
    :cond_2b
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2c

    .line 2123
    const-string v11, "02"

    goto :goto_f

    .line 2124
    :cond_2c
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->INQUIRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2d

    .line 2125
    const-string v11, "06"

    goto :goto_f

    .line 2126
    :cond_2d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->TRANSFER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2e

    .line 2127
    const-string v11, "10"

    goto :goto_f

    .line 2128
    :cond_2e
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->PAYMENT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_2f

    .line 2129
    const-string v11, "12"

    goto :goto_f

    .line 2130
    :cond_2f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->REFUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_30

    .line 2131
    const-string v11, "14"

    goto :goto_f

    .line 2132
    :cond_30
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->CASH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_31

    .line 2133
    const-string v11, "17"

    goto :goto_f

    .line 2134
    :cond_31
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->VOID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_32

    .line 2135
    const-string v11, "5A"

    goto :goto_f

    .line 2136
    :cond_32
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;->REVERSAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionType;

    if-ne v3, v1, :cond_33

    .line 2137
    const-string v11, "5B"

    .line 2141
    :cond_33
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v9

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    :goto_10
    if-eqz v4, :cond_35

    .line 2142
    :try_start_1
    array-length v0, v4

    if-lt v0, v6, :cond_35

    const/4 v0, 0x5

    .line 2143
    aput v0, v4, v7

    :cond_35
    return-object v10

    :cond_36
    if-eqz v4, :cond_37

    .line 2144
    array-length v0, v4

    if-lt v0, v6, :cond_37

    .line 2145
    aput v13, v4, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_37
    return-object v10

    :catch_0
    if-eqz v4, :cond_38

    .line 2157
    array-length v0, v4

    if-lt v0, v6, :cond_38

    .line 2158
    aput v13, v4, v7

    :cond_38
    return-object v10

    :cond_39
    if-eqz v4, :cond_3a

    .line 2159
    array-length v0, v4

    if-lt v0, v6, :cond_3a

    .line 2160
    aput v9, v4, v7

    :cond_3a
    return-object v10

    :cond_3b
    :goto_11
    if-nez v2, :cond_3c

    if-eqz v4, :cond_3d

    .line 2161
    array-length v0, v4

    if-lt v0, v6, :cond_3d

    .line 2162
    aput v9, v4, v7

    goto :goto_12

    :cond_3c
    if-nez v3, :cond_3d

    if-eqz v4, :cond_3d

    .line 2165
    array-length v0, v4

    if-lt v0, v6, :cond_3d

    .line 2166
    aput v8, v4, v7

    :cond_3d
    :goto_12
    return-object v10
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/Object;[ILjava/lang/Object;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 2167
    array-length v6, v2

    if-lt v6, v4, :cond_0

    .line 2168
    aput v5, v2, v5

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    .line 2171
    array-length v0, v2

    if-lt v0, v4, :cond_1

    .line 2172
    aput v6, v2, v5

    :cond_1
    return-object v7

    .line 2177
    :cond_2
    const-string v8, ""

    if-eqz v0, :cond_6

    .line 2179
    instance-of v9, v0, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 2180
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v0, 0x7

    .line 2181
    aput v0, v2, v5

    return-object v7

    .line 2185
    :cond_3
    instance-of v10, v0, Ljava/lang/Float;

    if-nez v10, :cond_5

    instance-of v10, v0, Ljava/lang/Double;

    if-nez v10, :cond_5

    instance-of v10, v0, Ljava/lang/Short;

    if-nez v10, :cond_5

    instance-of v10, v0, Ljava/lang/Integer;

    if-nez v10, :cond_5

    instance-of v10, v0, Ljava/lang/Long;

    if-nez v10, :cond_5

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    return-object v7

    .line 2186
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    move-object v0, v8

    .line 2193
    :goto_1
    instance-of v9, v1, Ljava/lang/String;

    if-nez v9, :cond_8

    instance-of v10, v1, [B

    if-eqz v10, :cond_7

    goto :goto_2

    :cond_7
    return-object v7

    :cond_8
    :goto_2
    if-eqz v9, :cond_9

    .line 2195
    check-cast v1, Ljava/lang/String;

    goto :goto_3

    .line 2196
    :cond_9
    instance-of v9, v1, [B

    if-eqz v9, :cond_22

    .line 2197
    check-cast v1, [B

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    .line 2205
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v2, :cond_a

    .line 2206
    array-length v0, v2

    if-lt v0, v4, :cond_a

    .line 2207
    aput v6, v2, v5

    :cond_a
    return-object v7

    .line 2212
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_c

    return-object v7

    .line 2216
    :cond_c
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v11, "0"

    if-ge v9, v10, :cond_d

    .line 2217
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 2220
    :cond_d
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    return-object v7

    .line 2227
    :cond_e
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move-object v0, v11

    :cond_f
    const/4 v9, -0x1

    if-nez v3, :cond_11

    .line 2234
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2235
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v10, v9

    goto :goto_6

    :cond_10
    return-object v7

    .line 2241
    :cond_11
    :try_start_0
    instance-of v12, v3, Ljava/lang/String;

    if-eqz v12, :cond_12

    .line 2242
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    .line 2243
    :cond_12
    instance-of v12, v3, Ljava/lang/Integer;

    if-eqz v12, :cond_1f

    .line 2244
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-ltz v3, :cond_1d

    const/4 v12, 0x3

    if-le v3, v12, :cond_13

    goto/16 :goto_a

    :cond_13
    move v10, v3

    :goto_6
    if-lez v3, :cond_14

    .line 2268
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\\d{1,"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v13, v3, 0xc

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}(\\.\\d{1,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "})?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 2270
    :cond_14
    const-string v12, "\\d{1,12}"

    .line 2273
    :goto_7
    invoke-static {v12, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_16

    if-eqz v2, :cond_15

    .line 2274
    array-length v0, v2

    if-lt v0, v4, :cond_15

    const/4 v0, 0x6

    .line 2275
    aput v0, v2, v5

    :cond_15
    return-object v7

    .line 2280
    :cond_16
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    if-gez v2, :cond_17

    return-object v7

    .line 2287
    :cond_17
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_18

    .line 2292
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v4

    .line 2293
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v5

    .line 2298
    :cond_18
    :goto_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v4, v3, 0xc

    if-ge v2, v4, :cond_19

    .line 2299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 2302
    :cond_19
    :goto_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1a

    .line 2303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 2306
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2307
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DF861F"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v6

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_1c

    .line 2311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "5F2A"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v6

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    if-ltz v10, :cond_1b

    .line 2314
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 2316
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "5F36"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v6

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1c
    return-object v0

    :cond_1d
    :goto_a
    if-eqz v2, :cond_1e

    .line 2317
    :try_start_1
    array-length v0, v2

    if-lt v0, v4, :cond_1e

    const/4 v0, 0x5

    .line 2318
    aput v0, v2, v5

    :cond_1e
    return-object v7

    :cond_1f
    if-eqz v2, :cond_20

    .line 2319
    array-length v0, v2

    if-lt v0, v4, :cond_20

    .line 2320
    aput v10, v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_20
    return-object v7

    :catch_0
    if-eqz v2, :cond_21

    .line 2332
    array-length v0, v2

    if-lt v0, v4, :cond_21

    .line 2333
    aput v10, v2, v5

    :cond_21
    return-object v7

    :cond_22
    if-eqz v2, :cond_23

    .line 2334
    array-length v0, v2

    if-lt v0, v4, :cond_23

    .line 2335
    aput v6, v2, v5

    :cond_23
    return-object v7
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 499
    const-string v2, "DF43"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    const-string v4, "0"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 500
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 504
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    move-object/from16 v16, v6

    goto/16 :goto_2a

    :cond_2
    :goto_2
    return-object v6

    .line 507
    :cond_3
    const-string v2, "DF75"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 508
    const-string v2, "DF875D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 509
    const-string v2, "DF877E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 510
    const-string v2, "DF8762"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 511
    const-string v2, "DF876D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 512
    const-string v2, "DF8658"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_29

    .line 517
    :cond_4
    const-string v2, "DF19"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 518
    const-string v2, "DF8354"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 519
    const-string v2, "DF8361"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 520
    const-string v2, "DF47"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 521
    const-string v2, "DF8614"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 522
    const-string v2, "DF861A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 523
    const-string v2, "5F36"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 524
    const-string v7, "DF8729"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 525
    const-string v7, "DF8546"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 526
    const-string v7, "DF8572"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 527
    const-string v7, "DF8925"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 528
    const-string v7, "DF8927"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 529
    const-string v7, "DF893E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 530
    const-string v7, "DF893F"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 531
    const-string v7, "DF8941"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 532
    const-string v7, "DF8940"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 533
    const-string v7, "DF8942"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 534
    const-string v7, "DF894E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_26

    .line 542
    :cond_5
    const-string v7, "DF0E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 543
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v6

    .line 547
    :cond_6
    const-string v7, "DF65"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-nez v7, :cond_76

    .line 548
    const-string v7, "DF60"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 549
    const-string v7, "DF68"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 550
    const-string v7, "DF67"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 551
    const-string v7, "DF61"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 552
    const-string v7, "DF64"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 553
    const-string v7, "DF62"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 554
    const-string v7, "DF63"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 555
    const-string v7, "DF860B"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_76

    .line 556
    const-string v7, "DF8521"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_23

    .line 582
    :cond_7
    const-string v7, "DF8403"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 584
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 586
    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    return-object v6

    .line 590
    :cond_8
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 591
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    if-gez v0, :cond_9

    return-object v6

    .line 600
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_a

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 605
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    :cond_b
    return-object v6

    .line 608
    :cond_c
    const-string v7, "DF14"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-class v9, [B

    if-nez v7, :cond_74

    .line 609
    const-string v7, "DF21"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 610
    const-string v7, "CA"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 611
    const-string v7, "DF8321"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 612
    const-string v7, "DF824B"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 613
    const-string v7, "9F22"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 614
    const-string v7, "DF824F"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 615
    const-string v7, "DF824D"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 616
    const-string v7, "DF824A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 617
    const-string v7, "DF824E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 618
    const-string v7, "DF8250"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 619
    const-string v7, "DF8254"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 620
    const-string v7, "DF8255"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 621
    const-string v7, "DF8256"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 622
    const-string v7, "DF5C"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 623
    const-string v7, "DF1E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 624
    const-string v7, "DF1D"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 625
    const-string v7, "DF827D"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 626
    const-string v7, "DF8314"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 627
    const-string v7, "DF8316"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 628
    const-string v7, "DF825B"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 629
    const-string v7, "DF8359"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 630
    const-string v7, "DF8303"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 631
    const-string v7, "DF8500"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 632
    const-string v7, "DF850A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 633
    const-string v7, "DF4A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 634
    const-string v7, "DF4B"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 635
    const-string v7, "DF8616"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 636
    const-string v7, "DF8617"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 637
    const-string v7, "DF8618"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 638
    const-string v7, "DF8613"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 639
    const-string v7, "DF8522"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 640
    const-string v7, "DF8747"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 641
    const-string v7, "9F33"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 642
    const-string v7, "9F35"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 643
    const-string v7, "DF8654"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 644
    const-string v7, "DF6C"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 645
    const-string v7, "DF8200"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 646
    const-string v7, "DF876A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 647
    const-string v7, "DF855E"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 648
    const-string v7, "DF8560"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 649
    const-string v7, "DF8561"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 650
    const-string v7, "DF8562"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 651
    const-string v7, "DF8563"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_22

    .line 656
    :cond_d
    const-string v7, "DF20"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 657
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v6

    .line 661
    :cond_e
    const-string v7, "DF28"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_12

    .line 662
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 663
    check-cast v0, Ljava/lang/String;

    .line 665
    const-string v2, "\\d{4,12}"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v6

    .line 669
    :cond_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 671
    :goto_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v10, v3, :cond_10

    add-int/lit8 v3, v10, 0x1

    .line 672
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v10, v3

    goto :goto_5

    .line 677
    :cond_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :catch_1
    return-object v6

    :cond_11
    move-object/from16 v16, v6

    goto/16 :goto_1d

    .line 682
    :cond_12
    const-string v7, "DF03"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 683
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 684
    check-cast v0, Ljava/lang/String;

    .line 686
    const-string v2, "\\d{13,19}"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    return-object v6

    .line 690
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 692
    :cond_14
    const-string v7, "DF04"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x1

    if-eqz v7, :cond_17

    .line 693
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 694
    check-cast v0, Ljava/lang/String;

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_15

    return-object v6

    .line 701
    :cond_15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v5

    new-array v2, v2, [B

    .line 702
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v11

    if-ge v10, v3, :cond_16

    .line 703
    div-int/lit8 v3, v10, 0x2

    add-int/lit8 v4, v10, 0x2

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v10, v4

    goto :goto_6

    .line 709
    :cond_16
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_2
    return-object v6

    .line 711
    :cond_17
    const-string v7, "DF45"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 712
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 713
    :cond_18
    const-string v7, "DF32"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 714
    const-class v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 715
    :cond_19
    const-string v7, "DF873A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 716
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 717
    :cond_1a
    const-string v7, "5F2A"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 718
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    return-object v6

    .line 724
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1c

    return-object v6

    .line 728
    :cond_1c
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1d

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 733
    :cond_1d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 734
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/2addr v4, v5

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v3, Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v5

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    return-object v6

    .line 744
    :cond_1f
    const-string v2, "DF39"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 745
    const-string v2, "DF865E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto/16 :goto_1f

    .line 753
    :cond_20
    const-string v2, "DF22"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 754
    const-string v2, "DF23"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 755
    const-string v2, "DF895A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_1e

    .line 757
    :cond_21
    const-string v2, "DF857E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "0101"

    const-string v7, "0000"

    if-eqz v2, :cond_26

    .line 758
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    .line 759
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    :goto_8
    move-object v0, v3

    goto/16 :goto_1

    :cond_23
    :goto_9
    move-object/from16 v16, v6

    :cond_24
    move-object v0, v7

    goto/16 :goto_2a

    :cond_25
    return-object v6

    .line 767
    :cond_26
    const-string v2, "DF857F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 768
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_27

    .line 769
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_9

    :cond_27
    return-object v6

    .line 777
    :cond_28
    const-string v2, "DF8356"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "01"

    const-string v7, "00"

    if-eqz v2, :cond_2b

    .line 778
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_29

    .line 779
    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_8

    .line 788
    :cond_29
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 789
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    :cond_2a
    return-object v6

    .line 793
    :cond_2b
    const-string v2, "DFDF02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 794
    const-string v2, "DFDF45"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 795
    const-string v2, "DFDF46"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto/16 :goto_1b

    .line 803
    :cond_2c
    const-string v2, "9F02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    const-string v13, "DF8544"

    const/16 v14, 0xa

    const-string v15, "DF8543"

    move-object/from16 v16, v6

    const-string v6, "DF8542"

    if-nez v12, :cond_63

    .line 804
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_63

    .line 805
    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_63

    .line 806
    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2d

    goto/16 :goto_17

    .line 853
    :cond_2d
    const-string v2, "DF5A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 854
    instance-of v2, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    if-eqz v2, :cond_6f

    .line 855
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa012:[I

    check-cast v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v11, :cond_2f

    if-eq v0, v5, :cond_24

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2e

    goto/16 :goto_1d

    .line 863
    :cond_2e
    const-string v0, "02"

    goto/16 :goto_2a

    :cond_2f
    move-object v0, v3

    goto/16 :goto_2a

    .line 875
    :cond_30
    const-string v2, "DF8358"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 876
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 880
    :cond_31
    const-string v2, "DF73"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 881
    const-string v2, "DF860D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto/16 :goto_14

    .line 889
    :cond_32
    const-string v2, "DF8502"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 890
    const-string v2, "DF8501"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 891
    const-string v2, "DF8504"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 892
    const-string v2, "DF8509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 893
    const-string v2, "DF862C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto/16 :goto_13

    .line 898
    :cond_33
    const-string v2, "DF8503"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 899
    const-string v2, "DF8505"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 900
    const-string v2, "DF8506"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto/16 :goto_10

    .line 908
    :cond_34
    const-string v2, "DF8615"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 909
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 913
    :cond_35
    const-string v2, "DF8610"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 914
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 918
    :cond_36
    const-string v2, "DF8612"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 919
    const-string v2, "DF8611"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 920
    const-string v2, "DF851F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto/16 :goto_f

    .line 923
    :cond_37
    const-string v2, "DF8620"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 924
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 928
    :cond_38
    const-string v2, "DF851E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 929
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 933
    :cond_39
    const-string v2, "DF8523"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 934
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 938
    :cond_3a
    const-string v2, "DF8737"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 939
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 943
    :cond_3b
    const-string v2, "DF876C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 944
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 948
    :cond_3c
    const-string v2, "DF850C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "key0"

    if-eqz v2, :cond_4e

    .line 949
    instance-of v2, v0, Ljava/util/Hashtable;

    if-eqz v2, :cond_4d

    .line 952
    :try_start_3
    check-cast v0, Ljava/util/Hashtable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 956
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 957
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 959
    array-length v2, v0

    move-object v4, v8

    :goto_a
    if-ge v10, v2, :cond_4b

    aget-object v6, v0, v10

    .line 960
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "30"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 962
    :cond_3d
    const-string v7, "key1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "31"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 964
    :cond_3e
    const-string v7, "key2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "32"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 966
    :cond_3f
    const-string v7, "key3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "33"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 968
    :cond_40
    const-string v7, "key4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "34"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 970
    :cond_41
    const-string v7, "key5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "35"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 972
    :cond_42
    const-string v7, "key6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "36"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 974
    :cond_43
    const-string v7, "key7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "37"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 976
    :cond_44
    const-string v7, "key8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "38"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 978
    :cond_45
    const-string v7, "key9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 979
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "39"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 980
    :cond_46
    const-string v7, "backspace"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "08"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 982
    :cond_47
    const-string v7, "clear"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "0C"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 984
    :cond_48
    const-string v7, "cancel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "1B"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 986
    :cond_49
    const-string v7, "enter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 987
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "0D"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4a
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    .line 990
    :cond_4b
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    return-object v16

    :cond_4c
    move-object v0, v4

    goto/16 :goto_2a

    :catch_3
    :cond_4d
    return-object v16

    .line 998
    :cond_4e
    const-string v2, "DF850D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 999
    instance-of v2, v0, Ljava/util/Hashtable;

    if-eqz v2, :cond_52

    .line 1002
    :try_start_4
    check-cast v0, Ljava/util/Hashtable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1006
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1007
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1009
    array-length v4, v2

    move-object v6, v8

    :goto_c
    if-ge v10, v4, :cond_51

    aget-object v7, v2, v10

    .line 1010
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1011
    const-string v11, "key1"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1012
    const-string v11, "key2"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1013
    const-string v11, "key3"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1014
    const-string v11, "key4"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1015
    const-string v11, "key5"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1016
    const-string v11, "key6"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1017
    const-string v11, "key7"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1018
    const-string v11, "key8"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1019
    const-string v11, "key9"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1020
    const-string v11, "backspace"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1021
    const-string v11, "clear"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1022
    const-string v11, "cancel"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4f

    .line 1023
    const-string v11, "enter"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 1025
    :cond_4f
    :try_start_5
    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1026
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_50
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    :catch_4
    return-object v16

    .line 1032
    :cond_51
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    :catch_5
    :cond_52
    return-object v16

    .line 1040
    :cond_53
    const-string v2, "DF850E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1041
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 1045
    :cond_54
    const-string v2, "DF856E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1046
    const-class v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    .line 1050
    :cond_55
    const-string v2, "DF8926"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1051
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_6f

    .line 1054
    :try_start_6
    check-cast v0, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1058
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_59

    if-le v2, v14, :cond_56

    goto :goto_e

    .line 1062
    :cond_56
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    :goto_d
    if-ge v10, v2, :cond_58

    .line 1064
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1065
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    div-int/2addr v6, v5

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1067
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_57
    return-object v16

    :cond_58
    move-object v0, v6

    goto/16 :goto_2a

    :catch_6
    :cond_59
    :goto_e
    return-object v16

    .line 1068
    :cond_5a
    :goto_f
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 1069
    :cond_5b
    :goto_10
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 1070
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5c

    goto :goto_12

    .line 1073
    :cond_5c
    :goto_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_7f

    .line 1074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_5d
    :goto_12
    return-object v16

    .line 1075
    :cond_5e
    :goto_13
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 1076
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_7f

    :cond_5f
    return-object v16

    .line 1077
    :cond_60
    :goto_14
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 1078
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_61

    goto :goto_16

    .line 1081
    :cond_61
    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v5

    if-eqz v2, :cond_7f

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_62
    :goto_16
    return-object v16

    .line 1083
    :cond_63
    :goto_17
    instance-of v3, v0, Ljava/lang/Float;

    if-nez v3, :cond_64

    instance-of v3, v0, Ljava/lang/Double;

    if-nez v3, :cond_64

    instance-of v3, v0, Ljava/lang/Short;

    if-nez v3, :cond_64

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_64

    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_64

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_6f

    .line 1084
    :cond_64
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    move-object v0, v4

    .line 1092
    :cond_65
    const-string v3, "\\d{1,10}(\\.\\d{1,2})?"

    .line 1093
    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_66

    return-object v16

    .line 1097
    :cond_66
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v19, 0x0

    if-nez v2, :cond_68

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_18

    :cond_67
    cmpg-double v2, v17, v19

    if-gtz v2, :cond_69

    return-object v16

    :cond_68
    :goto_18
    cmpg-double v2, v17, v19

    if-gez v2, :cond_69

    return-object v16

    .line 1108
    :cond_69
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6a

    .line 1112
    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v11

    .line 1113
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v3

    .line 1118
    :cond_6a
    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v14, :cond_6b

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1122
    :cond_6b
    :goto_1a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_6c

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    .line 1126
    :cond_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_6d
    :goto_1b
    move-object/from16 v16, v6

    .line 1127
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_6f

    .line 1128
    check-cast v0, [Ljava/lang/String;

    .line 1130
    :goto_1c
    array-length v2, v0

    if-ge v10, v2, :cond_6e

    .line 1131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v10

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_6e
    move-object v0, v8

    goto/16 :goto_2a

    :cond_6f
    :goto_1d
    move-object/from16 v0, v16

    goto/16 :goto_2a

    :cond_70
    :goto_1e
    move-object/from16 v16, v6

    .line 1132
    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    :cond_71
    :goto_1f
    move-object/from16 v16, v6

    .line 1133
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 1134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_72

    goto :goto_21

    .line 1137
    :cond_72
    :goto_20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_7f

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_73
    :goto_21
    return-object v16

    :cond_74
    :goto_22
    move-object/from16 v16, v6

    .line 1139
    invoke-static {v0, v9}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 1140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7f

    :cond_75
    return-object v16

    :cond_76
    :goto_23
    move-object/from16 v16, v6

    .line 1141
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 1143
    :try_start_7
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_24

    :catch_7
    return-object v16

    .line 1147
    :cond_77
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_7a

    .line 1148
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_24
    if-gez v0, :cond_78

    return-object v16

    .line 1157
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_79

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 1162
    :cond_79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_7f

    :cond_7a
    return-object v16

    :cond_7b
    :goto_26
    move-object/from16 v16, v6

    .line 1163
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 1164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_7c

    goto :goto_28

    .line 1167
    :cond_7c
    :goto_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v5

    if-eqz v2, :cond_7f

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_7d
    :goto_28
    return-object v16

    :cond_7e
    :goto_29
    move-object/from16 v16, v6

    .line 1169
    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7f

    return-object v16

    :cond_7f
    :goto_2a
    if-eqz v0, :cond_80

    .line 1724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v5

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_80
    return-object v16
.end method

.method static aaa000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 1725
    array-length v2, p4

    if-lt v2, v0, :cond_0

    .line 1726
    aput v1, p4, v1

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eqz p4, :cond_1

    .line 1730
    array-length p0, p4

    if-lt p0, v0, :cond_1

    .line 1731
    aput v2, p4, v1

    :cond_1
    return-object v3

    .line 1736
    :cond_2
    const-string v4, "9F02"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "DF8928"

    if-nez v4, :cond_3

    .line 1737
    const-string v4, "DF852D"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1738
    const-string v4, "DF852E"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1739
    const-string v4, "DF852F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1740
    const-string v4, "DF8558"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1741
    const-string v4, "DF8559"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1742
    const-string v4, "DF855A"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1743
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1745
    :cond_3
    instance-of v4, p0, Ljava/lang/Float;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/Double;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/Short;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/Integer;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/Long;

    if-nez v4, :cond_5

    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move-object p0, v3

    goto/16 :goto_9

    .line 1746
    :cond_5
    :goto_0
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1749
    instance-of v4, p2, Ljava/lang/String;

    if-nez v4, :cond_7

    instance-of v6, p2, [B

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    return-object v3

    :cond_7
    :goto_1
    if-eqz v4, :cond_8

    .line 1751
    check-cast p2, Ljava/lang/String;

    goto :goto_2

    .line 1752
    :cond_8
    instance-of v4, p2, [B

    if-eqz v4, :cond_21

    .line 1753
    check-cast p2, [B

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p2

    .line 1761
    :goto_2
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz p4, :cond_9

    .line 1762
    array-length p0, p4

    if-lt p0, v0, :cond_9

    .line 1763
    aput v2, p4, v1

    :cond_9
    return-object v3

    .line 1768
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-le v6, v7, :cond_b

    return-object v3

    .line 1772
    :cond_b
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v8, "0"

    if-ge v6, v7, :cond_c

    .line 1773
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1776
    :cond_c
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    return-object v3

    .line 1783
    :cond_d
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1784
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-object v4

    :cond_e
    move-object p0, v8

    :cond_f
    if-nez p3, :cond_11

    .line 1793
    sget-object p3, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000:Ljava/util/Hashtable;

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1794
    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_5

    :cond_10
    return-object v3

    .line 1800
    :cond_11
    :try_start_0
    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_12

    .line 1801
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_4

    .line 1802
    :cond_12
    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_1e

    .line 1803
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    if-ltz p2, :cond_1c

    const/4 p3, 0x3

    if-le p2, p3, :cond_13

    goto/16 :goto_a

    :cond_13
    :goto_5
    if-lez p2, :cond_14

    .line 1827
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "\\d{1,"

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v5, p2, 0xc

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, "}(\\.\\d{1,"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, "})?"

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    .line 1829
    :cond_14
    const-string p3, "\\d{1,12}"

    .line 1832
    :goto_6
    invoke-static {p3, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_16

    if-eqz p4, :cond_15

    .line 1833
    array-length p0, p4

    if-lt p0, v0, :cond_15

    const/4 p0, 0x6

    .line 1834
    aput p0, p4, v1

    :cond_15
    return-object v3

    .line 1839
    :cond_16
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    const-wide/16 v5, 0x0

    cmpg-double p3, p3, v5

    if-gez p3, :cond_17

    return-object v3

    .line 1844
    :cond_17
    const-string p3, "."

    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_18

    .line 1848
    invoke-virtual {p0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    add-int/2addr p3, v0

    .line 1849
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object p0, p4

    .line 1854
    :cond_18
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    rsub-int/lit8 p4, p2, 0xc

    if-ge p3, p4, :cond_19

    .line 1855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 1858
    :cond_19
    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p3, p2, :cond_1a

    .line 1859
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 1862
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_1b

    .line 1867
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    div-int/2addr p2, v2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v3

    :cond_1c
    :goto_a
    if-eqz p4, :cond_1d

    .line 1868
    :try_start_1
    array-length p0, p4

    if-lt p0, v0, :cond_1d

    const/4 p0, 0x5

    .line 1869
    aput p0, p4, v1

    :cond_1d
    return-object v3

    :cond_1e
    if-eqz p4, :cond_1f

    .line 1870
    array-length p0, p4

    if-lt p0, v0, :cond_1f

    .line 1871
    aput v7, p4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1f
    return-object v3

    :catch_0
    if-eqz p4, :cond_20

    .line 1883
    array-length p0, p4

    if-lt p0, v0, :cond_20

    .line 1884
    aput v7, p4, v1

    :cond_20
    return-object v3

    :cond_21
    if-eqz p4, :cond_22

    .line 1885
    array-length p0, p4

    if-lt p0, v0, :cond_22

    .line 1886
    aput v2, p4, v1

    :cond_22
    return-object v3
.end method

.method static aaa000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2548
    const-string v0, "DF837C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2549
    const-string p0, "appIndex"

    return-object p0

    .line 2550
    :cond_0
    const-string v0, "9F06"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2551
    const-string p0, "aid"

    return-object p0

    .line 2552
    :cond_1
    const-string v0, "9F09"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2553
    const-string p0, "appVersion"

    return-object p0

    .line 2554
    :cond_2
    const-string v0, "DF8120"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2555
    const-string p0, "contactTACDefault"

    return-object p0

    .line 2556
    :cond_3
    const-string v0, "DF8121"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2557
    const-string p0, "contactTACDenial"

    return-object p0

    .line 2558
    :cond_4
    const-string v0, "DF8122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2559
    const-string p0, "contactTACOnline"

    return-object p0

    .line 2560
    :cond_5
    const-string v0, "DF20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2561
    const-string p0, "contactlessTACDefault"

    return-object p0

    .line 2562
    :cond_6
    const-string v0, "DF21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2563
    const-string p0, "contactlessTACDenial"

    return-object p0

    .line 2564
    :cond_7
    const-string v0, "DF22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2565
    const-string p0, "contactlessTACOnline"

    return-object p0

    .line 2566
    :cond_8
    const-string v0, "97"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2567
    const-string p0, "defaultTDOL"

    return-object p0

    .line 2568
    :cond_9
    const-string v0, "9F49"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2569
    const-string p0, "defaultDDOL"

    return-object p0

    .line 2570
    :cond_a
    const-string v0, "DF24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2571
    const-string p0, "contactlessTransactionLimit"

    return-object p0

    .line 2572
    :cond_b
    const-string v0, "DF25"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2573
    const-string p0, "contactlessTransactionLimitODCV"

    return-object p0

    .line 2574
    :cond_c
    const-string v0, "DF26"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2575
    const-string p0, "contactlessCVMRequiredLimit"

    return-object p0

    .line 2576
    :cond_d
    const-string v0, "DF23"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2577
    const-string p0, "contactlessFloorLimit"

    return-object p0

    .line 2578
    :cond_e
    const-string v0, "9F1B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2579
    const-string p0, "terminalFloorLimit"

    return-object p0

    .line 2580
    :cond_f
    const-string v0, "9F33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2581
    const-string p0, "terminalCapabilities"

    return-object p0

    .line 2582
    :cond_10
    const-string v0, "9F35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2583
    const-string p0, "terminalType"

    return-object p0

    .line 2584
    :cond_11
    const-string v0, "9F2A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2585
    const-string p0, "contactlessKernelID"

    return-object p0

    .line 2586
    :cond_12
    const-string v0, "EB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2587
    const-string p0, "kernelConfigData"

    return-object p0

    .line 2588
    :cond_13
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2589
    const-string p0, "dcpos"

    :cond_14
    return-object p0
.end method

.method static aaa000(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2657
    const-string v0, ""

    const/4 v1, 0x0

    .line 2658
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aaa000(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2660
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static aaa000(Lcom/stripe/bbpos/bbdevice/CAPK;)Z
    .locals 4

    .line 2510
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->location:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->rid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    return v1

    .line 2516
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    return v1

    .line 2519
    :cond_2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->checksum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_3

    return v1

    .line 2522
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    return v1

    .line 2525
    :cond_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_5

    return v1

    .line 2529
    :cond_5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->location:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 2532
    :cond_6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->rid:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 2535
    :cond_7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 2538
    :cond_8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->checksum:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 2541
    :cond_9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->size:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 2544
    :cond_a
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 2547
    :cond_b
    iget-object p0, p0, Lcom/stripe/bbpos/bbdevice/CAPK;->modulus:Ljava/lang/String;

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method static aaa001(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    if-ge p0, v2, :cond_1

    .line 6
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa001()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    const-string v1, "D3"

    const-string v2, "productID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v1, "D4"

    const-string v2, "formatID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "DF25"

    const-string v2, "vendorID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "DF12"

    const-string v2, "hardwareVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v1, "DF05"

    const-string v2, "pinKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "DF8671"

    const-string v2, "pinKsn1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "DF8672"

    const-string v2, "pinKsn2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v1, "DF8673"

    const-string v2, "pinKsn3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "DF8674"

    const-string v2, "pinKsn4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "DF07"

    const-string v2, "trackKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "DF890A"

    const-string v2, "trackKsn1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "DF890B"

    const-string v2, "trackKsn2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "DF890C"

    const-string v2, "trackKsn3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "DF890D"

    const-string v2, "trackKsn4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "DF06"

    const-string v2, "emvKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v1, "DF8906"

    const-string v2, "emvKsn1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "DF8907"

    const-string v2, "emvKsn2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "DF8908"

    const-string v2, "emvKsn3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "DF8909"

    const-string v2, "emvKsn4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "DF08"

    const-string v2, "macKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "DF890E"

    const-string v2, "macKsn1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "DF890F"

    const-string v2, "macKsn2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "DF8910"

    const-string v2, "macKsn3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "DF8911"

    const-string v2, "macKsn4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "DF8349"

    const-string v2, "nfcKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "DF834A"

    const-string v2, "messageKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "DF8912"

    const-string v2, "cmacKsn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "D6"

    const-string v2, "bootloaderVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "D7"

    const-string v2, "firmwareVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v1, "DF31"

    const-string v2, "csn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v1, "D8"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "DF834F"

    const-string v2, "bID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "DF5E"

    const-string v2, "terminalSettingVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "DF5D"

    const-string v2, "deviceSettingVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "DF8625"

    const-string v2, "firmwareID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "DF8626"

    const-string v2, "bootloaderID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "DF8665"

    const-string v2, "hardwareID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "DF8629"

    const-string v2, "mcuInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "DF826E"

    const-string v2, "serialNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "DF8328"

    const-string v2, "modelName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "DF8237"

    const-string v2, "batteryPercentage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "DF8363"

    const-string v2, "publicKeyVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "DF5F"

    const-string v2, "caKeyVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "DF10"

    const-string v2, "coprocessorVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "DF0F"

    const-string v2, "coprocessorBootloaderVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "DF8748"

    const-string v2, "emvKeyModulusHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "DF872F"

    const-string v2, "defaultLanguage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "DF8730"

    const-string v2, "supportedLanguages"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "DF877C"

    const-string v2, "tmk0CmacKcv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "DF8955"

    const-string v2, "tmk1CmacKcv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "DF8962"

    const-string v2, "tmk2CmacKcv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "DF8963"

    const-string v2, "tmk3CmacKcv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "DF861B"

    const-string v2, "mmk0PublicKeyHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "DF8768"

    const-string v2, "isRebootRequired"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "DF877B"

    const-string v2, "mmk1PublicKeyHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "DF8778"

    const-string v2, "fskPublicKeyHash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "DF871A"

    const-string v2, "iccReadSucc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "DF871B"

    const-string v2, "iccReadFail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "DF871C"

    const-string v2, "ctlReadSucc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "DF871D"

    const-string v2, "ctlReadFail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "DF8718"

    const-string v2, "msrReadSucc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "DF8719"

    const-string v2, "msrReadFail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "DF894B"

    const-string v2, "firmwareDebugInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "DF821F"

    const-string v2, "factoryMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static aaa001(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/CAPK;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 14
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 15
    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v5, "FF8242"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    .line 17
    new-instance v4, Lcom/stripe/bbpos/bbdevice/CAPK;

    invoke-direct {v4}, Lcom/stripe/bbpos/bbdevice/CAPK;-><init>()V

    move v5, v1

    .line 18
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 19
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 20
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF824A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 21
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->location:Ljava/lang/String;

    goto/16 :goto_2

    .line 22
    :cond_0
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF824B"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 23
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->rid:Ljava/lang/String;

    goto/16 :goto_2

    .line 24
    :cond_1
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF824D"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 25
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6

    .line 27
    iget-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->exponent:Ljava/lang/String;

    goto :goto_2

    .line 29
    :cond_2
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF824E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 30
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->modulus:Ljava/lang/String;

    goto :goto_2

    .line 31
    :cond_3
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF824F"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 32
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->checksum:Ljava/lang/String;

    goto :goto_2

    .line 33
    :cond_4
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF8250"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 34
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->size:Ljava/lang/String;

    goto :goto_2

    .line 35
    :cond_5
    iget-object v7, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "9F22"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 36
    iget-object v6, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_6

    .line 38
    iget-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    iget-object v7, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/stripe/bbpos/bbdevice/CAPK;->index:Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 42
    :cond_7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 43
    :cond_8
    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v5, "FF8241"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 44
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method static aaa001(Ljava/lang/String;)Z
    .locals 1

    .line 45
    const-string v0, "sdkVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "productID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string v0, "formatID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, "vendorID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "isSupportedTrack1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "isSupportedTrack2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "isSupportedTrack3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "isSupportedNfc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string v0, "batteryPercentage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string v0, "bootloaderVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string v0, "firmwareVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "isUsbConnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, "isCharging"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "batteryLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "hardwareVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "pinKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, "pinKsn1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "pinKsn2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const-string v0, "pinKsn3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "pinKsn4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "trackKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v0, "trackKsn1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "trackKsn2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "trackKsn3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "trackKsn4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "emvKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string v0, "emvKsn1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "emvKsn2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    const-string v0, "emvKsn3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string v0, "emvKsn4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "csn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string v0, "terminalSettingVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const-string v0, "deviceSettingVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const-string v0, "coprocessorVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string v0, "coprocessorBootloaderVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "serialNumber"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const-string v0, "modelName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    const-string v0, "macKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const-string v0, "macKsn1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    const-string v0, "macKsn2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const-string v0, "macKsn3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "macKsn4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const-string v0, "nfcKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const-string v0, "messageKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    const-string v0, "cmacKsn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string v0, "bID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    const-string v0, "publicKeyVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, "caKeyVersion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const-string v0, "df8602"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string v0, "firmwareID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "bootloaderID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    const-string v0, "mcuInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const-string v0, "supportCubeSecurityMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const-string v0, "supportSPoCFeature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "isSupportedSoftwarePinPad"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const-string v0, "coinCellBatteryVoltage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const-string v0, "rssi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "deviceTamperStatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "iccReadSucc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "iccReadFail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string v0, "ctlReadSucc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "ctlReadFail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-string v0, "msrReadSucc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const-string v0, "msrReadFail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-string v0, "isSupportedPowerSaving"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "healthCheckStatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string v0, "internalTamperState"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const-string v0, "pinKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "pinKeyProfileID1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const-string v0, "pinKeyProfileID2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "pinKeyProfileID3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "pinKeyProfileID4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string v0, "emvKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "emvKeyProfileID1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "emvKeyProfileID2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-string v0, "emvKeyProfileID3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    const-string v0, "emvKeyProfileID4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string v0, "trackKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const-string v0, "trackKeyProfileID1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    const-string v0, "trackKeyProfileID2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string v0, "trackKeyProfileID3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "trackKeyProfileID4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string v0, "macKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "macKeyProfileID1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    const-string v0, "macKeyProfileID2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string v0, "macKeyProfileID3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string v0, "macKeyProfileID4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string v0, "spocKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const-string v0, "cmacKeyProfileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const-string v0, "hardwareID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    const-string v0, "defaultLanguage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-string v0, "supportedLanguages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "emvKeyModulusHash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "trackKeyModulusHash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    const-string v0, "fskPublicKeyHash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    const-string v0, "mmk1PublicKeyHash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string v0, "tmk0CmacKcv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    const-string v0, "tmk1CmacKcv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    const-string v0, "tmk2CmacKcv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const-string v0, "tmk3CmacKcv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    const-string v0, "isRebootRequired"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "mmk0PublicKeyHash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    const-string v0, "p2peReadiness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string v0, "p2peEnvironment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "firmwareDebugInfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const-string v0, "factoryMode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static aaa002(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;
    .locals 3

    .line 17
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eqz p0, :cond_25

    const/16 v1, 0x10

    .line 20
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v1, 0x49

    if-ne p0, v1, :cond_0

    .line 22
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_0
    const/16 v1, 0x4a

    if-ne p0, v1, :cond_1

    .line 24
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa026:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_1
    const/16 v1, 0x52

    if-ne p0, v1, :cond_2

    .line 26
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_2
    const/16 v2, 0x53

    if-ne p0, v2, :cond_3

    .line 28
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_3
    const/16 v2, 0x54

    if-ne p0, v2, :cond_4

    .line 30
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa030:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_4
    const/16 v2, 0x55

    if-ne p0, v2, :cond_5

    .line 32
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa029:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_5
    const/16 v2, 0x57

    if-ne p0, v2, :cond_6

    .line 34
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa027:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_6
    const/16 v2, 0x58

    if-ne p0, v2, :cond_7

    .line 36
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa027:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_7
    const/16 v2, 0x5b

    if-ne p0, v2, :cond_8

    .line 38
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_8
    const/16 v2, 0x5c

    if-ne p0, v2, :cond_9

    .line 40
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_9
    const/16 v2, 0x5d

    if-ne p0, v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0x5e

    if-ne p0, v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x5f

    if-ne p0, v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x60

    if-ne p0, v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x61

    if-ne p0, v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0x62

    if-ne p0, v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x63

    if-ne p0, v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x64

    if-ne p0, v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x65

    if-ne p0, v2, :cond_12

    .line 58
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa032:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_12
    const/16 v2, 0x66

    if-ne p0, v2, :cond_13

    .line 60
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa032:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_13
    const/16 v2, 0x67

    if-ne p0, v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0x68

    if-ne p0, v2, :cond_15

    goto :goto_0

    :cond_15
    const/16 v2, 0x6a

    if-ne p0, v2, :cond_16

    goto :goto_0

    :cond_16
    const/16 v2, 0x6b

    if-ne p0, v2, :cond_17

    goto :goto_0

    :cond_17
    const/16 v2, 0x6d

    if-ne p0, v2, :cond_18

    .line 69
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_18
    const/16 v2, 0x6e

    if-ne p0, v2, :cond_19

    goto :goto_0

    :cond_19
    const/16 v2, 0x6f

    if-ne p0, v2, :cond_1a

    goto :goto_0

    :cond_1a
    const/16 v2, 0x70

    if-ne p0, v2, :cond_1b

    goto :goto_0

    :cond_1b
    const/16 v2, 0x71

    if-ne p0, v2, :cond_1c

    goto :goto_0

    :cond_1c
    const/16 v2, 0x72

    if-ne p0, v2, :cond_1d

    goto :goto_0

    :cond_1d
    const/16 v2, 0x73

    if-ne p0, v2, :cond_1e

    goto :goto_0

    :cond_1e
    const/16 v2, 0x74

    if-ne p0, v2, :cond_1f

    .line 83
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_1f
    const/16 v2, 0x75

    if-ne p0, v2, :cond_20

    goto :goto_0

    :cond_20
    const/16 v2, 0x76

    if-ne p0, v2, :cond_21

    goto :goto_0

    :cond_21
    const/16 v2, 0x77

    if-ne p0, v2, :cond_22

    .line 89
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa014:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_22
    const/16 v2, 0x78

    if-ne p0, v2, :cond_23

    .line 91
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    return-object p0

    :cond_23
    if-ge p0, v1, :cond_24

    goto :goto_0

    .line 95
    :cond_24
    sget-object p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_25
    :goto_0
    return-object v0
.end method

.method static aaa002(Ljava/util/List;)Ljava/util/Hashtable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 4
    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v5, "FF8240"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    .line 7
    const-string v4, ""

    move v6, v1

    move-object v5, v4

    .line 8
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 9
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 10
    iget-object v8, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v9, "DF24"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 11
    iget-object v4, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    goto :goto_2

    .line 12
    :cond_0
    iget-object v8, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v9, "9F06"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 13
    iget-object v5, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method static aaa003(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "Invalid display string enum."

    const-string v1, "Cannot enter standby mode"

    const-string v2, "Unknown error"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    goto/16 :goto_0

    .line 358
    :pswitch_1
    const-string v0, "The reader is already connected to another device via Bluetooth."

    goto/16 :goto_0

    .line 359
    :pswitch_2
    const-string v0, "The reader is already connected to another device via USB."

    goto/16 :goto_0

    .line 360
    :pswitch_3
    const-string v0, "Invalid key management."

    goto/16 :goto_0

    .line 361
    :pswitch_4
    const-string v0, "Encryption error."

    goto/16 :goto_0

    .line 362
    :pswitch_5
    const-string v0, "Missing encryption keys."

    goto/16 :goto_0

    .line 363
    :pswitch_6
    const-string v0, "SRT read/write error."

    goto/16 :goto_0

    .line 364
    :pswitch_7
    const-string v0, "Invalid SRT data."

    goto/16 :goto_0

    .line 365
    :pswitch_8
    const-string v0, "Missing SRT command ID."

    goto/16 :goto_0

    .line 366
    :pswitch_9
    const-string v0, "Invalid SRT command ID."

    goto/16 :goto_0

    .line 367
    :pswitch_a
    const-string v0, "Invalid SRT block number."

    goto/16 :goto_0

    .line 368
    :pswitch_b
    const-string v0, "Missing SRT block number."

    goto/16 :goto_0

    .line 369
    :pswitch_c
    const-string v0, "Cannot power down by command."

    goto/16 :goto_0

    .line 370
    :pswitch_d
    const-string v0, "Not enough output buffer."

    goto/16 :goto_0

    .line 371
    :pswitch_e
    const-string v0, "The test is not available."

    goto/16 :goto_0

    .line 373
    :pswitch_f
    const-string v0, "Invalid amount input type options."

    goto/16 :goto_0

    .line 374
    :pswitch_10
    const-string v0, "Exceeded storage limit."

    goto/16 :goto_0

    .line 375
    :pswitch_11
    const-string v0, "The SDK is not compatible with this version of firmware."

    goto/16 :goto_0

    .line 376
    :pswitch_12
    const-string v0, "The config is not compatible with this version of firmware."

    goto/16 :goto_0

    .line 377
    :pswitch_13
    const-string v0, "Missing image background color."

    goto/16 :goto_0

    .line 378
    :pswitch_14
    const-string v0, "Missing image foreground color."

    goto/16 :goto_0

    .line 379
    :pswitch_15
    const-string v0, "Invalid image data."

    goto/16 :goto_0

    .line 380
    :pswitch_16
    const-string v0, "Invalid scroll direction."

    goto/16 :goto_0

    .line 381
    :pswitch_17
    const-string v0, "Invalid scroll speed."

    goto/16 :goto_0

    .line 383
    :pswitch_18
    const-string v0, "Exceeded maximum number of areas for background color."

    goto/16 :goto_0

    .line 384
    :pswitch_19
    const-string v0, "Exceeded maximum number of areas for foreground color."

    goto/16 :goto_0

    :pswitch_1a
    move-object v0, v1

    goto/16 :goto_0

    .line 387
    :pswitch_1b
    const-string v0, "Mutual Authentication Fail"

    goto/16 :goto_0

    .line 388
    :pswitch_1c
    const-string v0, "Cannot start a new transaction when no enablement token is received within the last 10 mins"

    goto/16 :goto_0

    .line 389
    :pswitch_1d
    const-string v0, "BLE pairing other Error"

    goto/16 :goto_0

    .line 390
    :pswitch_1e
    const-string v0, "BLE passkey timeout"

    goto/16 :goto_0

    .line 391
    :pswitch_1f
    const-string v0, "The algorithm of key does not match the intended operation"

    goto/16 :goto_0

    .line 392
    :pswitch_20
    const-string v0, "The MPOS device already paired with another device."

    goto/16 :goto_0

    .line 393
    :pswitch_21
    const-string v0, "This device does not support BLE Secure Connection (Bluetooth 4.2)."

    goto/16 :goto_0

    .line 394
    :pswitch_22
    const-string v0, "Incorrect Passkey error"

    goto/16 :goto_0

    .line 396
    :pswitch_23
    const-string v0, "Invalid QR code data"

    goto/16 :goto_0

    .line 397
    :pswitch_24
    const-string v0, "Invalid amount input type"

    goto/16 :goto_0

    .line 398
    :pswitch_25
    const-string v0, "Hardware cannot support swipe and tap at the same time."

    goto/16 :goto_0

    .line 399
    :pswitch_26
    const-string v0, "Invalid VAS merchant URL"

    goto/16 :goto_0

    .line 400
    :pswitch_27
    const-string v0, "Invalid VAS mode"

    goto/16 :goto_0

    .line 401
    :pswitch_28
    const-string v0, "Cannot start a new transaction within 30s of the last transaction"

    goto/16 :goto_0

    .line 402
    :pswitch_29
    const-string v0, "Invalid Function in Current Connection Mode"

    goto/16 :goto_0

    .line 403
    :pswitch_2a
    const-string v0, "Input Amount Incorrect"

    goto/16 :goto_0

    .line 404
    :pswitch_2b
    const-string v0, "No LED settings specifed"

    goto/16 :goto_0

    .line 405
    :pswitch_2c
    const-string v0, "LED Control Duration not match the flashing ON-OFF Interval."

    goto/16 :goto_0

    .line 406
    :pswitch_2d
    const-string v0, "Invalid OFF interval for flashing LED"

    goto/16 :goto_0

    .line 407
    :pswitch_2e
    const-string v0, "No OFF interval for flashing LED"

    goto/16 :goto_0

    .line 408
    :pswitch_2f
    const-string v0, "Invalid ON interval for flashing LED"

    goto/16 :goto_0

    .line 409
    :pswitch_30
    const-string v0, "No ON interval for flashing LED"

    goto/16 :goto_0

    .line 410
    :pswitch_31
    const-string v0, "Invalid LED Control Duration"

    goto/16 :goto_0

    .line 411
    :pswitch_32
    const-string v0, "No LED Control Duration"

    goto/16 :goto_0

    .line 412
    :pswitch_33
    const-string v0, "Invalid LED Mode"

    goto/16 :goto_0

    .line 413
    :pswitch_34
    const-string v0, "No LED Mode"

    goto/16 :goto_0

    .line 414
    :pswitch_35
    const-string v0, "Invalid LED Index"

    goto/16 :goto_0

    .line 415
    :pswitch_36
    const-string v0, "No LED Index"

    goto/16 :goto_0

    .line 416
    :pswitch_37
    const-string v0, "CAPK Checksum Not Match"

    goto/16 :goto_0

    .line 417
    :pswitch_38
    const-string v0, "CAPK Checksum Length != 20"

    goto/16 :goto_0

    .line 418
    :pswitch_39
    const-string v0, "No CAPK Checksum"

    goto/16 :goto_0

    .line 419
    :pswitch_3a
    const-string v0, "CAPK Modulus > 248 bytes"

    goto/16 :goto_0

    .line 420
    :pswitch_3b
    const-string v0, "CAPK Size not match Modulus"

    goto/16 :goto_0

    .line 421
    :pswitch_3c
    const-string v0, "No CAPK Modulus"

    goto/16 :goto_0

    .line 422
    :pswitch_3d
    const-string v0, "CAPK Size = 0"

    goto/16 :goto_0

    .line 423
    :pswitch_3e
    const-string v0, "No CAPK Size"

    goto/16 :goto_0

    .line 424
    :pswitch_3f
    const-string v0, "Invalid CAPK Exponent"

    goto/16 :goto_0

    .line 425
    :pswitch_40
    const-string v0, "No CAPK Exponent"

    goto/16 :goto_0

    .line 426
    :pswitch_41
    const-string v0, "CAPK Index = 0"

    goto/16 :goto_0

    .line 427
    :pswitch_42
    const-string v0, "No CAPK Index"

    goto/16 :goto_0

    .line 428
    :pswitch_43
    const-string v0, "CAPK RID Length != 5"

    goto/16 :goto_0

    .line 429
    :pswitch_44
    const-string v0, "No CAPK RID"

    goto/16 :goto_0

    .line 430
    :pswitch_45
    const-string v0, "CAPK Location >= 50"

    goto/16 :goto_0

    .line 431
    :pswitch_46
    const-string v0, "No CAPK Location"

    goto/16 :goto_0

    .line 432
    :pswitch_47
    const-string v0, "MIFARE Authentication Error"

    goto/16 :goto_0

    .line 433
    :pswitch_48
    const-string v0, "Function Not Support"

    goto/16 :goto_0

    .line 434
    :pswitch_49
    const-string v0, "Out of Memory"

    goto/16 :goto_0

    .line 435
    :pswitch_4a
    const-string v0, "End of File"

    goto/16 :goto_0

    .line 436
    :pswitch_4b
    const-string v0, "Packet Buffer Overflow"

    goto/16 :goto_0

    .line 437
    :pswitch_4c
    const-string v0, "Access Denied"

    goto/16 :goto_0

    .line 438
    :pswitch_4d
    const-string v0, "Unknown Tag Type"

    goto/16 :goto_0

    .line 439
    :pswitch_4e
    const-string v0, "No Card Detected"

    goto/16 :goto_0

    .line 440
    :pswitch_4f
    const-string v0, "Protocol Error"

    goto/16 :goto_0

    .line 441
    :pswitch_50
    const-string v0, "I/O Error"

    goto/16 :goto_0

    .line 442
    :pswitch_51
    const-string v0, "Integrity Check Failed"

    goto/16 :goto_0

    .line 443
    :pswitch_52
    const-string v0, "Raw Data Wrong Length"

    goto/16 :goto_0

    .line 444
    :pswitch_53
    const-string v0, "Card Scheme Not Match"

    goto/16 :goto_0

    .line 445
    :pswitch_54
    const-string v0, "Command Disabled"

    goto/16 :goto_0

    .line 446
    :pswitch_55
    const-string v0, "startPinEntry has to be called within 1s after onReturnCheckCardResult"

    goto/16 :goto_0

    .line 447
    :pswitch_56
    const-string v0, "PIN entry cannot be enabled. Please check the PAN is in swipe card data before calling startPinEntry."

    goto/16 :goto_0

    .line 448
    :pswitch_57
    const-string v0, "PAN Wrong Length"

    goto/16 :goto_0

    .line 449
    :pswitch_58
    const-string v0, "PIN Block Wrong Length"

    goto :goto_0

    .line 450
    :pswitch_59
    const-string v0, "No Check Card Mode"

    goto :goto_0

    .line 451
    :pswitch_5a
    const-string v0, "No Encrypted MAC Key"

    goto :goto_0

    .line 452
    :pswitch_5b
    const-string v0, "No Encrypted PIN Key"

    goto :goto_0

    .line 453
    :pswitch_5c
    const-string v0, "No Encrypted Data Key"

    goto :goto_0

    .line 454
    :pswitch_5d
    const-string v0, "Encrypted MAC Key Wrong KCV"

    goto :goto_0

    .line 455
    :pswitch_5e
    const-string v0, "Encrypted PIN Key Wrong KCV"

    goto :goto_0

    .line 456
    :pswitch_5f
    const-string v0, "Encrypted Data Key Wrong KCV"

    goto :goto_0

    .line 457
    :pswitch_60
    const-string v0, "Encrypted MAC Key Wrong Length"

    goto :goto_0

    .line 458
    :pswitch_61
    const-string v0, "Encrypted PIN Key Wrong Length"

    goto :goto_0

    .line 459
    :pswitch_62
    const-string v0, "Encrypted Data Key Wrong Length"

    goto :goto_0

    .line 460
    :pswitch_63
    const-string v0, "Unknown Input Error"

    goto :goto_0

    .line 461
    :pswitch_64
    const-string v0, "Order ID Wrong Length"

    goto :goto_0

    .line 462
    :pswitch_65
    const-string v0, "No order ID"

    goto :goto_0

    .line 463
    :pswitch_66
    const-string v0, "Random Number Wrong Length"

    goto :goto_0

    .line 464
    :pswitch_67
    const-string v0, "Working Key Wrong Length"

    goto :goto_0

    .line 465
    :pswitch_68
    const-string v0, "Initial Vector Wrong Length"

    goto :goto_0

    .line 466
    :pswitch_69
    const-string v0, "Encrypted Key Wrong KCV"

    goto :goto_0

    .line 467
    :pswitch_6a
    const-string v0, "Padding and Encryption Algorithm not Match"

    goto :goto_0

    .line 468
    :pswitch_6b
    const-string v0, "Encrypted Key Wrong Length"

    goto :goto_0

    .line 469
    :pswitch_6c
    const-string v0, "No Encrypted Key"

    goto :goto_0

    .line 470
    :pswitch_6d
    const-string v0, "No Random Number"

    goto :goto_0

    .line 471
    :pswitch_6e
    const-string v0, "No Key Index"

    goto :goto_0

    .line 472
    :pswitch_6f
    const-string v0, "No Raw Data"

    goto :goto_0

    .line 473
    :pswitch_70
    const-string v0, "No Initial Vector"

    goto :goto_0

    .line 474
    :pswitch_71
    const-string v0, "No Encrypted Method"

    .line 828
    :goto_0
    :pswitch_72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " - "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_72
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_72
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
