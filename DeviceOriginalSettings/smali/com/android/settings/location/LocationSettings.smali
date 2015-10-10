.class public Lcom/flyme/deviceoriginalsettings/location/LocationSettings;
.super Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 250
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 252
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    .line 255
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 273
    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 278
    :goto_1
    return-void

    .line 255
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 276
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 152
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 154
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private static checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 377
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "android.hardware.telephony"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 378
    .local v2, "supportsTelephony":Z
    const-string v4, "android.hardware.wifi"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 379
    .local v3, "supportsWifi":Z
    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 380
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "lto_download_data_wifi_only"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    const/4 v4, 0x0

    .line 386
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 158
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 159
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 162
    :cond_0
    const v6, 0x7f070029

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 165
    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 166
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 167
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const-string v6, "lto_download_data_wifi_only"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    .line 181
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 182
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->isLtoSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 183
    :cond_1
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    .line 190
    :cond_2
    :goto_0
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 192
    new-instance v3, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    .line 193
    .local v3, "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 195
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 205
    :goto_1
    const/4 v2, 0x0

    .line 209
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    const/4 v2, 0x1

    .line 213
    :cond_3
    invoke-direct {p0, v0, v5, v2}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 215
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->refreshLocationMode()V

    .line 216
    return-object v5

    .line 186
    .end local v2    # "lockdownOnLocationAccess":Z
    .end local v3    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .end local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 198
    .restart local v3    # "recentApps":Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
    .restart local v4    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_5
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 199
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f040078

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 200
    const v6, 0x7f0a08d1

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 201
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 202
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static isLocationModeEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, "mode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isLtoSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 418
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->isLtoSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 403
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->checkGpsDownloadWiFiOnly(Landroid/content/Context;)Z

    .line 407
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 408
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LtoService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .local v1, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x48000000    # 131072.0f

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 411
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1d4c0

    add-long v2, v6, v8

    .line 412
    .local v2, "nextLtoDownload":J
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 414
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nextLtoDownload":J
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 229
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private static updateLtoServiceStatus(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LtoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 282
    const v0, 0x7f0a0d48

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 103
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 105
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 106
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->getSwitch()Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 107
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 108
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onDestroyView()V

    .line 113
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    .line 114
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 307
    :goto_0
    if-eqz p1, :cond_4

    move v0, v1

    .line 310
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    if-nez p2, :cond_5

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 311
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 312
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 315
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 317
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_2

    .line 319
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 323
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_2

    .line 324
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v3, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 329
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 330
    const v1, 0x7f0a08ca

    invoke-direct {p0, v2, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 343
    :cond_3
    :goto_5
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->injector:Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/location/SettingsInjector;->reloadStatusMessages()V

    .line 344
    return-void

    .line 289
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a08cf

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 292
    :pswitch_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a08ce

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a08cd

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 298
    :pswitch_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0a08cc

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 307
    goto/16 :goto_1

    .restart local v0    # "enabled":Z
    :cond_5
    move v3, v2

    .line 310
    goto/16 :goto_2

    :cond_6
    move v3, v2

    .line 312
    goto :goto_3

    :cond_7
    move v3, v2

    .line 314
    goto :goto_4

    .line 333
    :cond_8
    if-eqz v0, :cond_9

    .line 334
    const v2, 0x7f0a0e1d

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 336
    :cond_9
    const v1, 0x7f0a0e1e

    invoke-direct {p0, v2, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_5

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 140
    :cond_1
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onPause()V

    .line 141
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mLtoDownloadDataWifiOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->isLocationModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->updateLtoServiceStatus(Landroid/content/Context;Z)V

    .line 363
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettingsBase;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 120
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->mValidListener:Z

    .line 124
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 351
    if-eqz p2, :cond_0

    .line 352
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->setLocationMode(I)V

    goto :goto_0
.end method
