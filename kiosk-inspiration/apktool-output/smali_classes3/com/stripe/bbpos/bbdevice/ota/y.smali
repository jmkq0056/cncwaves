.class final Lcom/stripe/bbpos/bbdevice/ota/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/ota/y$a;,
        Lcom/stripe/bbpos/bbdevice/ota/y$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private A0:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private B0:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

.field private D:Ljava/lang/String;

.field private D0:I

.field private E:Ljava/lang/String;

.field private E0:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/k;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private a0:I

.field private b:Ljava/lang/String;

.field private b0:I

.field private c:Ljava/lang/String;

.field private c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

.field private d:Ljava/lang/String;

.field private d0:Ljava/lang/String;

.field private e:Z

.field private e0:Ljava/lang/String;

.field private f:Z

.field private f0:Ljava/lang/String;

.field private g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

.field private g0:Ljava/lang/String;

.field private h:Lcom/stripe/bbpos/bbdevice/ota/o;

.field private h0:Ljava/lang/String;

.field private i:Lcom/stripe/bbpos/bbdevice/ota/p;

.field private i0:Ljava/lang/String;

.field private j:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

.field private j0:I

.field private k:Ljava/lang/String;

.field private k0:Z

.field private l:[B

.field private l0:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private m0:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private n0:I

.field private o:Ljava/lang/String;

.field private o0:I

.field private p:Ljava/lang/String;

.field private p0:Z

.field private q:Ljava/lang/String;

.field private q0:Z

.field private r:Ljava/lang/String;

.field private r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field private s:Ljava/lang/String;

.field private s0:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private t0:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Ljava/lang/String;

.field private v:I

.field private v0:Ljava/lang/String;

.field private w:Ljava/io/ByteArrayOutputStream;

.field private w0:Ljava/lang/String;

.field private x:Z

.field private x0:Z

.field private y:Z

.field private y0:Z

.field private z:Ljava/lang/String;

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/stripe/bbpos/bbdevice/ota/y$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "romID"

    const-string v1, "targetVersionType"

    const-string v2, "listType"

    const-string v3, "AppSecret"

    const-string v4, "VendorSecret"

    const-string v5, "AppID"

    const-string v6, "VendorID"

    const-string v7, "] throw IllegalArgumentException \"Invalid keyProfileID\""

    const-string v8, "[BBDeviceOTAController] ["

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v9, ""

    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    .line 3
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    .line 4
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    .line 5
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    .line 12
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k:Ljava/lang/String;

    const/4 v10, 0x0

    .line 13
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l:[B

    .line 14
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m:Ljava/lang/String;

    .line 15
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n:Ljava/lang/String;

    .line 16
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o:Ljava/lang/String;

    .line 17
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p:Ljava/lang/String;

    .line 18
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q:Ljava/lang/String;

    .line 19
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r:Ljava/lang/String;

    .line 20
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s:Ljava/lang/String;

    .line 21
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t:Ljava/lang/String;

    .line 22
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    const/4 v11, 0x0

    .line 23
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    .line 27
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z:Ljava/lang/String;

    .line 28
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A:Ljava/lang/String;

    .line 29
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B:Ljava/lang/String;

    .line 30
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C:Ljava/lang/String;

    .line 31
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D:Ljava/lang/String;

    .line 32
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E:Ljava/lang/String;

    .line 33
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->F:Ljava/lang/String;

    .line 34
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->G:I

    .line 35
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->H:I

    .line 36
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->I:Ljava/lang/String;

    .line 37
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->J:Ljava/lang/String;

    .line 38
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->K:Ljava/lang/String;

    .line 39
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->L:Ljava/lang/String;

    .line 40
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->M:Ljava/lang/String;

    .line 41
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->N:Ljava/lang/String;

    .line 42
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->O:Ljava/lang/String;

    .line 43
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->P:Ljava/lang/String;

    .line 44
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Q:Ljava/lang/String;

    .line 45
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->R:Ljava/lang/String;

    .line 46
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->S:Ljava/lang/String;

    .line 47
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->T:Ljava/lang/String;

    .line 48
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->U:Ljava/lang/String;

    .line 49
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->V:Ljava/lang/String;

    .line 50
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->W:Ljava/lang/String;

    .line 51
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->X:Ljava/lang/String;

    .line 52
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Y:Ljava/lang/String;

    .line 53
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    .line 54
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a0:I

    .line 55
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    .line 63
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    .line 65
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l0:Ljava/lang/String;

    .line 66
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m0:Ljava/util/Hashtable;

    .line 67
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    .line 68
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    .line 80
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A0:Ljava/lang/String;

    .line 81
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B0:Ljava/lang/String;

    .line 82
    sget-object v12, Lcom/stripe/bbpos/bbdevice/ota/y$a;->a:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object v12, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    .line 83
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D0:I

    .line 84
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E0:Ljava/lang/String;

    .line 96
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 97
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_0
    const-string v6, "vendorID"

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    .line 102
    :goto_0
    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    goto :goto_1

    .line 105
    :cond_1
    const-string v5, "appID"

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    .line 108
    :goto_1
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    goto :goto_2

    .line 111
    :cond_2
    const-string v4, "vendorSecret"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    .line 114
    :goto_2
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    goto :goto_3

    .line 117
    :cond_3
    const-string v3, "appSecret"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    .line 120
    :goto_3
    const-string v3, "forceUpdate"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 122
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e:Z

    goto :goto_4

    .line 123
    :cond_4
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 124
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e:Z

    goto :goto_4

    .line 125
    :cond_5
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 126
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e:Z

    .line 129
    :cond_6
    :goto_4
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 130
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    goto :goto_5

    .line 131
    :cond_7
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 132
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    goto :goto_5

    .line 134
    :cond_8
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    .line 137
    :goto_5
    const-string v1, "firmwareVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d0:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 139
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d0:Ljava/lang/String;

    .line 142
    :cond_9
    const-string v1, "terminalSettingVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e0:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 144
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e0:Ljava/lang/String;

    .line 147
    :cond_a
    const-string v1, "deviceSettingVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f0:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 149
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f0:Ljava/lang/String;

    .line 152
    :cond_b
    const-string v1, "mainProcessorVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g0:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 154
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g0:Ljava/lang/String;

    .line 157
    :cond_c
    const-string v1, "coprocessorVersion"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h0:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 159
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h0:Ljava/lang/String;

    .line 162
    :cond_d
    const-string v1, "keyProfileName"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i0:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 164
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i0:Ljava/lang/String;

    .line 167
    :cond_e
    const-string v1, "keyProfileID"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 169
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    goto :goto_6

    .line 170
    :cond_f
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 171
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    goto :goto_6

    .line 172
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 173
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    .line 179
    :goto_6
    const-string v1, "applyToAll"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    .line 181
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k0:Z

    goto :goto_7

    .line 182
    :cond_11
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    .line 183
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k0:Z

    goto :goto_7

    .line 184
    :cond_12
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 185
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k0:Z

    .line 188
    :cond_13
    :goto_7
    const-string v1, "authOnly"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    .line 190
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z0:Z

    goto :goto_8

    .line 191
    :cond_14
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    .line 192
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z0:Z

    goto :goto_8

    .line 193
    :cond_15
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 194
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z0:Z

    .line 197
    :cond_16
    :goto_8
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 198
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A0:Ljava/lang/String;

    .line 201
    :cond_17
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m0:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-eq p2, v0, :cond_18

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p2, v0, :cond_19

    .line 208
    :cond_18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 211
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 214
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 217
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 223
    :cond_19
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p2, v0, :cond_1b

    .line 224
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A0:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_9

    .line 225
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing romID\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 226
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing romID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1b
    :goto_9
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    if-ne v0, v1, :cond_1d

    .line 231
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i0:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    if-eqz v0, :cond_1c

    goto :goto_a

    .line 232
    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing keyProfileName or keyProfileID\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 233
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing keyProfileName or keyProfileID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_1d
    :goto_a
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    .line 238
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    .line 239
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i:Lcom/stripe/bbpos/bbdevice/ota/p;

    .line 240
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;->NONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    .line 241
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f:Z

    .line 242
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k:Ljava/lang/String;

    .line 243
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l:[B

    .line 244
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m:Ljava/lang/String;

    .line 245
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n:Ljava/lang/String;

    .line 246
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o:Ljava/lang/String;

    .line 247
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p:Ljava/lang/String;

    .line 248
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q:Ljava/lang/String;

    .line 249
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r:Ljava/lang/String;

    .line 250
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s:Ljava/lang/String;

    .line 251
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t:Ljava/lang/String;

    .line 252
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    .line 253
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    .line 254
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w:Ljava/io/ByteArrayOutputStream;

    .line 255
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x:Z

    .line 256
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y:Z

    .line 257
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z:Ljava/lang/String;

    .line 258
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A:Ljava/lang/String;

    .line 259
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B:Ljava/lang/String;

    .line 260
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C:Ljava/lang/String;

    .line 261
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D:Ljava/lang/String;

    .line 262
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E:Ljava/lang/String;

    .line 263
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->F:Ljava/lang/String;

    .line 264
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->G:I

    .line 265
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->H:I

    .line 266
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->I:Ljava/lang/String;

    .line 267
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->J:Ljava/lang/String;

    .line 268
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->K:Ljava/lang/String;

    .line 269
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->L:Ljava/lang/String;

    .line 270
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->M:Ljava/lang/String;

    .line 271
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->N:Ljava/lang/String;

    .line 272
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->O:Ljava/lang/String;

    .line 273
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Q:Ljava/lang/String;

    .line 274
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->P:Ljava/lang/String;

    .line 275
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->R:Ljava/lang/String;

    .line 276
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->S:Ljava/lang/String;

    .line 277
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->T:Ljava/lang/String;

    .line 278
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->U:Ljava/lang/String;

    .line 279
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->V:Ljava/lang/String;

    .line 280
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->W:Ljava/lang/String;

    .line 281
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->X:Ljava/lang/String;

    .line 282
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Y:Ljava/lang/String;

    .line 283
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l0:Ljava/lang/String;

    .line 284
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    .line 285
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a0:I

    .line 286
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    .line 287
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    .line 288
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    .line 289
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p0:Z

    .line 290
    iput-boolean v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q0:Z

    .line 291
    iput-object v10, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 292
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s0:Ljava/lang/String;

    .line 294
    const-string p2, "encHexFilePath"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t0:Ljava/lang/String;

    .line 295
    const-string p2, "encHex"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u0:Ljava/lang/String;

    .line 296
    const-string p2, "tmk0"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v0:Ljava/lang/String;

    .line 297
    const-string p2, "dekBDK"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/f0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w0:Ljava/lang/String;

    const/4 p1, 0x1

    .line 298
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x0:Z

    .line 299
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y0:Z

    .line 300
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B0:Ljava/lang/String;

    .line 301
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/y$a;->a:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    .line 302
    iput v11, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D0:I

    .line 303
    iput-object v9, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E0:Ljava/lang/String;

    return-void

    .line 304
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing appSecret\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 305
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing appSecret"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing vendorSecret\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing vendorSecret"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing appID\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing appID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 310
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Missing vendorID\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 311
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing vendorID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_22
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 313
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid keyProfileID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/y;->A0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] throw IllegalArgumentException \"Input error\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;->EXTRA_DEBUG_MESSAGE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;

    invoke-static {v9, p1, p2}, Lcom/stripe/bbpos/bbdevice/ota/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$DebugLogType;)V

    .line 341
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->b:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_0

    .line 2
    const-string p0, "startRemoteFirmwareUpdate"

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->c:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_1

    .line 4
    const-string p0, "startRemoteConfigUpdate"

    return-object p0

    .line 5
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->d:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_2

    .line 6
    const-string p0, "startRemoteKeyInjection"

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->e:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_3

    .line 8
    const-string p0, "getTargetVersionWithData"

    return-object p0

    .line 9
    :cond_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->f:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_4

    .line 10
    const-string p0, "getTargetVersionListWithData"

    return-object p0

    .line 11
    :cond_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_5

    .line 12
    const-string p0, "setTargetVersionWithData"

    return-object p0

    .line 13
    :cond_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->i:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_6

    .line 14
    const-string p0, "startLocalConfigUpdateWithData"

    return-object p0

    .line 15
    :cond_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->h:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_7

    .line 16
    const-string p0, "startLocalFirmwareUpdateWithData"

    return-object p0

    .line 17
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/y$b;->j:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    if-ne p0, v0, :cond_8

    .line 18
    const-string p0, "getAPResourceSignature"

    return-object p0

    .line 20
    :cond_8
    const-string p0, "none"

    return-object p0
.end method


# virtual methods
.method A()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    return v0
.end method

.method A(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n:Ljava/lang/String;

    return-void
.end method

.method A0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/y;->a(Lcom/stripe/bbpos/bbdevice/ota/y$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method B()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->O:Ljava/lang/String;

    return-object v0
.end method

.method B(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r:Ljava/lang/String;

    return-void
.end method

.method B0()Lcom/stripe/bbpos/bbdevice/ota/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o:Ljava/lang/String;

    return-object v0
.end method

.method C(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->L:Ljava/lang/String;

    return-void
.end method

.method D()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->P:Ljava/lang/String;

    return-object v0
.end method

.method D(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->M:Ljava/lang/String;

    return-void
.end method

.method E()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Q:Ljava/lang/String;

    return-object v0
.end method

.method E(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C:Ljava/lang/String;

    return-void
.end method

.method F()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Y:Ljava/lang/String;

    return-object v0
.end method

.method F(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->W:Ljava/lang/String;

    return-void
.end method

.method G()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method G(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->V:Ljava/lang/String;

    return-void
.end method

.method H()Lcom/stripe/bbpos/bbdevice/ota/y$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    return-object v0
.end method

.method H(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->X:Ljava/lang/String;

    return-void
.end method

.method I()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a0:I

    return v0
.end method

.method I(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s:Ljava/lang/String;

    return-void
.end method

.method J()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->T:Ljava/lang/String;

    return-object v0
.end method

.method J(Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    move v4, v1

    .line 11
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 12
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ota/b0;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 13
    const-string v6, "DF856C"

    invoke-static {v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/c0;->a(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/b0;

    move-result-object v5

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ota/b0;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ota/f0;->h(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 14
    iget-object v5, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/bbpos/bbdevice/ota/b0;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method K()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l0:Ljava/lang/String;

    return-object v0
.end method

.method K(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->N:Ljava/lang/String;

    return-void
.end method

.method L()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    return v0
.end method

.method M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    return v0
.end method

.method N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->H:I

    return v0
.end method

.method O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z:Ljava/lang/String;

    return-object v0
.end method

.method P()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D0:I

    return v0
.end method

.method Q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->S:Ljava/lang/String;

    return-object v0
.end method

.method R()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->R:Ljava/lang/String;

    return-object v0
.end method

.method S()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m:Ljava/lang/String;

    return-object v0
.end method

.method T()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A0:Ljava/lang/String;

    return-object v0
.end method

.method U()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f0:Ljava/lang/String;

    return-object v0
.end method

.method V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d0:Ljava/lang/String;

    return-object v0
.end method

.method W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    return v0
.end method

.method X()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i0:Ljava/lang/String;

    return-object v0
.end method

.method Y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e0:Ljava/lang/String;

    return-object v0
.end method

.method Z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->U:Ljava/lang/String;

    return-object v0
.end method

.method a()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->G:I

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    return-void
.end method

.method a(Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 32
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/k;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/bbdevice/ota/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/o;

    invoke-direct {v0, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/o;-><init>(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    .line 24
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w0:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    new-instance p1, Lcom/stripe/bbpos/bbdevice/ota/d0;

    invoke-direct {p1}, Lcom/stripe/bbpos/bbdevice/ota/d0;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/o;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/stripe/bbpos/bbdevice/ota/d0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v0:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x:Z

    return-void
.end method

.method a(ZLcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q0:Z

    if-eqz p1, :cond_0

    .line 42
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 43
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a([B)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l:[B

    return-void
.end method

.method a0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const-string v1, "TMK0"

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v2, "DEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TMK1"

    if-nez v2, :cond_d

    .line 10
    const-string v2, "DEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 11
    const-string v2, "DEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 12
    const-string v2, "DEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 13
    const-string v2, "DEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 15
    :cond_1
    const-string v2, "MACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 16
    const-string v2, "MACK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 17
    const-string v2, "MACK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 18
    const-string v2, "MACK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 19
    const-string v2, "MACK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 21
    :cond_2
    const-string v2, "TEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 22
    const-string v2, "TEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 23
    const-string v2, "TEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 24
    const-string v2, "TEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 25
    const-string v2, "TEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    const-string v2, "CMACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v3

    .line 29
    :cond_4
    const-string v2, "PEK0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TMK2"

    if-eqz v2, :cond_5

    return-object v3

    .line 31
    :cond_5
    const-string v2, "PEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v3

    .line 33
    :cond_6
    const-string v2, "PEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v3

    .line 35
    :cond_7
    const-string v2, "PEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v3

    .line 37
    :cond_8
    const-string v2, "PEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v3

    .line 39
    :cond_9
    const-string v2, "PEK5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v3

    .line 41
    :cond_a
    const-string v2, "SPOC_MK_RA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "TMK3"

    if-eqz v2, :cond_b

    return-object v3

    .line 43
    :cond_b
    const-string v2, "SPOC_MK_SR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v3

    :cond_c
    return-object v1

    :cond_d
    :goto_0
    return-object v3

    :cond_e
    :goto_1
    return-object v1
.end method

.method b(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/y$a;->c:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 54
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/y$a;->b:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 56
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/y$a;->d:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    return-void

    .line 58
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ota/y$a;->a:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->J:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i:Lcom/stripe/bbpos/bbdevice/ota/p;

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/p;

    invoke-direct {v0, p1, p0}, Lcom/stripe/bbpos/bbdevice/ota/p;-><init>(Ljava/util/Hashtable;Lcom/stripe/bbpos/bbdevice/ota/y;)V

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i:Lcom/stripe/bbpos/bbdevice/ota/p;

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x0:Z

    return-void
.end method

.method b0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const-string v1, "05"

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v2, "DEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "06"

    if-nez v2, :cond_e

    .line 10
    const-string v2, "DEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 11
    const-string v2, "DEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 12
    const-string v2, "DEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 13
    const-string v2, "DEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 15
    :cond_2
    const-string v2, "MACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 16
    const-string v2, "MACK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 17
    const-string v2, "MACK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 18
    const-string v2, "MACK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 19
    const-string v2, "MACK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 21
    :cond_3
    const-string v2, "TEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 22
    const-string v2, "TEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 23
    const-string v2, "TEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 24
    const-string v2, "TEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 25
    const-string v2, "TEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    const-string v2, "CMACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v3

    .line 29
    :cond_5
    const-string v2, "PEK0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "07"

    if-eqz v2, :cond_6

    return-object v3

    .line 31
    :cond_6
    const-string v2, "PEK1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v3

    .line 33
    :cond_7
    const-string v2, "PEK2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v3

    .line 35
    :cond_8
    const-string v2, "PEK3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-object v3

    .line 37
    :cond_9
    const-string v2, "PEK4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v3

    .line 39
    :cond_a
    const-string v2, "PEK5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v3

    .line 41
    :cond_b
    const-string v2, "SPOC_MK_RA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "08"

    if-eqz v2, :cond_c

    return-object v3

    .line 43
    :cond_c
    const-string v2, "SPOC_MK_SR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v3

    :cond_d
    return-object v1

    :cond_e
    :goto_0
    return-object v3

    :cond_f
    :goto_1
    return-object v1
.end method

.method c(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->K:Ljava/lang/String;

    return-void
.end method

.method c(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y0:Z

    return-void
.end method

.method c0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->L:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const-string v1, "000000"

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ota/f0;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ota/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v3, "DUKPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    const-string v0, "01"

    goto :goto_0

    .line 16
    :cond_2
    const-string v3, "MK_SK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    const-string v0, "02"

    goto :goto_0

    .line 18
    :cond_3
    const-string v3, "FK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    const-string v0, "03"

    goto :goto_0

    .line 20
    :cond_4
    const-string v3, "AES_DUKPT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    const-string v0, "11"

    goto :goto_0

    .line 22
    :cond_5
    const-string v3, "RSA_PUBLIC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 23
    const-string v0, "04"

    .line 27
    :goto_0
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/ota/k;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ota/k;->c()Ljava/lang/String;

    move-result-object v2

    .line 28
    const-string v3, "DEK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 29
    const-string v1, "0202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_6
    const-string v3, "MACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 31
    const-string v1, "0404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_7
    const-string v3, "TEK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 33
    const-string v1, "0303"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_8
    const-string v3, "PEK0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    const-string v1, "0101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_9
    const-string v3, "PEK1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    const-string v1, "0909"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_a
    const-string v3, "PEK2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 39
    const-string v1, "0A0A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_b
    const-string v3, "PEK3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 41
    const-string v1, "0B0B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_c
    const-string v3, "PEK4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 43
    const-string v1, "0C0C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_d
    const-string v3, "PEK5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 45
    const-string v1, "0D0D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_e
    const-string v3, "SPOC_MK_RA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 47
    const-string v1, "0E0E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_f
    const-string v3, "SPOC_MK_SR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 49
    const-string v1, "0F0F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_10
    const-string v3, "DEK1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 51
    const-string v1, "1818"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_11
    const-string v3, "DEK2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 53
    const-string v1, "1919"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_12
    const-string v3, "DEK3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 55
    const-string v1, "2020"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_13
    const-string v3, "DEK4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 57
    const-string v1, "2121"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_14
    const-string v3, "TEK1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 59
    const-string v1, "2222"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_15
    const-string v3, "TEK2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 61
    const-string v1, "2323"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_16
    const-string v3, "TEK3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 63
    const-string v1, "2424"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_17
    const-string v3, "TEK4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 65
    const-string v1, "2525"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_18
    const-string v3, "MACK1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 67
    const-string v1, "2626"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_19
    const-string v3, "MACK2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 69
    const-string v1, "2727"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_1a
    const-string v3, "MACK3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 71
    const-string v1, "2828"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_1b
    const-string v3, "MACK4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 73
    const-string v1, "2929"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_1c
    const-string v3, "CMACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 75
    const-string v1, "3030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    :goto_1
    return-object v1
.end method

.method d(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a0:I

    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->I:Ljava/lang/String;

    return-void
.end method

.method d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y:Z

    return-void
.end method

.method d0()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s0:Ljava/lang/String;

    return-void
.end method

.method e(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q0:Z

    return-void
.end method

.method e0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    return-object v0
.end method

.method f(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u0:Ljava/lang/String;

    return-void
.end method

.method f(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p0:Z

    return-void
.end method

.method f0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v0:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method g(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->H:I

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p:Ljava/lang/String;

    return-void
.end method

.method g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f:Z

    return-void
.end method

.method g0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->W:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->J:Ljava/lang/String;

    return-object v0
.end method

.method h(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D0:I

    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q:Ljava/lang/String;

    return-void
.end method

.method h0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->V:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->I:Ljava/lang/String;

    return-object v0
.end method

.method i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    return-void
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B:Ljava/lang/String;

    return-void
.end method

.method i0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s:Ljava/lang/String;

    return-object v0
.end method

.method j()Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    return-object v0
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A:Ljava/lang/String;

    return-void
.end method

.method j0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ota/b0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s0:Ljava/lang/String;

    return-object v0
.end method

.method k(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E0:Ljava/lang/String;

    return-void
.end method

.method k0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    return v0
.end method

.method l()Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    return-object v0
.end method

.method l(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B0:Ljava/lang/String;

    return-void
.end method

.method l0()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w0:Ljava/lang/String;

    return-object v0
.end method

.method m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->O:Ljava/lang/String;

    return-void
.end method

.method m0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method n()Lcom/stripe/bbpos/bbdevice/ota/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    return-object v0
.end method

.method n(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E:Ljava/lang/String;

    return-void
.end method

.method n0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/stripe/bbpos/bbdevice/ota/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i:Lcom/stripe/bbpos/bbdevice/ota/p;

    return-object v0
.end method

.method o(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o:Ljava/lang/String;

    return-void
.end method

.method o0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->N:Ljava/lang/String;

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u0:Ljava/lang/String;

    return-object v0
.end method

.method p(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->P:Ljava/lang/String;

    return-void
.end method

.method p0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    return-void
.end method

.method q()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t0:Ljava/lang/String;

    return-object v0
.end method

.method q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Q:Ljava/lang/String;

    return-void
.end method

.method q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z0:Z

    return v0
.end method

.method r(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Y:Ljava/lang/String;

    return-void
.end method

.method r()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l:[B

    return-object v0
.end method

.method r0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x:Z

    return v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p:Ljava/lang/String;

    return-object v0
.end method

.method s(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->T:Ljava/lang/String;

    return-void
.end method

.method s0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e:Z

    return v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B:Ljava/lang/String;

    return-object v0
.end method

.method t(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l0:Ljava/lang/String;

    return-void
.end method

.method t0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionData{vendorID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', vendorSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', appSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', forceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stopProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g:Lcom/stripe/bbpos/bbdevice/ota/y$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceInfoData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h:Lcom/stripe/bbpos/bbdevice/ota/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceInfoDataSP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i:Lcom/stripe/bbpos/bbdevice/ota/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ConnectionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bearerToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l:[B

    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', singleMcuInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', multipleMcuInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encResourceHash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encResourceVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sourceAndCmac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', updateTargetBootloadVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', updateTargetBootloaderRaw=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', updateTargetBootloaderCommandListSorted=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', updateTargetBootloaderCommandSteps=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', bootloaderUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', hasErrorDuringBootloaderUpdateAndNeedToExitPassThroughModeBeforeReturnResult=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', rawHexSignature=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', firmwareIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progressPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", challengeTMKxEncryptedR1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', challengeResponseKEKEncryptedR1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', challengeResponseKEKEncryptedR1InTr31Format=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', TMKxEncryptedKEK=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', TMKxEncryptedKEKInTr31Format=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', webServiceAuthSessionToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', kcvOfKek=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mutualAuthorizationChallengeFullTlv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mutualAuthorizationConfirmFullTlvForKcvOfKek=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', resourceGetterFullTlv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', resourceAuthDataGetterFullTlv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', otaKeyGetterFullTlv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', signCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tr31Flk=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tr31Fak=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tr31Wk=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', notifyStatus=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', otaKeyList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->Z:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origOtaKeyListSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->a0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", injectedNumberOfKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->b0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetVersionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->c0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setTargetVersionFirmwareVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->d0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionTerminalSettingVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionDeviceSettingVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionMainProcessorVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionCoprocessorVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionKeyProfileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', setTargetVersionKeyProfileID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->j0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setTargetApplyToAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otaServerUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->l0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', fallbackInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m0:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pollingDeviceInfoWSP7XRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pollingDeviceInfoRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifiedStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needChangeOTAResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeOTAResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->r0:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changeOTAResultMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->s0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encHexFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', encHex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->u0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', tmk0=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->v0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', dekBDK=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->w0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', flagSkipInjectMmk1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->x0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flagTmk0CmacKcvMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->y0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", romId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fakDecryptedSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firmwareOperatingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteKeyInjectionRetryCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->A:Ljava/lang/String;

    return-object v0
.end method

.method u(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->D:Ljava/lang/String;

    return-void
.end method

.method u0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->q0:Z

    return v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->E0:Ljava/lang/String;

    return-object v0
.end method

.method v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->z:Ljava/lang/String;

    return-void
.end method

.method v0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->p0:Z

    return v0
.end method

.method w()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->B0:Ljava/lang/String;

    return-object v0
.end method

.method w(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->S:Ljava/lang/String;

    return-void
.end method

.method w0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->k0:Z

    return v0
.end method

.method x()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m0:Ljava/util/Hashtable;

    return-object v0
.end method

.method x(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->R:Ljava/lang/String;

    return-void
.end method

.method x0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->f:Z

    return v0
.end method

.method y()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->G:I

    return v0
.end method

.method y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->m:Ljava/lang/String;

    return-void
.end method

.method y0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->o0:I

    :cond_0
    return-void
.end method

.method z()Lcom/stripe/bbpos/bbdevice/ota/y$a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->C0:Lcom/stripe/bbpos/bbdevice/ota/y$a;

    return-object v0
.end method

.method z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->U:Ljava/lang/String;

    return-void
.end method

.method z0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    iput v0, p0, Lcom/stripe/bbpos/bbdevice/ota/y;->n0:I

    :cond_0
    return-void
.end method
