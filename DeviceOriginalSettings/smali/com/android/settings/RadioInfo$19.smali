.class Lcom/flyme/deviceoriginalsettings/RadioInfo$19;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1105
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$19;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM-specific Info/Settings Activity Not Found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1000(Lcom/flyme/deviceoriginalsettings/RadioInfo;Ljava/lang/String;)V

    goto :goto_0
.end method
