.class public Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WakeLockBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WakeLockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    .line 81
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    # getter for: Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->access$000(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 87
    .local v2, "rowView":Landroid/view/View;
    const v3, 0x7f02014b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 89
    .local v0, "checkedTextView":Landroid/widget/CheckedTextView;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    # getter for: Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->access$100(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    # getter for: Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->access$200(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 92
    new-instance v3, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter$1;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;Landroid/widget/CheckedTextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object v2
.end method