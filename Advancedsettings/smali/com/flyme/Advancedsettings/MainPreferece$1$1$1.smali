.class Lcom/flyme/Advancedsettings/MainPreferece$1$1$1;
.super Ljava/lang/Object;
.source "MainPreferece.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/Advancedsettings/MainPreferece$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/flyme/Advancedsettings/MainPreferece$1$1;


# direct methods
.method constructor <init>(Lcom/flyme/Advancedsettings/MainPreferece$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/flyme/Advancedsettings/MainPreferece$1$1;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flyme/Advancedsettings/MainPreferece$1$1$1;->this$2:Lcom/flyme/Advancedsettings/MainPreferece$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/flyme/Advancedsettings/MainPreferece$1$1$1;->this$2:Lcom/flyme/Advancedsettings/MainPreferece$1$1;

    iget-object v0, v0, Lcom/flyme/Advancedsettings/MainPreferece$1$1;->this$1:Lcom/flyme/Advancedsettings/MainPreferece$1;

    iget-object v0, v0, Lcom/flyme/Advancedsettings/MainPreferece$1;->this$0:Lcom/flyme/Advancedsettings/MainPreferece;

    # getter for: Lcom/flyme/Advancedsettings/MainPreferece;->command:Lcom/flyme/Advancedsettings/Utils/RootCmd;
    invoke-static {v0}, Lcom/flyme/Advancedsettings/MainPreferece;->access$200(Lcom/flyme/Advancedsettings/MainPreferece;)Lcom/flyme/Advancedsettings/Utils/RootCmd;

    move-result-object v0

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/flyme/Advancedsettings/Utils/RootCmd;->rootCmd(Ljava/lang/String;)V

    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 128
    return-void
.end method
