.class public Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;
.super Landroid/app/ListFragment;
.source "BluetoothTriggerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;,
        Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;,
        Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    }
.end annotation


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

.field mProfile:Lmokee/app/Profile;

.field mProfileManager:Lmokee/app/ProfileManager;

.field private mTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    return-object v0
.end method

.method private initPreference(Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V
    .locals 3
    .param p1, "pref"    # Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;
    .param p2, "state"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "icon"    # I

    .prologue
    .line 91
    const v2, 0x7f0c0090

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 93
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 94
    const v2, 0x7f0c008f

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;->setSummary(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-virtual {p1, p2}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;->setTriggerState(I)V

    .line 99
    invoke-virtual {p1, p4}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;->setIcon(I)V

    .line 100
    return-void

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private reloadTriggerListItems()V
    .locals 12

    .prologue
    const v11, 0x7f02009f

    const/4 v10, 0x1

    .line 201
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 202
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 204
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 205
    .local v3, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 206
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 207
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 209
    .local v0, "bt":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lmokee/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v5

    .line 211
    .local v5, "state":I
    invoke-direct {p0, v0, v5, v4, v11}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->initPreference(Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 212
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v0    # "bt":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "state":I
    :cond_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v8, v10}, Lmokee/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 217
    .local v7, "triggers":Ljava/util/List;, "Ljava/util/List<Lmokee/app/Profile$ProfileTrigger;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmokee/app/Profile$ProfileTrigger;

    .line 218
    .local v6, "trigger":Lmokee/app/Profile$ProfileTrigger;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    invoke-virtual {v6}, Lmokee/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lmokee/app/Profile$ProfileTrigger;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .restart local v0    # "bt":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    invoke-virtual {v6}, Lmokee/app/Profile$ProfileTrigger;->getState()I

    move-result v8

    invoke-direct {p0, v0, v8, v4, v11}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->initPreference(Lcom/flyme/deviceoriginalsettings/profiles/triggers/AbstractTriggerItem;ILandroid/content/res/Resources;I)V

    .line 220
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mTriggers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    .end local v0    # "bt":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    .end local v6    # "trigger":Lmokee/app/Profile$ProfileTrigger;
    .end local v7    # "triggers":Ljava/util/List;, "Ljava/util/List<Lmokee/app/Profile$ProfileTrigger;>;"
    :cond_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    if-eqz v8, :cond_2

    .line 225
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->notifyDataSetChanged()V

    .line 227
    :cond_2
    return-void
.end method

.method private removeTrigger(Ljava/util/List;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;

    .line 193
    .local v1, "t":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    iget v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

    if-ne v2, p2, :cond_0

    .line 194
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "t":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    .line 187
    new-instance v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    .line 188
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmokee/app/ProfileManager;->getInstance(Landroid/content/Context;)Lmokee/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mProfileManager:Lmokee/app/ProfileManager;

    .line 78
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmokee/app/Profile;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lmokee/app/Profile;

    .line 81
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    const v1, 0x7f0400cd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    .line 168
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$2;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    .local v0, "view":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 18
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 104
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "entries":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 114
    .local v16, "values":[Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    array-length v1, v11

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v15, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v11

    if-ge v12, v1, :cond_0

    .line 116
    new-instance v14, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$1;)V

    .line 117
    .local v14, "toAdd":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    aget-object v1, v16, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v14, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

    .line 118
    aget-object v1, v11, v12

    iput-object v1, v14, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;->name:Ljava/lang/String;

    .line 119
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 122
    .end local v14    # "toAdd":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mListAdapter:Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTriggerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;

    .line 123
    .local v7, "btpref":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;
    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "triggerName":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$BluetoothTrigger;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "triggerId":Ljava/lang/String;
    const/4 v3, 0x1

    .line 126
    .local v3, "triggerType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    .line 127
    .local v10, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 129
    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->removeTrigger(Ljava/util/List;I)V

    .line 132
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    .line 133
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 134
    .local v5, "valueInts":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1, v3, v4}, Lmokee/app/Profile;->getTriggerState(ILjava/lang/String;)I

    move-result v9

    .line 135
    .local v9, "currentTriggerState":I
    const/4 v8, -0x1

    .line 136
    .local v8, "currentItem":I
    const/4 v12, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    .line 137
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;

    .line 138
    .local v13, "t":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    iget-object v1, v13, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;->name:Ljava/lang/String;

    aput-object v1, v11, v12

    .line 139
    iget v1, v13, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;->value:I

    aput v1, v5, v12

    .line 140
    aget v1, v5, v12

    if-ne v1, v9, :cond_2

    .line 141
    move v8, v12

    .line 136
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 145
    .end local v13    # "t":Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$Trigger;
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v1, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v8, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->reloadTriggerListItems()V

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 162
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/triggers/BluetoothTriggerFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 163
    return-void
.end method
