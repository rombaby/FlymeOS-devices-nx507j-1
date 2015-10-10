.class public Lcom/flyme/deviceoriginalsettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/RadioInfo$24;,
        Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private cellInfoListRateButton:Landroid/widget/Button;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private imsVoLteProvisionedButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoListRateHandler:Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field private mDisablePreferredNetworkSwitch:Z

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "phone"

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 139
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mMwiValue:Z

    .line 140
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCfiValue:Z

    .line 144
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$1;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 188
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$2;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 872
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$7;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 887
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$8;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 902
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$9;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 918
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$10;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 925
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$11;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 934
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$12;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 952
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$13;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 977
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;

    .line 981
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$14;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 1007
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$15;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 1023
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$16;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    .line 1075
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$18;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1105
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1118
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$20;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1124
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$21;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1132
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$22;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1138
    new-instance v0, Lcom/flyme/deviceoriginalsettings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$23;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1151
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LTE/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TD-SCDMA only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TD-SCDMA and WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TD-SCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TD-SCDMA and GSM"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TD-SCDMA,GSM and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TD-SCDMA, GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TD-SCDMA, WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TD-SCDMA, GSM/WCDMA and LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TD-SCDMA, GSM/WCDMA, CDMA and EvDo"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TD-SCDMA, LTE, CDMA, EvDo GSM/WCDMA"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1500(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateImsVoLteProvisionedState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$3200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCellInfoListRate()V

    return-void
.end method

