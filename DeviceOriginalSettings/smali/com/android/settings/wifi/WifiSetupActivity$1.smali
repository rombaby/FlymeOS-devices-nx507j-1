.class Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;->refreshConnectionState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;->access$000(Lcom/flyme/deviceoriginalsettings/wifi/WifiSetupActivity;)V

    .line 85
    return-void
.end method
