.class public abstract Lcom/ts/main/common/ITsCommon$Stub;
.super Landroid/os/Binder;
.source "ITsCommon.java"

# interfaces
.implements Lcom/ts/main/common/ITsCommon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/common/ITsCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/main/common/ITsCommon$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ts.main.common.ITsCommon"

.field static final TRANSACTION_BklTurn:I = 0x16

.field static final TRANSACTION_BtDail:I = 0x28

.field static final TRANSACTION_BtIsConnect:I = 0xc

.field static final TRANSACTION_EnterActivity:I = 0x24

.field static final TRANSACTION_EnterAutoLink:I = 0x43

.field static final TRANSACTION_EnterMode:I = 0x1

.field static final TRANSACTION_GetBand:I = 0x21

.field static final TRANSACTION_GetBrakeState:I = 0x9

.field static final TRANSACTION_GetCog:I = 0x19

.field static final TRANSACTION_GetCurTime:I = 0x1a

.field static final TRANSACTION_GetDeviceID:I = 0x35

.field static final TRANSACTION_GetFreq:I = 0x22

.field static final TRANSACTION_GetIMEI:I = 0x33

.field static final TRANSACTION_GetIMSI:I = 0x34

.field static final TRANSACTION_GetId3Album:I = 0x1e

.field static final TRANSACTION_GetId3Artist:I = 0x1f

.field static final TRANSACTION_GetId3Title:I = 0x20

.field static final TRANSACTION_GetListBt:I = 0x25

.field static final TRANSACTION_GetListMedia:I = 0x26

.field static final TRANSACTION_GetMcuPowerState:I = 0x36

.field static final TRANSACTION_GetMusicVol:I = 0x3d

.field static final TRANSACTION_GetNaviPackage:I = 0x39

.field static final TRANSACTION_GetPlayState:I = 0x1c

.field static final TRANSACTION_GetRadioSTState:I = 0x31

.field static final TRANSACTION_GetRadioSTSwitch:I = 0x32

.field static final TRANSACTION_GetRadio_N_Step:I = 0x2b

.field static final TRANSACTION_GetRadio_T_Step:I = 0x2c

.field static final TRANSACTION_GetReverState:I = 0x8

.field static final TRANSACTION_GetSDCard:I = 0x23

.field static final TRANSACTION_GetSongName:I = 0x1d

.field static final TRANSACTION_GetSpeed:I = 0x17

.field static final TRANSACTION_GetTemp:I = 0x18

.field static final TRANSACTION_GetTotalTime:I = 0x1b

.field static final TRANSACTION_GetadaptanyEnable:I = 0x3a

.field static final TRANSACTION_GetadaptanyH:I = 0x3c

.field static final TRANSACTION_GetadaptanyW:I = 0x3b

.field static final TRANSACTION_GotoEq:I = 0x7

.field static final TRANSACTION_IsHaveDisc:I = 0xb

.field static final TRANSACTION_IsLastMemory:I = 0x10

.field static final TRANSACTION_IsMute:I = 0xd

.field static final TRANSACTION_IsNightMode:I = 0xe

.field static final TRANSACTION_IsTconAdj:I = 0xf

.field static final TRANSACTION_Mute:I = 0x2

.field static final TRANSACTION_PlayByPath:I = 0x27

.field static final TRANSACTION_PopMuteClear:I = 0x2a

.field static final TRANSACTION_PopMuteSet:I = 0x29

.field static final TRANSACTION_SendMcuKey:I = 0x6

.field static final TRANSACTION_StepToFreq:I = 0x2d

.field static final TRANSACTION_TconDvdSetShow:I = 0x11

.field static final TRANSACTION_TconSet:I = 0x14

.field static final TRANSACTION_TconSetHide:I = 0x13

.field static final TRANSACTION_TconVideoSetShow:I = 0x12

.field static final TRANSACTION_TsVolumeShow:I = 0x15

.field static final TRANSACTION_VolDec:I = 0x4

.field static final TRANSACTION_VolInc:I = 0x3

.field static final TRANSACTION_VolSet:I = 0x5

.field static final TRANSACTION_bAutoConnected:I = 0x42

.field static final TRANSACTION_bCarplayConnected:I = 0x41

.field static final TRANSACTION_bNaviAutoStart:I = 0x38

.field static final TRANSACTION_getRepeatMode:I = 0x2f

.field static final TRANSACTION_getShuffleMode:I = 0x30

.field static final TRANSACTION_getSpecialBinder:I = 0x37

.field static final TRANSACTION_isRadioAvailable:I = 0x3e

.field static final TRANSACTION_isRadioMute:I = 0x3f

.field static final TRANSACTION_nGetKey:I = 0x2e

.field static final TRANSACTION_nGetWorkMode:I = 0xa

