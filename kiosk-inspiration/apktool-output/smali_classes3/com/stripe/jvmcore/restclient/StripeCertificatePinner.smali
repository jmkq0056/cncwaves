.class public final Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;
.super Ljava/lang/Object;
.source "StripeCertificatePinner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0008X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;",
        "",
        "()V",
        "certificatePinner",
        "Lokhttp3/CertificatePinner;",
        "getCertificatePinner",
        "()Lokhttp3/CertificatePinner;",
        "pinDigiCertGlobalRootCA",
        "",
        "pinDigiCertGlobalRootG2",
        "pinDigiCertGlobalRootG3",
        "pinDigiCertHighAssuranceEvRootCA",
        "pinEntrustRootCA",
        "pinEntrustRootCA2048",
        "pinEntrustRootCAEC1",
        "pinEntrustRootCAG2",
        "pinGlobalSignRootCAECCR5",
        "pinGlobalSignRootCAR3",
        "pinGlobalSignRootCAR6",
        "base"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;

.field private static final certificatePinner:Lokhttp3/CertificatePinner;

.field public static final pinDigiCertGlobalRootCA:Ljava/lang/String; = "sha256/r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

.field public static final pinDigiCertGlobalRootG2:Ljava/lang/String; = "sha256/8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik="

.field public static final pinDigiCertGlobalRootG3:Ljava/lang/String; = "sha256/Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw="

.field public static final pinDigiCertHighAssuranceEvRootCA:Ljava/lang/String; = "sha256/WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

.field public static final pinEntrustRootCA:Ljava/lang/String; = "sha256/bb+uANN7nNc/j7R95lkXrwDg3d9C286sIMF8AnXuIJU="

.field public static final pinEntrustRootCA2048:Ljava/lang/String; = "sha256/HqPF5D7WbC2imDpCpKebHpBnhs6fG1hiFBmgBGOofTg="

.field public static final pinEntrustRootCAEC1:Ljava/lang/String; = "sha256//qK31kX7pz11PB7Jp4cMQOH3sMVh6Se5hb9xGGbjbyI="

.field public static final pinEntrustRootCAG2:Ljava/lang/String; = "sha256/du6FkDdMcVQ3u8prumAo6t3i3G27uMP2EOhR8R0at/U="

.field public static final pinGlobalSignRootCAECCR5:Ljava/lang/String; = "sha256/fg6tdrtoGdwvVFEahDVPboswe53YIFjqbABPAdndpd8="

.field public static final pinGlobalSignRootCAR3:Ljava/lang/String; = "sha256/cGuxAXyFXFkWm61cF4HPWX8S0srS9j0aSqN0k4AP+4A="

.field public static final pinGlobalSignRootCAR6:Ljava/lang/String; = "sha256/aCdH+LpiG4fN07wpXtXKvOciocDANj0daLOJKNJ4fx4="


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;

    invoke-direct {v0}, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;->INSTANCE:Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;

    .line 39
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    const/16 v1, 0xb

    .line 43
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sha256/r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 44
    const-string v3, "sha256/8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 45
    const-string v3, "sha256/Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 46
    const-string v3, "sha256/WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 47
    const-string v3, "sha256/cGuxAXyFXFkWm61cF4HPWX8S0srS9j0aSqN0k4AP+4A="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 48
    const-string v3, "sha256/aCdH+LpiG4fN07wpXtXKvOciocDANj0daLOJKNJ4fx4="

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 49
    const-string v3, "sha256/fg6tdrtoGdwvVFEahDVPboswe53YIFjqbABPAdndpd8="

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 50
    const-string v3, "sha256/HqPF5D7WbC2imDpCpKebHpBnhs6fG1hiFBmgBGOofTg="

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 51
    const-string v3, "sha256/bb+uANN7nNc/j7R95lkXrwDg3d9C286sIMF8AnXuIJU="

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 52
    const-string v3, "sha256/du6FkDdMcVQ3u8prumAo6t3i3G27uMP2EOhR8R0at/U="

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 53
    const-string v3, "sha256//qK31kX7pz11PB7Jp4cMQOH3sMVh6Se5hb9xGGbjbyI="

    aput-object v3, v1, v2

    .line 41
    const-string v2, "api.stripe.com"

    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;->certificatePinner:Lokhttp3/CertificatePinner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCertificatePinner()Lokhttp3/CertificatePinner;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/jvmcore/restclient/StripeCertificatePinner;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method
