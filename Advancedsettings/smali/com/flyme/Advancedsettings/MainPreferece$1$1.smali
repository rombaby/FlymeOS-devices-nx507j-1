.class Lcom/flyme/Advancedsettings/MainPreferece$1$1;
.super Ljava/lang/Object;
.source "MainPreferece.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/Advancedsettings/MainPreferece$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/Advancedsettings/MainPreferece$1;


# direct methods
.method constructor <init>(Lcom/flyme/Advancedsettings/MainPreferece$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/Advancedsettings/MainPreferece$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/flyme/Advancedsettings/MainPreferece$1$1;->this$1:Lcom/flyme/Advancedsettings/MainPreferece$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flyme/Advancedsettings/MainPreferece$1$1;->this$1:Lcom/flyme/Advancedsettings/MainPreferece$1;

    iget-object v1, v1, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    invoke-virtual {v1}, Lcom/flyme/Advancedsettings/MainPreferece;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u91cd\u542f\u540e\u751f\u6548"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 122
    const-string v1, "\u662f\u5426\u7acb\u5373\u91cd\u542f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 123
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/flyme/Advancedsettings/MainPreferece$1$1$1;

    invoke-direct {v2, p0}, Lcom/flyme/Advancedsettings/MainPreferece$1$1$1;-><init>(Lcom/flyme/Advancedsettings/MainPreferece$1$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 132
    return-void
.end method
