.class public Lcom/flyme/Advancedsettings/MainPreferece;
.super Landroid/preference/PreferenceFragment;
.source "MainPreferece.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private about:Landroid/preference/Preference;

.field private command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

.field private file:Ljava/io/File;

.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;

.field private pf_bootloader:Landroid/preference/Preference;

.field private pf_killall:Landroid/preference/Preference;

.field private pf_reboot:Landroid/preference/Preference;

.field private pf_reboot_P:Landroid/preference/Preference;

.field private pf_recovery:Landroid/preference/Preference;

.field private sdcard:Ljava/lang/String;

.field private tv_show:Landroid/widget/TextView;

.field private virtual_key:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/Advancedsettings/MainPreferece;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/Advancedsettings/MainPreferece;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/Advancedsettings/MainPreferece;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/Advancedsettings/MainPreferece;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/Advancedsettings/MainPreferece;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->sdcard:Ljava/lang/String;

    return-object v0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/flyme/Advancedsettings/MainPreferece$1;

    invoke-direct {v1, p0}, Lcom/flyme/Advancedsettings/MainPreferece$1;-><init>(Lcom/flyme/Advancedsettings/MainPreferece;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->about:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_bootloader:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_killall:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot_P:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_recovery:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 54
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cp -f /system/build.prop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/Advancedsettings/MainPreferece;->sdcard:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/flyme/Advancedsettings/MainPreferece;->sdcard:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;

    .line 57
    const-string v2, "Virtual_key"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    .line 58
    const-string v2, "about"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->about:Landroid/preference/Preference;

    .line 59
    const-string v2, "pf_reboot_P"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot_P:Landroid/preference/Preference;

    .line 60
    const-string v2, "pf_reboot"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot:Landroid/preference/Preference;

    .line 61
    const-string v2, "pf_killall"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_killall:Landroid/preference/Preference;

    .line 62
    const-string v2, "pf_recovery"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_recovery:Landroid/preference/Preference;

    .line 63
    const-string v2, "pf_bootloader"

    invoke-virtual {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_bootloader:Landroid/preference/Preference;

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/flyme/Advancedsettings/Utils/FileUtils;->readerfile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u83b7\u53d6\u60c5\u51b5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 75
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    .end local v1    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 67
    .restart local v1    # "s":Ljava/lang/String;
    :pswitch_0
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_1
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/lang/String;
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reRoot(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 147
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "reboot -p"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "killall system_server"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "reboot recovery"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "reboot bootloader"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0}, Lcom/flyme/Advancedsettings/MainPreferece;->addPreferencesFromResource(I)V

    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->sdcard:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/flyme/Advancedsettings/Utils/RootCmd;

    invoke-direct {v0}, Lcom/flyme/Advancedsettings/Utils/RootCmd;-><init>()V

    iput-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    .line 46
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;

    const-string v1, "mount -o remount,rw /system"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/flyme/Advancedsettings/MainPreferece;->initView()V

    .line 48
    invoke-direct {p0}, Lcom/flyme/Advancedsettings/MainPreferece;->initData()V

    .line 49
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot_P:Landroid/preference/Preference;

    if-ne v1, p1, :cond_1

    .line 171
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/Advancedsettings/MainPreferece;->reRoot(I)V

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_reboot:Landroid/preference/Preference;

    if-ne v1, p1, :cond_2

    .line 174
    invoke-direct {p0, v2}, Lcom/flyme/Advancedsettings/MainPreferece;->reRoot(I)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_recovery:Landroid/preference/Preference;

    if-ne v1, p1, :cond_3

    .line 177
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/flyme/Advancedsettings/MainPreferece;->reRoot(I)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_bootloader:Landroid/preference/Preference;

    if-ne v1, p1, :cond_4

    .line 180
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/flyme/Advancedsettings/MainPreferece;->reRoot(I)V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->pf_killall:Landroid/preference/Preference;

    if-ne v1, p1, :cond_5

    .line 183
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/flyme/Advancedsettings/MainPreferece;->reRoot(I)V

    goto :goto_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece;->about:Landroid/preference/Preference;

    if-ne v1, p1, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "http://weibo.com/1683048537"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/flyme/Advancedsettings/MainPreferece;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
