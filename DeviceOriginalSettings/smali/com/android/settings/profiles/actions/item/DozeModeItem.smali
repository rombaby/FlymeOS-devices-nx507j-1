.class public Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;
.super Ljava/lang/Object;
.source "DozeModeItem.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;


# instance fields
.field mProfile:Lmokee/app/Profile;


# direct methods
.method public constructor <init>(Lmokee/app/Profile;)V
    .locals 0
    .param p1, "profile"    # Lmokee/app/Profile;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;->mProfile:Lmokee/app/Profile;

    .line 33
    return-void
.end method

.method public static getSummaryString(Lmokee/app/Profile;)I
    .locals 1
    .param p0, "profile"    # Lmokee/app/Profile;

    .prologue
    .line 65
    invoke-virtual {p0}, Lmokee/app/Profile;->getDozeMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 67
    :pswitch_0
    const v0, 0x7f0a0259

    goto :goto_0

    .line 69
    :pswitch_1
    const v0, 0x7f0a025c

    goto :goto_0

    .line 71
    :pswitch_2
    const v0, 0x7f0a025b

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;->DOZEMODE_ITEM:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    const v3, 0x7f040076

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f110005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0a07ea

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 58
    const v3, 0x7f11005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;->mProfile:Lmokee/app/Profile;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;->getSummaryString(Lmokee/app/Profile;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    return-object v2

    .line 52
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
