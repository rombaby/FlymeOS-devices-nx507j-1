.class Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment$2;
.super Ljava/lang/Object;
.source "SetupTriggersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;->finishFragment()V

    .line 154
    return-void
.end method
