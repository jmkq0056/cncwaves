.class final enum Lcom/google/android/gms/internal/measurement/zzcq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzcq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzcq;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzcq;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzcq;

.field private static final enum zzd:Lcom/google/android/gms/internal/measurement/zzcq;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/measurement/zzcq;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v1, "ALL_CHECKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zza:Lcom/google/android/gms/internal/measurement/zzcq;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v2, "SKIP_COMPLIANCE_CHECK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcq;->zzb:Lcom/google/android/gms/internal/measurement/zzcq;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v3, "SKIP_SECURITY_CHECK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzcq;->zzd:Lcom/google/android/gms/internal/measurement/zzcq;

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzcq;

    const-string v4, "NO_CHECKS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzcq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzcq;->zzc:Lcom/google/android/gms/internal/measurement/zzcq;

    .line 5
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/measurement/zzcq;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zze:[Lcom/google/android/gms/internal/measurement/zzcq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzcq;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzcq;->zze:[Lcom/google/android/gms/internal/measurement/zzcq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzcq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzcq;

    return-object v0
.end method
