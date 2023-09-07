funPi = function(){
  pi = 0 
  i = 0
  for (i in 0:10000000){
    pi = pi + ((-1)^i)/(2*i+1)
  }
  pi = pi*4
  print(paste(pi))
}

fune = function(){
  i=0
  VF0=0
  DeltaVF=Inf
  umbral = 0.0000000001
  while(DeltaVF > umbral){
    VF=(1+(1/i))^i
    DeltaVF=VF-VF0
    VF0=VF
    i=i+1
  }
  print(paste(VF0))
}

switchPersonal = function(elegir){
  resultado = switch(
    elegir,
    "Calcular Pi" = funPi(),
    "Calcular e" = fune(),
  )
}

cat("Presiona el número si quieres: \n1.- Calcular Pi \n2.- Calcular e")
switchPersonal(scan())