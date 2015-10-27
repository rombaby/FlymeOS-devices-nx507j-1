.class Lcom/flyme/Advancedsettings/MainPreferece$1;
.super Ljava/lang/Object;
.source "MainPreferece.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/Advancedsettings/MainPreferece;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/Advancedsettings/MainPreferece;


# direct methods
.method constructor <init>(Lcom/flyme/Advancedsettings/MainPreferece;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/Advancedsettings/MainPreferece;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->virtual_key:Landroid/preference/SwitchPreference;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$000(Lcom/flyme/Advancedsettings/MainPreferece;)Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$100(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/io/File;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/flyme/Advancedsettings/Utils/FileUtils;->modifier(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "fileString":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$100(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/Advancedsettings/Utils/FileUtils;->writer(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1    # "fileString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;

    move-result-object v2

    const-string v3, "mount -o rw,remount /system"

    invoke-virtual {v2, v3}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;

    move-result-object v2

    const-string v3, "mv -f /system/build.prop /system/build.prop.bak"

    invoke-virtual {v2, v3}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "busybox cp -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->sdcard:Ljava/lang/String;
    invoke-static {v4}, Lcom/flyme/Advancedsettings/MainPreferece;->access$300(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/build.prop /system/build.prop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;

    move-result-object v2

    const-string v3, "chmod 644 /system/build.prop"

    invoke-virtual {v2, v3}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 116
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/flyme/Advancedsettings/MainPreferece$1$1;

    invoke-direct {v3, p0}, Lcom/flyme/Advancedsettings/MainPreferece$1$1;-><init>(Lcom/flyme/Advancedsettings/MainPreferece$1;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    const/4 v2, 0x1

    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$100(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/io/File;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/flyme/Advancedsettings/Utils/FileUtils;->modifier(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "fileString":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->file:Ljava/io/File;
    invoke-static {v2}, Lcom/flyme/Advancedsettings/MainPreferece;->access$100(Lcom/flyme/Advancedsettings/MainPreferece;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flyme/Advancedsettings/Utils/FileUtils;->writer(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 103
    .end local v1    # "fileString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
