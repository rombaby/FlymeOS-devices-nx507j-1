.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_0

    .line 484
    const-string v13, "BluetoothSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onClick() called for other View: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    .line 489
    .local v3, "device":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 490
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f110030

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    check-cast v11, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    .line 493
    .local v11, "profileFragment":Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$300()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 494
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$300()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 495
    .local v10, "parent":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1

    .line 496
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$300()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 500
    .end local v10    # "parent":Landroid/view/ViewGroup;
    :cond_1
    if-nez v11, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v13}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 502
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f040017

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    # setter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {v13}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$302(Landroid/view/View;)Landroid/view/View;

    .line 503
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v13

    const v14, 0x7f110030

    invoke-virtual {v13, v14}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v11

    .end local v11    # "profileFragment":Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;
    check-cast v11, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    .line 508
    .restart local v11    # "profileFragment":Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;
    const v13, 0x7f040018

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 509
    .local v8, "header":Landroid/view/View;
    invoke-virtual {v11}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->getListView()Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 512
    .end local v8    # "header":Landroid/view/View;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mSettingsDialogView:Landroid/view/View;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$300()Landroid/view/View;

    move-result-object v6

    .line 513
    .local v6, "dialogLayout":Landroid/view/View;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v12, "settingsDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v11, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->setDevice(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    .line 515
    const v13, 0x7f11002c

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 516
    .local v4, "deviceName":Landroid/widget/EditText;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 518
    move-object v7, v11

    .line 519
    .local v7, "dpsFragment":Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 520
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v12, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v13, 0x7f0a0678

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 522
    const v13, 0x7f0a05b7

    new-instance v14, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;Landroid/view/View;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    const v13, 0x7f0a05ba

    new-instance v14, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$2;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    new-instance v13, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v7}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$3;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;Landroid/app/Activity;Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 554
    .local v5, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 555
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 556
    new-instance v13, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3$4;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$3;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 577
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const v14, 0x20008

    invoke-virtual {v13, v14}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0
.end method
