.class public Lcom/flyme/deviceoriginalsettings/ZonePicker;
.super Landroid/app/ListFragment;
.source "ZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ZonePicker$MyComparator;,
        Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;,
        Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneSelectionListener;
    }
.end annotation


# instance fields
.field private mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

.field private mListener:Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneSelectionListener;

.field private mSortedByTimezone:Z

.field private mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 320
    return-void
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortedByName"    # Z

    .prologue
    .line 93
    const v0, 0x7f040049

    invoke-static {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sortedByName"    # Z
    .param p2, "layoutId"    # I

    .prologue
    const/4 v9, 0x2

    .line 104
    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v4, v1

    const/4 v1, 0x1

    const-string v3, "gmt"

    aput-object v3, v4, v1

    .line 105
    .local v4, "from":[Ljava/lang/String;
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 107
    .local v5, "to":[I
    if-eqz p1, :cond_0

    const-string v7, "name"

    .line 108
    .local v7, "sortKey":Ljava/lang/String;
    :goto_0
    new-instance v6, Lcom/flyme/deviceoriginalsettings/ZonePicker$MyComparator;

    invoke-direct {v6, v7}, Lcom/flyme/deviceoriginalsettings/ZonePicker$MyComparator;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "comparator":Lcom/flyme/deviceoriginalsettings/ZonePicker$MyComparator;
    new-instance v8, Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;

    invoke-direct {v8}, Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;-><init>()V

    .line 110
    .local v8, "zoneGetter":Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;
    # invokes: Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;->getZones(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v8, p0}, Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;->access$000(Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 112
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 118
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    return-object v0

    .line 107
    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v2    # "sortedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "comparator":Lcom/flyme/deviceoriginalsettings/ZonePicker$MyComparator;
    .end local v7    # "sortKey":Ljava/lang/String;
    .end local v8    # "zoneGetter":Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneGetter;
    :cond_0
    const-string v7, "offset"

    goto :goto_0

    .line 105
    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public static getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I
    .locals 6
    .param p0, "adapter"    # Landroid/widget/SimpleAdapter;
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "defaultId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 134
    .local v3, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 136
    invoke-virtual {p0, v1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 137
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, "id":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    .end local v1    # "i":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    :goto_1
    return v1

    .line 134
    .restart local v1    # "i":I
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<**>;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;
    .locals 1
    .param p0, "item"    # Ljava/lang/Object;

    .prologue
    .line 152
    check-cast p0, Ljava/util/Map;

    .end local p0    # "item":Ljava/lang/Object;
    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private setSorting(Z)V
    .locals 3
    .param p1, "sortByTimezone"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 221
    .local v0, "adapter":Landroid/widget/SimpleAdapter;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mSortedByTimezone:Z

    .line 223
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v1

    .line 224
    .local v1, "defaultIndex":I
    if-ltz v1, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setSelection(I)V

    .line 227
    :cond_0
    return-void

    .line 219
    .end local v0    # "adapter":Landroid/widget/SimpleAdapter;
    .end local v1    # "defaultIndex":I
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 160
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mTimezoneSortedAdapter:Landroid/widget/SimpleAdapter;

    .line 161
    invoke-static {v0, v2}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;Z)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mAlphabeticalAdapter:Landroid/widget/SimpleAdapter;

    .line 164
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setSorting(Z)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setHasOptionsMenu(Z)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x1

    const v1, 0x7f0a05e3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    const/4 v0, 0x2

    const v1, 0x7f0a05e4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 183
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 173
    .local v0, "list":Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 174
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->isResumed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 306
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v5, "id"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 309
    .local v4, "tzId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 310
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "alarm"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 311
    .local v1, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 312
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 313
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mListener:Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneSelectionListener;

    if-eqz v5, :cond_1

    .line 314
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mListener:Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneSelectionListener;

    invoke-interface {v5, v3}, Lcom/flyme/deviceoriginalsettings/ZonePicker$ZoneSelectionListener;->onZoneSelected(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 202
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setSorting(Z)V

    goto :goto_0

    .line 206
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/ZonePicker;->setSorting(Z)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ZonePicker;->mSortedByTimezone:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