.method static synthetic access$3700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$4400(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4500(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4600(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Landroid/telephony/CellLocation;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/flyme/deviceoriginalsettings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/flyme/deviceoriginalsettings/RadioInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/RadioInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 765
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 767
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 768
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 769
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 770
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 774
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 778
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 772
    .restart local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    .end local v2    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 994
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isImsVoLteProvisioned()Z
    .locals 3

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1052
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v1

    .line 1054
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 1087
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 1019
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 745
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 746
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 747
    .local v2, "status":I
    if-nez v2, :cond_0

    .line 748
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 759
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :goto_0
    return-void

    .line 750
    .restart local v1    # "p":Ljava/lang/Process;
    .restart local v2    # "status":I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 752
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 754
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 755
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 756
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 725
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 726
    .local v1, "ipAddress":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 727
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 728
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 729
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 738
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :goto_0
    return-void

    .line 731
    .restart local v1    # "ipAddress":Ljava/lang/String;
    .restart local v2    # "p":Ljava/lang/Process;
    .restart local v3    # "status":I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 733
    .end local v1    # "ipAddress":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Process;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 735
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 781
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 782
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    return-void
.end method

.method private updateCellInfoListRate()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CellInfoListRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;->getRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V

    .line 463
    return-void
.end method

.method private final updateCellInfoTv(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v3, "value":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "index":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 558
    .local v0, "ci":Landroid/telephony/CellInfo;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 563
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 567
    .end local v0    # "ci":Landroid/telephony/CellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .prologue
    .line 639
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 640
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 641
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0a04e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "display":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 658
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    return-void

    .line 645
    :pswitch_0
    const v3, 0x7f0a04e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    goto :goto_0

    .line 648
    :pswitch_1
    const v3, 0x7f0a04e6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    goto :goto_0

    .line 651
    :pswitch_2
    const v3, 0x7f0a04e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    goto :goto_0

    .line 654
    :pswitch_3
    const v3, 0x7f0a04e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 687
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 706
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    .line 707
    .local v10, "txPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v6

    .line 708
    .local v6, "rxPackets":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v8

    .line 709
    .local v8, "txBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    .line 711
    .local v4, "rxBytes":J
    const v3, 0x7f0a04ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, "packets":Ljava/lang/String;
    const v3, 0x7f0a04eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "bytes":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    return-void

    .line 466
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 999
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsRegRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a04d3

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    return-void

    .line 999
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a04d2

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateImsVoLteProvisionedState()V
    .locals 3

    .prologue
    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsVoLteProvisionedState isImsVoLteProvisioned()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isImsVoLteProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a04d5

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    return-void

    .line 1059
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a04d4

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 13
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v12, -0x1

    .line 497
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 498
    .local v7, "r":Landroid/content/res/Resources;
    instance-of v9, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_2

    move-object v4, p1

    .line 499
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 500
    .local v4, "loc":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 501
    .local v2, "lac":I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 502
    .local v1, "cid":I
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0a04ee

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v2, v12, :cond_0

    const-string v9, "unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v11, 0x7f0a04ef

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v1, v12, :cond_1

    const-string v9, "unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 502
    .restart local v1    # "cid":I
    .restart local v2    # "lac":I
    .restart local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 507
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    instance-of v9, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v9, :cond_8

    move-object v4, p1

    .line 508
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 509
    .local v4, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 510
    .local v0, "bid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v8

    .line 511
    .local v8, "sid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v6

    .line 512
    .local v6, "nid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 513
    .local v3, "lat":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v5

    .line 514
    .local v5, "lon":I
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v0, v12, :cond_3

    const-string v9, "unknown"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "SID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v8, v12, :cond_4

    const-string v9, "unknown"

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "NID = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v6, v12, :cond_5

    const-string v9, "unknown"

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LAT = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v3, v12, :cond_6

    const-string v9, "unknown"

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "   "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "LONG = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v12, :cond_7

    const-string v9, "unknown"

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 529
    .end local v0    # "bid":I
    .end local v3    # "lat":I
    .end local v4    # "loc":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v5    # "lon":I
    .end local v6    # "nid":I
    .end local v8    # "sid":I
    :cond_8
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v10, "unknown"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1092
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a04d7

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    return-void

    .line 1092
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a04d6

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 539
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    return-void

    .line 542
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 543
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 547
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 4

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 663
    .local v1, "r":Landroid/content/res/Resources;
    const-string v2, "gsm.network.type"

    const v3, 0x7f0a04e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "display":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 618
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 619
    .local v2, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 620
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f0a04e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "display":Ljava/lang/String;
    sget-object v3, Lcom/flyme/deviceoriginalsettings/RadioInfo$24;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 634
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    return-void

    .line 624
    :pswitch_0
    const v3, 0x7f0a04e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    goto :goto_0

    .line 627
    :pswitch_1
    const v3, 0x7f0a04e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    goto :goto_0

    .line 630
    :pswitch_2
    const v3, 0x7f0a04e4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f0a04e9

    .line 785
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 787
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 788
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 791
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    new-instance v4, Lcom/flyme/deviceoriginalsettings/RadioInfo$3;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo$3;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 802
    .local v4, "updatePingResults":Ljava/lang/Runnable;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/RadioInfo$4;

    invoke-direct {v3, p0, v0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo$4;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 809
    .local v3, "ipAddr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 811
    new-instance v1, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;

    invoke-direct {v1, p0, v0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 818
    .local v1, "hostname":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 820
    new-instance v2, Lcom/flyme/deviceoriginalsettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo$6;-><init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 827
    .local v2, "httpClient":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 828
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a04cf

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 458
    return-void

    .line 454
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a04ce

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f0a04e9

    .line 672
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 674
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 680
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    return-void
.end method

.method private final updateServiceState()V
    .locals 6

    .prologue
    .line 587
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 588
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 589
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 590
    .local v1, "r":Landroid/content/res/Resources;
    const v4, 0x7f0a04e9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "display":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 605
    :goto_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0a04e0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 613
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-void

    .line 594
    :pswitch_0
    const v4, 0x7f0a04dc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    goto :goto_0

    .line 598
    :pswitch_1
    const v4, 0x7f0a04de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    goto :goto_0

    .line 601
    :pswitch_2
    const v4, 0x7f0a04df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v5, 0x7f0a04e1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 474
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 475
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 477
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 479
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 484
    .local v2, "signalDbm":I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 486
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 488
    .local v1, "signalAsu":I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 490
    :cond_3
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a04ec

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a04ed

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1067
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a04d1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    return-void

    .line 1067
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a04d0

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    const v4, 0x7f0400d7

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->setContentView(I)V

    .line 263
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 264
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 266
    const v4, 0x7f1101eb

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f11002b

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f1101fc

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f1101ec

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 270
    const v4, 0x7f1101f6

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f1101f7

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f1101f8

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f1101f9

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f1101f1

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f1101fa

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f1101fb

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 277
    const v4, 0x7f1101f2

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f1101f3

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 279
    const v4, 0x7f1101f4

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f1101f5

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 282
    const v4, 0x7f1101fd

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 283
    const v4, 0x7f1101fe

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f1101ff

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 285
    const v4, 0x7f110200

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 286
    const v4, 0x7f110203

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 287
    const v4, 0x7f110201

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 288
    const v4, 0x7f110202

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f11020e

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 290
    const v4, 0x7f110210

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 292
    const v4, 0x7f1101ee

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 293
    const v4, 0x7f1101ef

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 294
    const v4, 0x7f1101f0

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 296
    const v4, 0x7f110204

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 297
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 299
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 300
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 303
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0015

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDisablePreferredNetworkSwitch:Z

    .line 305
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDisablePreferredNetworkSwitch:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 307
    const v4, 0x7f110205

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 308
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    const v4, 0x7f110206

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    .line 311
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->cellInfoListRateButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoListRateHandler:Lcom/flyme/deviceoriginalsettings/RadioInfo$CellInfoListRateHandler;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v4, 0x7f110207

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 314
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const v4, 0x7f110208

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    .line 317
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->imsVoLteProvisionedButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mImsVoLteProvisionedHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v4, 0x7f110209

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 320
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    const v4, 0x7f11020a

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 323
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x7f1101ed

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 326
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v4, 0x7f11020c

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 328
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v4, 0x7f11020d

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 330
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const v4, 0x7f11020f

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 332
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v4, 0x7f110211

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 335
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 337
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "oemInfoIntent":Landroid/content/Intent;
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 340
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 343
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 344
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 345
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 346
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 348
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 350
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 353
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 356
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mCellInfoValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 358
    return-void

    .end local v1    # "oemInfoIntent":Landroid/content/Intent;
    .end local v2    # "oemInfoIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v4, v5

    .line 305
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 407
    const v0, 0x7f0a058d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 410
    const v0, 0x7f0a04d8

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 412
    const/4 v0, 0x2

    const v1, 0x7f0a04d9

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 414
    const/4 v0, 0x3

    const v1, 0x7f0a04da

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 416
    const/4 v0, 0x4

    const v1, 0x7f0a04db

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 418
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 420
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 402
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 403
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 427
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 428
    .local v1, "state":I
    const/4 v2, 0x1

    .line 430
    .local v2, "visible":Z
    packed-switch v1, :pswitch_data_0

    .line 439
    :pswitch_0
    const/4 v2, 0x0

    .line 442
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 444
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 445
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mDisablePreferredNetworkSwitch:Z

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 446
    return v4

    .line 433
    :pswitch_1
    const-string v5, "Disable data connection"

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 436
    :pswitch_2
    const-string v5, "Enable data connection"

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 364
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePhoneState()V

    .line 365
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSignalStrength()V

    .line 366
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateMessageWaiting()V

    .line 367
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCallRedirect()V

    .line 368
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateServiceState()V

    .line 369
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 370
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataState()V

    .line 371
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataStats()V

    .line 372
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDataStats2()V

    .line 373
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePowerState()V

    .line 374
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateCellInfoListRate()V

    .line 375
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateImsRegRequiredState()V

    .line 376
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateImsVoLteProvisionedState()V

    .line 377
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateSmsOverImsState()V

    .line 378
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateLteRamDumpState()V

    .line 379
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateProperties()V

    .line 380
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDnsCheckState()V

    .line 382
    const-string v0, "onResume: register phone & data intents"

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 385
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x24dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 393
    return-void
.end method
