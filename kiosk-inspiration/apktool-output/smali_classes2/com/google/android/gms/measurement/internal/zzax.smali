.class public final Lcom/google/android/gms/measurement/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 47
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;J)V
    .locals 2

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzax;->zza:Ljava/lang/String;

    const/4 v0, 0x2

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    .line 53
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const-wide/16 p2, -0x1

    .line 54
    const-string p4, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    invoke-static {p1, p4, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/zzar;->zza(Lcom/google/android/gms/measurement/internal/zzar;Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzax;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzav;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-string v6, "app_id = ? and rowid > ?"

    const/4 v12, 0x2

    .line 3
    new-array v7, v12, [Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzax;->zza:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v0, v7, v13

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzb:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    aput-object v0, v7, v14

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Lcom/google/android/gms/measurement/internal/zzar;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzar;->f_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "raw_events"

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v5, v13

    const-string v0, "name"

    aput-object v0, v5, v14

    const-string v0, "timestamp"

    aput-object v0, v5, v12

    const-string v0, "metadata_fingerprint"

    const/4 v8, 0x3

    aput-object v0, v5, v8

    const-string v0, "data"

    const/4 v9, 0x4

    aput-object v0, v5, v9

    const-string v0, "realtime"

    const/4 v10, 0x5

    aput-object v0, v5, v10

    move v11, v10

    const-string v10, "rowid"

    move/from16 v16, v11

    const-string v11, "1000"

    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v15, v16

    move/from16 v14, v17

    move/from16 v12, v18

    .line 7
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 13
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 14
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 15
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v18, 0x1

    cmp-long v0, v9, v18

    if-nez v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v13

    .line 16
    :goto_1
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 17
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzb:J

    cmp-long v4, v5, v10

    if-lez v4, :cond_3

    .line 18
    iput-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzb:J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgf$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/measurement/internal/zzpj;->zza(Lcom/google/android/gms/internal/measurement/zzlp;[B)Lcom/google/android/gms/internal/measurement/zzlp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x1

    .line 27
    :try_start_4
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 28
    :cond_4
    const-string v4, ""

    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;

    move-result-object v4

    const/4 v10, 0x2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzgf$zzf$zza;

    .line 29
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkg$zza;->zzaj()Lcom/google/android/gms/internal/measurement/zzlm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkg;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgf$zzf;

    move/from16 v16, v10

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(JJZLcom/google/android/gms/internal/measurement/zzgf$zzf;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    move-exception v0

    const/16 v16, 0x2

    .line 22
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Data loss. Failed to merge raw event. appId"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzax;->zza:Ljava/lang/String;

    .line 24
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 25
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    .line 32
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_5
    const/4 v12, 0x4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v3

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v15, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v15, 0x0

    .line 34
    :goto_4
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzax;->zzc:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Data loss. Error querying raw events batch. appId"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzax;->zza:Ljava/lang/String;

    .line 36
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 37
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v15, :cond_6

    .line 39
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    return-object v2

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v15, :cond_7

    .line 41
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_7
    throw v0
.end method
