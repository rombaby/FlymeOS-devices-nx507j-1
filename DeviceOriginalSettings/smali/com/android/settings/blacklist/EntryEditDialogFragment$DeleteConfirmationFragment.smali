.class public Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteConfirmationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 292
    return-void
.end method

.method public static newInstance(Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;)Landroid/app/DialogFragment;
    .locals 2
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;

    .prologue
    .line 294
    new-instance v0, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;-><init>()V

    .line 295
    .local v0, "fragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 296
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;

    .line 314
    .local v0, "parent":Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;->onDeleteConfirmResult(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;->access$000(Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment;Z)V

    .line 315
    return-void

    .line 314
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0139

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a013a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04c0

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a04c1

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 308
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
