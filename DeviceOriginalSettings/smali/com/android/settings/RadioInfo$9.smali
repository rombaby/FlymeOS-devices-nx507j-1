.class Lcom/flyme/deviceoriginalsettings/RadioInfo$9;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$9;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 904
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "content://icc/sdn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.ADNList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$9;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 914
    const/4 v1, 0x1

    return v1
.end method
