.class Lcom/ts/tsclock/FloatWindow$2;
.super Ljava/lang/Object;
.source "FloatWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/FloatWindow;->initWindow(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/FloatWindow;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/FloatWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/FloatWindow$2;->this$0:Lcom/ts/tsclock/FloatWindow;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ts/tsclock/FloatWindow$2;->this$0:Lcom/ts/tsclock/FloatWindow;

    invoke-virtual {v0}, Lcom/ts/tsclock/FloatWindow;->hide()V

    .line 92
    invoke-static {}, Lcom/ts/tsclock/BackBox;->getInstance()Lcom/ts/tsclock/BackBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/tsclock/BackBox;->show()V

    .line 93
    return-void
.end method
