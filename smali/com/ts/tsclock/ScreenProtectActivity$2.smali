.class Lcom/ts/tsclock/ScreenProtectActivity$2;
.super Ljava/lang/Object;
.source "ScreenProtectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/tsclock/ScreenProtectActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/tsclock/ScreenProtectActivity;


# direct methods
.method constructor <init>(Lcom/ts/tsclock/ScreenProtectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/tsclock/ScreenProtectActivity$2;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ts/tsclock/ScreenProtectActivity$2;->this$0:Lcom/ts/tsclock/ScreenProtectActivity;

    invoke-virtual {v0}, Lcom/ts/tsclock/ScreenProtectActivity;->finish()V

    .line 71
    return-void
.end method
