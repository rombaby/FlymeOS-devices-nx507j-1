.class final Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)V
    .locals 1

    .prologue
    .line 688
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    .line 689
    # getter for: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 685
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 686
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 690
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 704
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    # getter for: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->PREF_ZEN_MODE:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingPrefWithCallback;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1400()Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingPrefWithCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$500(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingPrefWithCallback;->update(Landroid/content/Context;)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->updateZenModeConfig()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1500(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)V

    .line 710
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1100(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 694
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1200(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 695
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;->access$1300(Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 699
    return-void
.end method
