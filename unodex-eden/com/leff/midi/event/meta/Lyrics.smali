.class public Lcom/leff/midi/event/meta/Lyrics;
.super Lcom/leff/midi/event/meta/TextualMetaEvent;
.source "Lyrics.java"


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 15
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "lyric"    # Ljava/lang/String;

    .prologue
    .line 7
    const/4 v6, 0x5

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/leff/midi/event/meta/TextualMetaEvent;-><init>(JJILjava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getLyric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/leff/midi/event/meta/Lyrics;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLyric(Ljava/lang/String;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/leff/midi/event/meta/Lyrics;->setText(Ljava/lang/String;)V

    .line 13
    return-void
.end method
