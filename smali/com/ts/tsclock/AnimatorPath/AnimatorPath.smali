.class public Lcom/ts/tsclock/AnimatorPath/AnimatorPath;
.super Ljava/lang/Object;
.source "AnimatorPath.java"


# instance fields
.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ts/tsclock/AnimatorPath/PathPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public getPoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/ts/tsclock/AnimatorPath/PathPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public lineTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/ts/tsclock/AnimatorPath/PathPoint;->lineTo(FF)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public moveTo(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/ts/tsclock/AnimatorPath/PathPoint;->moveTo(FF)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public secondBesselCurveTo(FFFF)V
    .locals 2
    .param p1, "c0X"    # F
    .param p2, "c0Y"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Lcom/ts/tsclock/AnimatorPath/PathPoint;->secondBesselCurveTo(FFFF)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public thirdBesselCurveTo(FFFFFF)V
    .locals 2
    .param p1, "c0X"    # F
    .param p2, "c0Y"    # F
    .param p3, "c1X"    # F
    .param p4, "c1Y"    # F
    .param p5, "x"    # F
    .param p6, "y"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ts/tsclock/AnimatorPath/AnimatorPath;->mPoints:Ljava/util/List;

    invoke-static/range {p1 .. p6}, Lcom/ts/tsclock/AnimatorPath/PathPoint;->thirdBesselCurveTo(FFFFFF)Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method
