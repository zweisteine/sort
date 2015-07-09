int[] a = new int[20];
 int j=0, k=0,p=0;
 int time;

void setup(){
  size(500,500);
  background(255);
  for (int i=0;i <20;i++) {
  a[i]=(int)random(100);
  }
}

void draw(){
  if(j<20){
  int d=0;
  int min=a[0];
  int temp=0;

      background(255);
      min=a[j];
      for(k=j+1;k<20;k++){
          if(a[k]<min){
              min=a[k];
              p=k;
          }
      }
    
    if(min<a[j]){
      temp=a[j];
      a[j]=min;
      a[p]=temp;
    }
     
    for(d=0;d<20;d++){
      fill(255,255,0);
      rect(50+20*d,20,20,4*a[d]);  
    }
    j++;
    time = millis();
    while(millis() - time <= 100){}
  }
 
  
}
