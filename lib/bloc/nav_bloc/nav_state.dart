abstract class NavState{
  int counter = 0;
  NavState({required this.counter});
}

class NavInitialState extends NavState{
  NavInitialState(): super(counter:0);

  
}

class NavPreviewState extends NavState{
  NavPreviewState(int previewIndex): super(counter: previewIndex);


  }

  class NavStatsState extends NavState{
  NavStatsState(int statsIndex): super(counter: statsIndex);
  }

  class NavSimilarState extends NavState{
  NavSimilarState(int similarIndex): super(counter: similarIndex);
  }