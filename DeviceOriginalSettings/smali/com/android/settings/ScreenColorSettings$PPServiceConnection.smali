.class Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;
.super Ljava/lang/Object;
.source "ScreenColorSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PPServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;-><init>(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    invoke-static {p2}, Lcom/android/display/IPPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/display/IPPService;

    move-result-object v2

    # setter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$302(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$300(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$300(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->startPP()Z

    .line 194
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mMode:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$000(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)I

    move-result v2

    # invokes: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->setScreenColorMode(I)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$100(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "startPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$300(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$300(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;)Lcom/android/display/IPPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/display/IPPService;->stopPP()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings$PPServiceConnection;->this$0:Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;

    const/4 v2, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->mPPService:Lcom/android/display/IPPService;
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;->access$302(Lcom/flyme/deviceoriginalsettings/ScreenColorSettings;Lcom/android/display/IPPService;)Lcom/android/display/IPPService;

    .line 211
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScreenColorSettings"

    const-string v2, "stopPP exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
