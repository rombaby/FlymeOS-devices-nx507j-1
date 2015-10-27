.class public Lcom/flyme/Advancedsettings/MyPreferenceActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MyPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v1, 0x7f040022

    invoke-virtual {p0, v1}, Lcom/flyme/Advancedsettings/MyPreferenceActivity;->setContentView(I)V

    .line 15
    const v1, 0x7f0e0064

    invoke-virtual {p0, v1}, Lcom/flyme/Advancedsettings/MyPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 16
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/flyme/Advancedsettings/MyPreferenceActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 19
    invoke-virtual {p0}, Lcom/flyme/Advancedsettings/MyPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e006b

    new-instance v3, Lcom/flyme/Advancedsettings/MainPreferece;

    invoke-direct {v3}, Lcom/flyme/Advancedsettings/MainPreferece;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 20
    return-void
.end method
