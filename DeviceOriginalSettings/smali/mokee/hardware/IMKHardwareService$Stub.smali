.class public abstract Lmokee/hardware/IMKHardwareService$Stub;
.super Landroid/os/Binder;
.source "IMKHardwareService.java"

# interfaces
.implements Lmokee/hardware/IMKHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/hardware/IMKHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/hardware/IMKHardwareService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lmokee/hardware/IMKHardwareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "mokee.hardware.IMKHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmokee/hardware/IMKHardwareService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lmokee/hardware/IMKHardwareService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lmokee/hardware/IMKHardwareService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmokee/hardware/IMKHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getSupportedFeatures()I

    move-result v2

    .line 50
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v2    # "_result":I
    :sswitch_2
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->get(I)Z

    move-result v2

    .line 60
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_3
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 71
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lmokee/hardware/IMKHardwareService$Stub;->set(IZ)Z

    move-result v2

    .line 72
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_2
    move v1, v4

    .line 70
    goto :goto_1

    .line 78
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object v2

    .line 80
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 86
    .end local v2    # "_result":[I
    :sswitch_5
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 89
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result v2

    .line 90
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":[I
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getNumGammaControls()I

    move-result v2

    .line 98
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->getDisplayGammaCalibration(I)[I

    move-result-object v2

    .line 108
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":I
    .end local v2    # "_result":[I
    :sswitch_8
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 119
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lmokee/hardware/IMKHardwareService$Stub;->setDisplayGammaCalibration(I[I)Z

    move-result v2

    .line 120
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v2, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 126
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":Z
    :sswitch_9
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getVibratorIntensity()[I

    move-result-object v2

    .line 128
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 134
    .end local v2    # "_result":[I
    :sswitch_a
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->setVibratorIntensity(I)Z

    move-result v2

    .line 138
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v2, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_b
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getLtoSource()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getLtoDestination()Ljava/lang/String;

    move-result-object v2

    .line 154
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getLtoDownloadInterval()J

    move-result-wide v2

    .line 162
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 168
    .end local v2    # "_result":J
    :sswitch_e
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v2

    .line 178
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v2, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getDisplayModes()[Lmokee/hardware/DisplayMode;

    move-result-object v2

    .line 186
    .local v2, "_result":[Lmokee/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 192
    .end local v2    # "_result":[Lmokee/hardware/DisplayMode;
    :sswitch_11
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getCurrentDisplayMode()Lmokee/hardware/DisplayMode;

    move-result-object v2

    .line 194
    .local v2, "_result":Lmokee/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v2, :cond_7

    .line 196
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v2, p3, v5}, Lmokee/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 200
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v2    # "_result":Lmokee/hardware/DisplayMode;
    :sswitch_12
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getDefaultDisplayMode()Lmokee/hardware/DisplayMode;

    move-result-object v2

    .line 208
    .restart local v2    # "_result":Lmokee/hardware/DisplayMode;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v2, :cond_8

    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v2, p3, v5}, Lmokee/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 214
    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v2    # "_result":Lmokee/hardware/DisplayMode;
    :sswitch_13
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 223
    sget-object v6, Lmokee/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmokee/hardware/DisplayMode;

    .line 229
    .local v0, "_arg0":Lmokee/hardware/DisplayMode;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v1, v5

    .line 230
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lmokee/hardware/IMKHardwareService$Stub;->setDisplayMode(Lmokee/hardware/DisplayMode;Z)Z

    move-result v2

    .line 231
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v2, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "_arg0":Lmokee/hardware/DisplayMode;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lmokee/hardware/DisplayMode;
    goto :goto_2

    :cond_b
    move v1, v4

    .line 229
    goto :goto_3

    .line 237
    .end local v0    # "_arg0":Lmokee/hardware/DisplayMode;
    :sswitch_14
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 242
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lmokee/hardware/IMKHardwareService$Stub;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v2

    .line 243
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v2, :cond_c

    move v4, v5

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_result":Z
    :sswitch_15
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 253
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":[B
    :sswitch_16
    const-string v4, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lmokee/hardware/IMKHardwareService$Stub;->getThermalState()I

    move-result v2

    .line 261
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v2    # "_result":I
    :sswitch_17
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lmokee/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/hardware/IThermalListenerCallback;

    move-result-object v0

    .line 270
    .local v0, "_arg0":Lmokee/hardware/IThermalListenerCallback;
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->registerThermalListener(Lmokee/hardware/IThermalListenerCallback;)Z

    move-result v2

    .line 271
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v2, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Lmokee/hardware/IThermalListenerCallback;
    .end local v2    # "_result":Z
    :sswitch_18
    const-string v6, "mokee.hardware.IMKHardwareService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lmokee/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/hardware/IThermalListenerCallback;

    move-result-object v0

    .line 280
    .restart local v0    # "_arg0":Lmokee/hardware/IThermalListenerCallback;
    invoke-virtual {p0, v0}, Lmokee/hardware/IMKHardwareService$Stub;->unRegisterThermalListener(Lmokee/hardware/IThermalListenerCallback;)Z

    move-result v2

    .line 281
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v2, :cond_e

    move v4, v5

    :cond_e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
