.class Lcom/ts/tsclock/ViewPager1$1;
.super Landroid/content/BroadcastReceiver;
.source "ViewPager1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/ViewPager1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ViewPager1;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ViewPager1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ViewPager1$1;->this$0:Lcom/ts/tsclock/ViewPager1;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allapp_backto_workspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
