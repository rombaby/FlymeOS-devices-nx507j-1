.class Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 938
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    .line 939
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 958
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 959
    return-void
.end method

.method startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 942
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 944
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 946
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 948
    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 950
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/widget/SettingsAppWidgetProvider$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 954
    return-void
.end method
