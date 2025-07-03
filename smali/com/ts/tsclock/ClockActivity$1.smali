.class Lcom/ts/tsclock/ClockActivity$1;
.super Ljava/lang/Object;
.source "ClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/ClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ClockActivity;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ClockActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ClockActivity$1;->this$0:Lcom/ts/tsclock/ClockActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity$1;->this$0:Lcom/ts/tsclock/ClockActivity;

    invoke-static {v0}, Lcom/ts/tsclock/ClockActivity;->access$0(Lcom/ts/tsclock/ClockActivity;)V

    .line 88
    iget-object v0, p0, Lcom/ts/tsclock/ClockActivity$1;->this$0:Lcom/ts/tsclock/ClockActivity;

    invoke-static {v0}, Lcom/ts/tsclock/ClockActivity;->access$1(Lcom/ts/tsclock/ClockActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
