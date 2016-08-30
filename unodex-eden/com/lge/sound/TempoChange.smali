.class public Lcom/lge/sound/TempoChange;
.super Ljava/lang/Object;
.source "TempoChange.java"


# static fields
.field private static final KEY_PARAMETER_LGE_PLAYBACK_SPEED:I = 0x138e

.field private static final TAG:Ljava/lang/String; = "TempoChange"


# instance fields
.field private final DEBUG:Z

.field private mMediaPlayer:Lcom/lge/media/MediaPlayerEx;


# direct methods
.method public constructor <init>(Lcom/lge/media/MediaPlayerEx;)V
    .registers 5
    .param p1, "mp"    # Lcom/lge/media/MediaPlayerEx;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sound/TempoChange;->DEBUG:Z

    .line 31
    iput-object p1, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    .line 33
    const-string v0, "TempoChange"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TempoChange MediaPlayer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method private declared-synchronized getMediaPlayerParam(I)Landroid/os/Parcel;
    .registers 6
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    monitor-enter p0

    const/4 v0, 0x0

    .line 137
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_3
    iget-object v2, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v2, :cond_d

    .line 139
    iget-object v2, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    invoke-virtual {v2, p1}, Lcom/lge/media/MediaPlayerEx;->getParcelParameter(I)Landroid/os/Parcel;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_2c
    .catchall {:try_start_3 .. :try_end_c} :catchall_38

    move-result-object v0

    .line 149
    :cond_d
    if-nez v0, :cond_29

    .line 151
    :try_start_f
    const-string v1, "TempoChange"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMediaPlayerParam("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_38

    :cond_29
    move-object v1, v0

    .line 154
    :goto_2a
    monitor-exit p0

    return-object v1

    .line 144
    :catch_2c
    move-exception v2

    :try_start_2d
    const-string v2, "TempoChange"

    const-string v3, "Exception occurs calling on getParameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    goto :goto_2a

    .line 135
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized setMediaPlayerParam(ILandroid/os/Parcel;)Z
    .registers 7
    .param p1, "key"    # I
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    .line 105
    .local v0, "result":Z
    :try_start_2
    iget-object v1, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-eqz v1, :cond_c

    .line 107
    iget-object v1, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    invoke-virtual {v1, p1, p2}, Lcom/lge/media/MediaPlayerEx;->setParameter(ILandroid/os/Parcel;)Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_b} :catch_2b
    .catchall {:try_start_2 .. :try_end_b} :catchall_38

    move-result v0

    .line 117
    :cond_c
    if-nez v0, :cond_28

    .line 119
    :try_start_e
    const-string v1, "TempoChange"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setMediaPlayerParam("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_38

    :cond_28
    move v1, v0

    .line 122
    :goto_29
    monitor-exit p0

    return v1

    .line 112
    :catch_2b
    move-exception v1

    :try_start_2c
    const-string v1, "TempoChange"

    const-string v2, "Exception occurs calling on setParameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_38

    .line 114
    const/4 v1, 0x0

    goto :goto_29

    .line 102
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getPlaybackSpeed()F
    .registers 6

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iget-object v2, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_e

    .line 74
    const-string v2, "TempoChange"

    const-string v3, "getPlaybackSpeed : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_d
    :goto_d
    return v1

    .line 78
    :cond_e
    const/16 v2, 0x138e

    invoke-direct {p0, v2}, Lcom/lge/sound/TempoChange;->getMediaPlayerParam(I)Landroid/os/Parcel;

    move-result-object v0

    .line 79
    .local v0, "parcel":Landroid/os/Parcel;
    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 84
    .local v1, "speed":F
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    const-string v2, "TempoChange"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPlaybackSpeed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setPlaybackSpeed(F)Z
    .registers 7
    .param p1, "speed"    # F

    .prologue
    .line 46
    iget-object v2, p0, Lcom/lge/sound/TempoChange;->mMediaPlayer:Lcom/lge/media/MediaPlayerEx;

    if-nez v2, :cond_d

    .line 48
    const-string v2, "TempoChange"

    const-string v3, "setPlaybackSpeed : media player has been released!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .line 60
    :goto_c
    return v1

    .line 53
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 55
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 56
    const-string v2, "TempoChange"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setPlaybackSpeed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/16 v2, 0x138e

    invoke-direct {p0, v2, v0}, Lcom/lge/sound/TempoChange;->setMediaPlayerParam(ILandroid/os/Parcel;)Z

    move-result v1

    .line 58
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_c
.end method