.field static final TRANSACTION_toggleRadioMute:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ts.main.common.ITsCommon"

    invoke-virtual {p0, p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ts/main/common/ITsCommon;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.ts.main.common.ITsCommon"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ts/main/common/ITsCommon;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ts/main/common/ITsCommon;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ts/main/common/ITsCommon$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ts/main/common/ITsCommon$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 584
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->EnterMode(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->Mute()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->VolInc()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->VolDec()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->VolSet(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->SendMcuKey(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GotoEq()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_8
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetReverState()I

    move-result v1

    .line 104
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v1    # "_result":I
    :sswitch_9
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetBrakeState()I

    move-result v1

    .line 112
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    .end local v1    # "_result":I
    :sswitch_a
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->nGetWorkMode()I

    move-result v1

    .line 120
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v1    # "_result":I
    :sswitch_b
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->IsHaveDisc()I

    move-result v1

    .line 128
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "_result":I
    :sswitch_c
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->BtIsConnect()Z

    move-result v1

    .line 136
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v1    # "_result":Z
    :sswitch_d
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->IsMute()Z

    move-result v1

    .line 144
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "_result":Z
    :sswitch_e
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->IsNightMode()Z

    move-result v1

    .line 152
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 158
    .end local v1    # "_result":Z
    :sswitch_f
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->IsTconAdj()Z

    move-result v1

    .line 160
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v1    # "_result":Z
    :sswitch_10
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->IsLastMemory()Z

    move-result v1

    .line 168
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v1    # "_result":Z
    :sswitch_11
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->TconDvdSetShow()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    :sswitch_12
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->TconVideoSetShow()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    :sswitch_13
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->TconSetHide()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    :sswitch_14
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->TconSet(I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 204
    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->TsVolumeShow()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    :sswitch_16
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->BklTurn()V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 218
    :sswitch_17
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetSpeed()F

    move-result v1

    .line 220
    .local v1, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 226
    .end local v1    # "_result":F
    :sswitch_18
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetTemp()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetCog()F

    move-result v1

    .line 236
    .local v1, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 242
    .end local v1    # "_result":F
    :sswitch_1a
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetCurTime()I

    move-result v1

    .line 244
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 250
    .end local v1    # "_result":I
    :sswitch_1b
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetTotalTime()I

    move-result v1

    .line 252
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v1    # "_result":I
    :sswitch_1c
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetPlayState()I

    move-result v1

    .line 260
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v1    # "_result":I
    :sswitch_1d
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetSongName()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetId3Album()Ljava/lang/String;

    move-result-object v1

    .line 276
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetId3Artist()Ljava/lang/String;

    move-result-object v1

    .line 284
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetId3Title()Ljava/lang/String;

    move-result-object v1

    .line 292
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetBand()Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetFreq()Ljava/lang/String;

    move-result-object v1

    .line 308
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_23
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetSDCard()I

    move-result v1

    .line 316
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 322
    .end local v1    # "_result":I
    :sswitch_24
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->EnterActivity(I)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 331
    .end local v0    # "_arg0":I
    :sswitch_25
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetListBt()Ljava/util/Map;

    move-result-object v1

    .line 333
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 339
    .end local v1    # "_result":Ljava/util/Map;
    :sswitch_26
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetListMedia()Ljava/util/Map;

    move-result-object v1

    .line 341
    .restart local v1    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 347
    .end local v1    # "_result":Ljava/util/Map;
    :sswitch_27
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->PlayByPath(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 356
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_28
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->BtDail(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 365
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_29
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->PopMuteSet(I)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 374
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 377
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->PopMuteClear(I)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    .end local v0    # "_arg0":I
    :sswitch_2b
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetRadio_N_Step()I

    move-result v1

    .line 385
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 391
    .end local v1    # "_result":I
    :sswitch_2c
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetRadio_T_Step()I

    move-result v1

    .line 393
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v1    # "_result":I
    :sswitch_2d
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 402
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->StepToFreq(I)I

    move-result v1

    .line 403
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_2e
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->nGetKey()I

    move-result v1

    .line 411
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v1    # "_result":I
    :sswitch_2f
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->getRepeatMode()I

    move-result v1

    .line 419
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 425
    .end local v1    # "_result":I
    :sswitch_30
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->getShuffleMode()I

    move-result v1

    .line 427
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v1    # "_result":I
    :sswitch_31
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetRadioSTState()Z

    move-result v1

    .line 435
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v1    # "_result":Z
    :sswitch_32
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetRadioSTSwitch()Z

    move-result v1

    .line 443
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "_result":Z
    :sswitch_33
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetIMEI()Ljava/lang/String;

    move-result-object v1

    .line 451
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetIMSI()Ljava/lang/String;

    move-result-object v1

    .line 459
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 467
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 473
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetMcuPowerState()I

    move-result v1

    .line 475
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 481
    .end local v1    # "_result":I
    :sswitch_37
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ts/main/common/ITsCommon$Stub;->getSpecialBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 485
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 491
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/IBinder;
    :sswitch_38
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->bNaviAutoStart()Z

    move-result v1

    .line 493
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 499
    .end local v1    # "_result":Z
    :sswitch_39
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetNaviPackage()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v1    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetadaptanyEnable()I

    move-result v1

    .line 509
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 515
    .end local v1    # "_result":I
    :sswitch_3b
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetadaptanyW()I

    move-result v1

    .line 517
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 523
    .end local v1    # "_result":I
    :sswitch_3c
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetadaptanyH()I

    move-result v1

    .line 525
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 531
    .end local v1    # "_result":I
    :sswitch_3d
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->GetMusicVol()I

    move-result v1

    .line 533
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 539
    .end local v1    # "_result":I
    :sswitch_3e
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->isRadioAvailable()Z

    move-result v1

    .line 541
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 547
    .end local v1    # "_result":Z
    :sswitch_3f
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->isRadioMute()Z

    move-result v1

    .line 549
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 555
    .end local v1    # "_result":Z
    :sswitch_40
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->toggleRadioMute()V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 562
    :sswitch_41
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->bCarplayConnected()Z

    move-result v1

    .line 564
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 570
    .end local v1    # "_result":Z
    :sswitch_42
    const-string v4, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->bAutoConnected()Z

    move-result v1

    .line 572
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v1    # "_result":Z
    :sswitch_43
    const-string v2, "com.ts.main.common.ITsCommon"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/ts/main/common/ITsCommon$Stub;->EnterAutoLink()V

    .line 580
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
