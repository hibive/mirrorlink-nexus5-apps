.class public Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;
.super Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
.source "MockRadioCommandHandler.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$internal$hardware$fmradio$FMRadioCommand:[I = null

.field private static final T:Ljava/lang/String; = "FMFRW_MockRadioCommandHandler"


# instance fields
.field private mContext:Landroid/content/Context;

.field private radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$internal$hardware$fmradio$FMRadioCommand()[I
    .registers 3

    .prologue
    .line 18
    sget-object v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->$SWITCH_TABLE$com$lge$internal$hardware$fmradio$FMRadioCommand:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->values()[Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_51c

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_519

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_516

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_513

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_510

    :goto_39
    :try_start_39
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->INITIALIZE_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50d

    :goto_42
    :try_start_42
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->NO_OP:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_50a

    :goto_4b
    :try_start_4b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_507

    :goto_55
    :try_start_55
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_5f} :catch_504

    :goto_5f
    :try_start_5f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_501

    :goto_69
    :try_start_69
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_4fe

    :goto_73
    :try_start_73
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_4fb

    :goto_7d
    :try_start_7d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_87} :catch_4f8

    :goto_87
    :try_start_87
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_OFF_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_91} :catch_4f5

    :goto_91
    :try_start_91
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_4f2

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_4ef

    :goto_a5
    :try_start_a5
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_af} :catch_4ec

    :goto_af
    :try_start_af
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_b9} :catch_4e9

    :goto_b9
    :try_start_b9
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c3} :catch_4e6

    :goto_c3
    :try_start_c3
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cd} :catch_4e3

    :goto_cd
    :try_start_cd
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_ON_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cd .. :try_end_d7} :catch_4e0

    :goto_d7
    :try_start_d7
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e1} :catch_4dd

    :goto_e1
    :try_start_e1
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_ANNOUNCE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e1 .. :try_end_eb} :catch_4da

    :goto_eb
    :try_start_eb
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_ANNOUNCED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_eb .. :try_end_f5} :catch_4d7

    :goto_f5
    :try_start_f5
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_ff} :catch_4d4

    :goto_ff
    :try_start_ff
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_109} :catch_4d1

    :goto_109
    :try_start_109
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_113} :catch_4ce

    :goto_113
    :try_start_113
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_11d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11d} :catch_4cb

    :goto_11d
    :try_start_11d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11d .. :try_end_127} :catch_4c8

    :goto_127
    :try_start_127
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_PAUSE_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_131
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_131} :catch_4c5

    :goto_131
    :try_start_131
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_13b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_131 .. :try_end_13b} :catch_4c2

    :goto_13b
    :try_start_13b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_ANNOUNCED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_145
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13b .. :try_end_145} :catch_4bf

    :goto_145
    :try_start_145
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_14f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_14f} :catch_4bc

    :goto_14f
    :try_start_14f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_159
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14f .. :try_end_159} :catch_4b9

    :goto_159
    :try_start_159
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_163
    .catch Ljava/lang/NoSuchFieldError; {:try_start_159 .. :try_end_163} :catch_4b6

    :goto_163
    :try_start_163
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_163 .. :try_end_16d} :catch_4b3

    :goto_16d
    :try_start_16d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_177
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16d .. :try_end_177} :catch_4b0

    :goto_177
    :try_start_177
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RADIO_RESUME_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_181} :catch_4ad

    :goto_181
    :try_start_181
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5c

    aput v2, v0, v1
    :try_end_18b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_181 .. :try_end_18b} :catch_4aa

    :goto_18b
    :try_start_18b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x61

    aput v2, v0, v1
    :try_end_195
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_195} :catch_4a7

    :goto_195
    :try_start_195
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x60

    aput v2, v0, v1
    :try_end_19f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_195 .. :try_end_19f} :catch_4a4

    :goto_19f
    :try_start_19f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x62

    aput v2, v0, v1
    :try_end_1a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19f .. :try_end_1a9} :catch_4a1

    :goto_1a9
    :try_start_1a9
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5f

    aput v2, v0, v1
    :try_end_1b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b3} :catch_49e

    :goto_1b3
    :try_start_1b3
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5d

    aput v2, v0, v1
    :try_end_1bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b3 .. :try_end_1bd} :catch_49b

    :goto_1bd
    :try_start_1bd
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_OFF_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5e

    aput v2, v0, v1
    :try_end_1c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bd .. :try_end_1c7} :catch_498

    :goto_1c7
    :try_start_1c7
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_1d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c7 .. :try_end_1d1} :catch_495

    :goto_1d1
    :try_start_1d1
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_1db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1db} :catch_492

    :goto_1db
    :try_start_1db
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_1e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1db .. :try_end_1e5} :catch_48f

    :goto_1e5
    :try_start_1e5
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x5b

    aput v2, v0, v1
    :try_end_1ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e5 .. :try_end_1ef} :catch_48c

    :goto_1ef
    :try_start_1ef
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_1f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ef .. :try_end_1f9} :catch_489

    :goto_1f9
    :try_start_1f9
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_203
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f9 .. :try_end_203} :catch_486

    :goto_203
    :try_start_203
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_ON_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_203 .. :try_end_20d} :catch_483

    :goto_20d
    :try_start_20d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_PS:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x63

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_217} :catch_480

    :goto_217
    :try_start_217
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_PT:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x64

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_47d

    :goto_221
    :try_start_221
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->RDS_RT:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x65

    aput v2, v0, v1
    :try_end_22b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22b} :catch_47a

    :goto_22b
    :try_start_22b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_235
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22b .. :try_end_235} :catch_477

    :goto_235
    :try_start_235
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_23f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_235 .. :try_end_23f} :catch_474

    :goto_23f
    :try_start_23f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_249
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23f .. :try_end_249} :catch_471

    :goto_249
    :try_start_249
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_253
    .catch Ljava/lang/NoSuchFieldError; {:try_start_249 .. :try_end_253} :catch_46e

    :goto_253
    :try_start_253
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_25d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_253 .. :try_end_25d} :catch_46b

    :goto_25d
    :try_start_25d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_267
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_267} :catch_468

    :goto_267
    :try_start_267
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_271
    .catch Ljava/lang/NoSuchFieldError; {:try_start_267 .. :try_end_271} :catch_465

    :goto_271
    :try_start_271
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_STOP:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_27b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_271 .. :try_end_27b} :catch_462

    :goto_27b
    :try_start_27b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_BACKWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_285
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27b .. :try_end_285} :catch_45f

    :goto_285
    :try_start_285
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_28f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_285 .. :try_end_28f} :catch_45c

    :goto_28f
    :try_start_28f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_299
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28f .. :try_end_299} :catch_459

    :goto_299
    :try_start_299
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FORWARD:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_2a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_299 .. :try_end_2a3} :catch_456

    :goto_2a3
    :try_start_2a3
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_2ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a3 .. :try_end_2ad} :catch_453

    :goto_2ad
    :try_start_2ad
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_2b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2ad .. :try_end_2b7} :catch_450

    :goto_2b7
    :try_start_2b7
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_2c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b7 .. :try_end_2c1} :catch_44d

    :goto_2c1
    :try_start_2c1
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_2cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c1 .. :try_end_2cb} :catch_44a

    :goto_2cb
    :try_start_2cb
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_STOP:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_2d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cb .. :try_end_2d5} :catch_447

    :goto_2d5
    :try_start_2d5
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_2df
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d5 .. :try_end_2df} :catch_444

    :goto_2df
    :try_start_2df
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_2e9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2df .. :try_end_2e9} :catch_441

    :goto_2e9
    :try_start_2e9
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_2f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e9 .. :try_end_2f3} :catch_43e

    :goto_2f3
    :try_start_2f3
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_2fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f3 .. :try_end_2fd} :catch_43b

    :goto_2fd
    :try_start_2fd
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_307
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2fd .. :try_end_307} :catch_438

    :goto_307
    :try_start_307
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_311
    .catch Ljava/lang/NoSuchFieldError; {:try_start_307 .. :try_end_311} :catch_435

    :goto_311
    :try_start_311
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SET_VOLUME_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_31b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_311 .. :try_end_31b} :catch_432

    :goto_31b
    :try_start_31b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_325
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31b .. :try_end_325} :catch_42f

    :goto_325
    :try_start_325
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_32f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_325 .. :try_end_32f} :catch_42c

    :goto_32f
    :try_start_32f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_339
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32f .. :try_end_339} :catch_429

    :goto_339
    :try_start_339
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_343
    .catch Ljava/lang/NoSuchFieldError; {:try_start_339 .. :try_end_343} :catch_426

    :goto_343
    :try_start_343
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_34d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_343 .. :try_end_34d} :catch_423

    :goto_34d
    :try_start_34d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_357
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34d .. :try_end_357} :catch_420

    :goto_357
    :try_start_357
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TERMINATE_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_361
    .catch Ljava/lang/NoSuchFieldError; {:try_start_357 .. :try_end_361} :catch_41d

    :goto_361
    :try_start_361
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_36b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_361 .. :try_end_36b} :catch_41a

    :goto_36b
    :try_start_36b
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_375
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36b .. :try_end_375} :catch_417

    :goto_375
    :try_start_375
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_37f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_375 .. :try_end_37f} :catch_414

    :goto_37f
    :try_start_37f
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_389
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37f .. :try_end_389} :catch_411

    :goto_389
    :try_start_389
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_393
    .catch Ljava/lang/NoSuchFieldError; {:try_start_389 .. :try_end_393} :catch_40f

    :goto_393
    :try_start_393
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_39d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_393 .. :try_end_39d} :catch_40d

    :goto_39d
    :try_start_39d
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39d .. :try_end_3a7} :catch_40b

    :goto_3a7
    :try_start_3a7
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a7 .. :try_end_3b1} :catch_409

    :goto_3b1
    :try_start_3b1
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_AFTER_SCAN_STOP:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b1 .. :try_end_3bb} :catch_407

    :goto_3bb
    :try_start_3bb
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_3c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bb .. :try_end_3c5} :catch_405

    :goto_3c5
    :try_start_3c5
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_3cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c5 .. :try_end_3cf} :catch_403

    :goto_3cf
    :try_start_3cf
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_IGNORED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_3d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3cf .. :try_end_3d9} :catch_401

    :goto_3d9
    :try_start_3d9
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_ONGOING:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_3e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d9 .. :try_end_3e3} :catch_3ff

    :goto_3e3
    :try_start_3e3
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_REQUESTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_3ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e3 .. :try_end_3ed} :catch_3fd

    :goto_3ed
    :try_start_3ed
    sget-object v1, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->TUNE_STARTED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_3f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ed .. :try_end_3f7} :catch_3fb

    :goto_3f7
    sput-object v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->$SWITCH_TABLE$com$lge$internal$hardware$fmradio$FMRadioCommand:[I

    goto/16 :goto_4

    :catch_3fb
    move-exception v1

    goto :goto_3f7

    :catch_3fd
    move-exception v1

    goto :goto_3ed

    :catch_3ff
    move-exception v1

    goto :goto_3e3

    :catch_401
    move-exception v1

    goto :goto_3d9

    :catch_403
    move-exception v1

    goto :goto_3cf

    :catch_405
    move-exception v1

    goto :goto_3c5

    :catch_407
    move-exception v1

    goto :goto_3bb

    :catch_409
    move-exception v1

    goto :goto_3b1

    :catch_40b
    move-exception v1

    goto :goto_3a7

    :catch_40d
    move-exception v1

    goto :goto_39d

    :catch_40f
    move-exception v1

    goto :goto_393

    :catch_411
    move-exception v1

    goto/16 :goto_389

    :catch_414
    move-exception v1

    goto/16 :goto_37f

    :catch_417
    move-exception v1

    goto/16 :goto_375

    :catch_41a
    move-exception v1

    goto/16 :goto_36b

    :catch_41d
    move-exception v1

    goto/16 :goto_361

    :catch_420
    move-exception v1

    goto/16 :goto_357

    :catch_423
    move-exception v1

    goto/16 :goto_34d

    :catch_426
    move-exception v1

    goto/16 :goto_343

    :catch_429
    move-exception v1

    goto/16 :goto_339

    :catch_42c
    move-exception v1

    goto/16 :goto_32f

    :catch_42f
    move-exception v1

    goto/16 :goto_325

    :catch_432
    move-exception v1

    goto/16 :goto_31b

    :catch_435
    move-exception v1

    goto/16 :goto_311

    :catch_438
    move-exception v1

    goto/16 :goto_307

    :catch_43b
    move-exception v1

    goto/16 :goto_2fd

    :catch_43e
    move-exception v1

    goto/16 :goto_2f3

    :catch_441
    move-exception v1

    goto/16 :goto_2e9

    :catch_444
    move-exception v1

    goto/16 :goto_2df

    :catch_447
    move-exception v1

    goto/16 :goto_2d5

    :catch_44a
    move-exception v1

    goto/16 :goto_2cb

    :catch_44d
    move-exception v1

    goto/16 :goto_2c1

    :catch_450
    move-exception v1

    goto/16 :goto_2b7

    :catch_453
    move-exception v1

    goto/16 :goto_2ad

    :catch_456
    move-exception v1

    goto/16 :goto_2a3

    :catch_459
    move-exception v1

    goto/16 :goto_299

    :catch_45c
    move-exception v1

    goto/16 :goto_28f

    :catch_45f
    move-exception v1

    goto/16 :goto_285

    :catch_462
    move-exception v1

    goto/16 :goto_27b

    :catch_465
    move-exception v1

    goto/16 :goto_271

    :catch_468
    move-exception v1

    goto/16 :goto_267

    :catch_46b
    move-exception v1

    goto/16 :goto_25d

    :catch_46e
    move-exception v1

    goto/16 :goto_253

    :catch_471
    move-exception v1

    goto/16 :goto_249

    :catch_474
    move-exception v1

    goto/16 :goto_23f

    :catch_477
    move-exception v1

    goto/16 :goto_235

    :catch_47a
    move-exception v1

    goto/16 :goto_22b

    :catch_47d
    move-exception v1

    goto/16 :goto_221

    :catch_480
    move-exception v1

    goto/16 :goto_217

    :catch_483
    move-exception v1

    goto/16 :goto_20d

    :catch_486
    move-exception v1

    goto/16 :goto_203

    :catch_489
    move-exception v1

    goto/16 :goto_1f9

    :catch_48c
    move-exception v1

    goto/16 :goto_1ef

    :catch_48f
    move-exception v1

    goto/16 :goto_1e5

    :catch_492
    move-exception v1

    goto/16 :goto_1db

    :catch_495
    move-exception v1

    goto/16 :goto_1d1

    :catch_498
    move-exception v1

    goto/16 :goto_1c7

    :catch_49b
    move-exception v1

    goto/16 :goto_1bd

    :catch_49e
    move-exception v1

    goto/16 :goto_1b3

    :catch_4a1
    move-exception v1

    goto/16 :goto_1a9

    :catch_4a4
    move-exception v1

    goto/16 :goto_19f

    :catch_4a7
    move-exception v1

    goto/16 :goto_195

    :catch_4aa
    move-exception v1

    goto/16 :goto_18b

    :catch_4ad
    move-exception v1

    goto/16 :goto_181

    :catch_4b0
    move-exception v1

    goto/16 :goto_177

    :catch_4b3
    move-exception v1

    goto/16 :goto_16d

    :catch_4b6
    move-exception v1

    goto/16 :goto_163

    :catch_4b9
    move-exception v1

    goto/16 :goto_159

    :catch_4bc
    move-exception v1

    goto/16 :goto_14f

    :catch_4bf
    move-exception v1

    goto/16 :goto_145

    :catch_4c2
    move-exception v1

    goto/16 :goto_13b

    :catch_4c5
    move-exception v1

    goto/16 :goto_131

    :catch_4c8
    move-exception v1

    goto/16 :goto_127

    :catch_4cb
    move-exception v1

    goto/16 :goto_11d

    :catch_4ce
    move-exception v1

    goto/16 :goto_113

    :catch_4d1
    move-exception v1

    goto/16 :goto_109

    :catch_4d4
    move-exception v1

    goto/16 :goto_ff

    :catch_4d7
    move-exception v1

    goto/16 :goto_f5

    :catch_4da
    move-exception v1

    goto/16 :goto_eb

    :catch_4dd
    move-exception v1

    goto/16 :goto_e1

    :catch_4e0
    move-exception v1

    goto/16 :goto_d7

    :catch_4e3
    move-exception v1

    goto/16 :goto_cd

    :catch_4e6
    move-exception v1

    goto/16 :goto_c3

    :catch_4e9
    move-exception v1

    goto/16 :goto_b9

    :catch_4ec
    move-exception v1

    goto/16 :goto_af

    :catch_4ef
    move-exception v1

    goto/16 :goto_a5

    :catch_4f2
    move-exception v1

    goto/16 :goto_9b

    :catch_4f5
    move-exception v1

    goto/16 :goto_91

    :catch_4f8
    move-exception v1

    goto/16 :goto_87

    :catch_4fb
    move-exception v1

    goto/16 :goto_7d

    :catch_4fe
    move-exception v1

    goto/16 :goto_73

    :catch_501
    move-exception v1

    goto/16 :goto_69

    :catch_504
    move-exception v1

    goto/16 :goto_5f

    :catch_507
    move-exception v1

    goto/16 :goto_55

    :catch_50a
    move-exception v1

    goto/16 :goto_4b

    :catch_50d
    move-exception v1

    goto/16 :goto_42

    :catch_510
    move-exception v1

    goto/16 :goto_39

    :catch_513
    move-exception v1

    goto/16 :goto_30

    :catch_516
    move-exception v1

    goto/16 :goto_27

    :catch_519
    move-exception v1

    goto/16 :goto_1e

    :catch_51c
    move-exception v1

    goto/16 :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;

    invoke-direct {v0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;-><init>()V

    .line 27
    .local v0, "mock":Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;
    iput-object p0, v0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    .line 28
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    :try_start_0
    const-string v2, "FMFRW_MockRadioCommandHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MockRadioCommandHandler received: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->toStringFromMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->getFMRadioCommand(I)Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    move-result-object v0

    .line 43
    .local v0, "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    invoke-static {}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->$SWITCH_TABLE$com$lge$internal$hardware$fmradio$FMRadioCommand()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_168

    .line 118
    invoke-super {p0, p1}, Lcom/lge/internal/hardware/fmradio/DefaultCommandHandler;->handleMessage(Landroid/os/Message;)V

    .line 123
    .end local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :cond_2e
    :goto_2e
    return-void

    .line 45
    .restart local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :sswitch_2f
    new-instance v2, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iget-object v3, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    goto :goto_2e

    .end local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :catch_39
    move-exception v2

    goto :goto_2e

    .line 49
    .restart local v0    # "cmd":Lcom/lge/internal/hardware/fmradio/FMRadioCommand;
    :sswitch_3b
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : chipset terminate OK!"

    .line 50
    const/4 v4, 0x0

    .line 49
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 54
    :sswitch_4c
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : RADIO_ON"

    .line 55
    const/4 v4, 0x0

    .line 54
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 56
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 57
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;

    invoke-direct {v3, p0}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler$1;-><init>(Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2e

    .line 68
    :sswitch_6f
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : RADIO_OFF"

    .line 69
    const/4 v4, 0x0

    .line 68
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 71
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->turnOff()Z

    goto :goto_2e

    .line 75
    :sswitch_8a
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : TUNE"

    .line 76
    const/4 v4, 0x0

    .line 75
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 78
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->tuneFrequency(I)Z

    goto :goto_2e

    .line 81
    :sswitch_a7
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SCAN"

    .line 82
    const/4 v4, 0x0

    .line 81
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 84
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startAutoScan()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 86
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_2e

    .line 91
    .end local v1    # "reply":Landroid/os/Message;
    :sswitch_d8
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SCAN_STOP"

    .line 92
    const/4 v4, 0x0

    .line 91
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 94
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->interuptAutoScanThread()V

    .line 96
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SCAN_FINISHED:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 97
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_2e

    .line 100
    .end local v1    # "reply":Landroid/os/Message;
    :sswitch_106
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SEEK_BACKWARD"

    .line 101
    const/4 v4, 0x0

    .line 100
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 102
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 103
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startBackwardScan()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 104
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 105
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto/16 :goto_2e

    .line 109
    .end local v1    # "reply":Landroid/os/Message;
    :sswitch_137
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Mock : SEEK_FORWARD"

    .line 110
    const/4 v4, 0x0

    .line 109
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 111
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->setMessenger(Landroid/os/Messenger;)V

    .line 112
    iget-object v2, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v2}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->startForwardScan()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 113
    const/4 v2, 0x0

    sget-object v3, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->SEEK_FAIL:Lcom/lge/internal/hardware/fmradio/FMRadioCommand;

    invoke-virtual {v3}, Lcom/lge/internal/hardware/fmradio/FMRadioCommand;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 114
    .restart local v1    # "reply":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_166} :catch_39

    goto/16 :goto_2e

    .line 43
    :sswitch_data_168
    .sparse-switch
        0x2 -> :sswitch_2f
        0x8 -> :sswitch_3b
        0xf -> :sswitch_4c
        0x16 -> :sswitch_6f
        0x2e -> :sswitch_8a
        0x35 -> :sswitch_a7
        0x38 -> :sswitch_d8
        0x45 -> :sswitch_106
        0x46 -> :sswitch_137
    .end sparse-switch
.end method

.method public isMock()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .registers 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommandHandler;->radioCommander:Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;

    invoke-virtual {v0, p1}, Lcom/lge/internal/hardware/fmradio/mock/MockRadioCommander;->setMessenger(Landroid/os/Messenger;)V

    .line 35
    :cond_9
    return-void
.end method
