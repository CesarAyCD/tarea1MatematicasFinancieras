VFfuncion2 = function(umbral, nIter){
  i=0
  VF0=0
  DeltaVF=Inf
  while(DeltaVF > umbral & i < nIter){
    VF=(1+(1/i))^i
    DeltaVF=VF-VF0
    VF0=VF
    i=i+1
  }
  if(i >= nIter){
    print(paste("Se llegó al valor ",VF0," con ",i," iteraciones"))
  }else{
    print(paste("Se llegó al valor ",VF0," con el umbral ",umbral))
  }
}

VFfuncion2(0.00000001, 100000)
