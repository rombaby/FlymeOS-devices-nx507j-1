.class final Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$1;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 58
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->V:Z
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->access$102(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 60
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    const/4 v1, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->access$202(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;Z)Z

    .line 61
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 64
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->V:Z
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile$PanServiceListener;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;->access$202(Lcom/flyme/deviceoriginalsettings/bluetooth/PanProfile;Z)Z

    .line 66
    return-void
.end method
