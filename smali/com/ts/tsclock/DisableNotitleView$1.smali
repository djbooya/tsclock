.class Lcom/ts/tsclock/DisableNotitleView$1;
.super Ljava/lang/Object;
.source "DisableNotitleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/DisableNotitleView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/DisableNotitleView;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/DisableNotitleView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/DisableNotitleView$1;->this$0:Lcom/ts/tsclock/DisableNotitleView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method
