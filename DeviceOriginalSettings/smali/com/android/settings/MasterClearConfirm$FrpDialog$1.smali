.class Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mWipeMedia:Z

.field mWipeSdCard:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 125
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 126
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 108
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->dismissAllowingStateLoss()V

    .line 132
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mWipeMedia:Z

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mWipeSdCard:Z

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->doMasterClear(Landroid/content/Context;ZZ)V
    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->access$000(Landroid/content/Context;ZZ)V

    .line 133
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wipe_media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mWipeMedia:Z

    .line 118
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wipe_sdcard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->mWipeSdCard:Z

    .line 119
    return-void
.end method
