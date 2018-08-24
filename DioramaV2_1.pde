
boolean[] keys;
FloatList cx = new FloatList();
IntList cy = new IntList();
IntList cz = new IntList();
FloatList cr = new FloatList();
FloatList ct = new FloatList();
FloatList ct2 = new FloatList();
FloatList cs2 = new FloatList();
IntList cs = new IntList();
PShape s,tree, car, cloud,flo1,flor2,grass,reta,curva,cerca,casa, palm,alga,coral;
PShape aviao,outdo,fabric,cabana, pedra, cristal,ane,cogu, antena,cervo,cubo;
PShape farm, areia, hill, cacho,bush, pin, pish;
float r,z,er,er2,tm,sh2,szX,mapx,szY,mapy, max,psx,rot;
int ro,ld,tmn;
int d, sh, k;
//int pos = d;
float mx,my ,mm, mmy;
PShape h;
float posy,posx;
boolean a, b, plus, mns;

void setup()
{
  size(1200,700,P3D);
    
 s = loadShape("land2.obj");
 h = loadShape("predio1.obj");
 tree = loadShape("treev.obj");
 car = loadShape("montanha.obj");
 cloud = loadShape("clouds.obj");
  flo1 = loadShape("flori.obj");
 flor2 = loadShape("lavanda.obj");
 grass = loadShape("grass.obj");
 reta = loadShape("reta.obj");
 curva = loadShape("curva.obj");
 cerca = loadShape("mar.obj");
 casa = loadShape("casa.obj");
 palm = loadShape("palm.obj");
 alga = loadShape("algae2.obj");
 coral = loadShape("coral.obj");
 aviao = loadShape("avião.obj");
 outdo = loadShape("outdo.obj");
 fabric = loadShape("fabric.obj");
 cabana = loadShape("cabana.obj");
 pedra = loadShape("pedra.obj");
 cristal = loadShape("cristal.obj");
 ane = loadShape("anemo.obj");
 cogu = loadShape("cogu.obj");
 antena = loadShape("antena.obj");
 cervo = loadShape("Cervo.obj");
 cubo = loadShape("cubo.obj");
 farm = loadShape("farm.obj");
 areia = loadShape("areia.obj");
 hill = loadShape("hill.obj");
 cacho = loadShape("cacho.obj");
 bush = loadShape("bush.obj");
 pin = loadShape("pin.obj");
 pish = loadShape("pish.obj");
      keys=new boolean[41];
   keys[0]=false;
   keys[1]=false;
   keys[2]=false;
   keys[3]=false;
   keys[4]=false;
   keys[5]=false;
   keys[6]=false;
   keys[7]=false;
   keys[8]=false;
   keys[9]=false;
   keys[10]=false;
   keys[11]=false;
   keys[12]=false;
   keys[13]=false;
   keys[14]=false;
   keys[15]=false;
   keys[16]=false;
   keys[17]=false;
   keys[18]=false;
   keys[19]=false;
   keys[20]=false;
   keys[21]=false;
   keys[22]=false;
   keys[23]=false;
   keys[24]=false;
   keys[25]=false;
   keys[26]=false;
   keys[27]=false;
   keys[28]=false;
   keys[29]=false;
   keys[30]=false;
   keys[31]=false;
   keys[32]=false;
   keys[33]=false;
   keys[34]=false;
   keys[35]=false;
   keys[36]=false;
   keys[37]=false;
   keys[38]=false;
   keys[39]=false;
   keys[40]=false;
   
   szX= 150;
   szY= 130;
}
  
  
void draw() {

  //ESCALA DO OBJETO
       if (keys[6]) 
   {  
     szX=szX-1;
     text("1", 50, 50);
   }
   if (keys[7]) 
   {
     szX=szX+1;
     text("2", 100, 100);
   }
   if(keys[1]){
     szY=szY+1;
     text("3", 150,150);
   }
     if(keys[0]){
     szY=szY-1;
     text("4", 0,0);
   }
  
  //ROTACAO DO OBJETO
     if(keys[8]){
     rot=rot+0.1;
     text("3", 150,150);}
          if(keys[38]){
     rot=rot-0.1;
     text("3", 150,150);}
if(keys[8]==false && keys[38]==false){
  rot=rot+0;
}
//POSICAO EIXO Z DO OBJETO
if(keys[39]){
psx=psx+1;
}
if(keys[40]){
  psx=psx-1;
}
if(keys[39]==false && keys[40]==false){
 psx=psx+0; 
}



  //POSICIONAMENTO DO TERRENO
              if(keyPressed==true && keyCode==UP){
    ro = ro-3;}
                  if(keyPressed==true && keyCode==DOWN){
    ro = ro+3;}
  translate(width/2,height/2+ro,d);
                if(keyPressed==true && keyCode==LEFT){
    ld = ld-3;}
                  if(keyPressed==true && keyCode==RIGHT){
    ld = ld+3;}
  translate(width/2+ld,height/2+ro,d);

 max=map(mouseX,0,1200,-10,10);
 k=3;
  mx = posx;
  my = posy;
  mm = mouseX;
  mmy = mouseY;
  nf(mm,4,2);
  nf(mx,4,2);
  nf(mmy,4,2);
  nf(k,4,2);
  rotateY(z/10);
  background(100,110,255);
  
  //SEQUENCIA DE VARIAVEIS QUE DETERMINAM A SELECAO DO SHAPE
  
                                                if (key=='1'){
 sh=32000;
 sh2=32000;}
                                                       if (key=='2'){
 sh=31000;
 sh2=31000;}
                                                     if (key=='3'){
 sh=30000;
 sh2=30000;}
                                                   if (key=='4'){
 sh=29000;
 sh2=29000;}
                                                 if (key=='5'){
 sh=28000;
 sh2=28000;}
                                               if (key=='6'){
 sh=27000;
 sh2=27000;}
                                             if (key=='7'){
 sh=26000;
 sh2=26000;}
                                           if (key=='8'){
 sh=25000;
 sh2=25000;}
                                         if (key=='0'){
 sh=24000;
 sh2=24000;}
                                       if (key=='9'){
 sh=23000;
 sh2=23000;}
                                      if (key=='z'){
 sh=22000;
 sh2=22000;}
                                    if (key=='x'){
 sh=21000;
 sh2=21000;}
                                  if (key=='d'){
 sh=20000;
 sh2=20000;}
                                if (key=='e'){
 sh=19000;
 sh2=19000;}
                              if (key=='c'){
 sh=18000;
 sh2=18000;}
                            if (key=='f'){
 sh=17000;
 sh2=17000;}
                          if (key=='r'){
 sh=16000;
 sh2=16000;}
                        if (key=='v'){
 sh=15000;
 sh2=15000;}
                      if (key=='t'){
 sh=14000;
 sh2=14000;}
                    if (key=='b'){
 sh=13000;
 sh2=13000;}
                  if (key=='n'){
 sh=12000;
 sh2=12000;}
                if (key=='m'){
 sh=11000;
 sh2=11000;}
              if (key=='g'){
 sh=10000;
 sh2=10000;}
            if (key=='y'){
 sh=9000;
 sh2=9000;}
          if (key=='u'){
 sh=8000;
 sh2=8000;}
        if (key=='i'){
 sh=7000;
 sh2=7000;}
      if (key=='o'){
 sh=6000;
 sh2=6000;}
    if (key=='p'){
 sh=5000;
 sh2=5000;}
  if (key=='h'){
 sh=4000;
 sh2=4000;}
   if (key=='j'){
    sh= 3000;
  sh2=3000;}
  if (key=='k'){
    sh= 2000;
  sh2=2000;}
    if (key=='l'){
    sh= 1000;
  sh2=1000;} 
  
  if (keyCode==BACKSPACE){
    sh=0;
  }
    
    pushMatrix();

//cria o landscape
    shape(s, -150, -150);
    
    popMatrix();

  pushMatrix();

//METODO DE REGISTRO DAS PROPRIEDADES DO OBJETO
   for (int i = 0; i < cx.size(); i++) {
    float px = cx.get(i);
    int py = cy.get(i);
    int pz = cz.get(i);
    int ps = cs.get(i);
    float roty = cr.get(i);
    float pt = ct.get(i);
    float ps2 = cs2.get(i);  
    float pt2 = ct2.get(i);
         
         rotateY(roty);
         
    translate(px*9-900,py*6-3500,pz*4-2500);
    //if(keyPressed==true)
      if(keyPressed==true && key=='l'){
      ps=1000;
      ps2=1000;
    }
    if (ps>999 && ps<1001){
      shape(h,0, 0,pt,pt2);
    }
   // if(keyPressed==true)
    if(keyPressed==true && key=='k'){
      ps=2000;
      ps2=2000;
    }
        if (ps>1999 && ps<2001){
      shape(tree,0, 0,pt,pt2);
    }
    //cria montanha--------
   // if(keyPressed==true)
        if(keyPressed==true && key=='j'){
      ps=3000;
      ps2=3000;
    }
        if (ps>2999 && ps<3001){
      shape(car,0, 0,pt,pt2);
    }
    //cria a nuvem-----------
      //  if(keyPressed==true)
    if(keyPressed==true && key=='h'){
      ps=4000;
      ps2=4000;
    }
        if (ps>3999 && ps<4001){
      shape(cloud,0,0,pt,pt2);
    }
        if(keyPressed==true && key=='p'){
      ps=5000;
      ps2=5000;
    }
        if (ps>4999 && ps<5001){
      shape(flo1,0,0,pt, pt2);
    }
            if(keyPressed==true && key=='o'){
      ps=6000;
      ps2=6000;
    }
        if (ps>5999 && ps<6001){
      shape(flor2,0,0,pt, pt2);
    }
                if(keyPressed==true && key=='i'){
      ps=7000;
      ps2=7000;
    }
        if (ps>6999 && ps<7001){
      shape(grass,0,0,pt, pt2);
    }
                    if(keyPressed==true && key=='u'){
      ps=8000;
      ps2=8000;
    }
        if (ps>7999 && ps<8001){
      shape(reta,0,0,pt, pt2);
    }
                        if(keyPressed==true && key=='y'){
      ps=9000;
      ps2=9000;
    }
        if (ps>8999 && ps<9001){
      shape(curva,0,0,pt, pt2);
    }
                           if(keyPressed==true && key=='g'){
      ps=10000;
      ps2=10000;
    }
        if (ps>9999 && ps<10001){
      shape(cerca,0,0,pt, pt2);
    }
                              if(keyPressed==true && key=='m'){
      ps=11000;
      ps2=11000;
    }
        if (ps>10999 && ps<11001){
      shape(casa,0,0,pt, pt2);
    }
                                  if(keyPressed==true && key=='n'){
      ps=12000;
      ps2=12000;
    }
        if (ps>11999 && ps<12001){
      shape(palm,0,0,pt, pt2);
    }
                                      if(keyPressed==true && key=='b'){
      ps=13000;
      ps2=13000;
    }
        if (ps>12999 && ps<13001){
      shape(alga,0,0,pt, pt2);
    }
                                          if(keyPressed==true && key=='t'){
      ps=14000;
      ps2=14000;
    }
        if (ps>13999 && ps<14001){
      shape(coral,0,0,pt, pt2);
    }
                                              if(keyPressed==true && key=='v'){
      ps=15000;
      ps2=15000;
    }
        if (ps>14999 && ps<15001){
      shape(aviao,0,0,pt, pt2);
    }
                                         if(keyPressed==true && key=='r'){
      ps=16000;
      ps2=16000;
    }
        if (ps>15999 && ps<16001){
      shape(outdo,0,0,pt, pt2);
    }
                                        if(keyPressed==true && key=='f'){
      ps=17000;
      ps2=17000;
    }
        if (ps>16999 && ps<17001){
      shape(fabric,0,0,pt, pt2);
    }
                                     if(keyPressed==true && key=='c'){
      ps=18000;
      ps2=18000;
    }
        if (ps>17999 && ps<18001){
      shape(cabana,0,0,pt, pt2);
    }
                           if(keyPressed==true && key=='e'){
      ps=19000;
      ps2=19000;
    }
        if (ps>18999 && ps<19001){
      shape(pedra,0,0,pt, pt2);
    }
                               if(keyPressed==true && key=='d'){
      ps=20000;
      ps2=20000;
    }
        if (ps>19999 && ps<20001){
      shape(cristal,0,0,pt, pt2);
    }
                                   if(keyPressed==true && key=='x'){
      ps=21000;
      ps2=21000;
    }
        if (ps>20999 && ps<21001){
      shape(ane,0,0,pt, pt2);
    }
                              if(keyPressed==true && key=='z'){
      ps=22000;
      ps2=22000;
    }
        if (ps>21999 && ps<22001){
      shape(cogu,0,0,pt, pt2);
    }
                                  if(keyPressed==true && key=='9'){
      ps=23000;
      ps2=23000;
    }
        if (ps>22999 && ps<23001){
      shape(antena,0,0,pt, pt2);
    }
                                 if(keyPressed==true && key=='0'){
      ps=24000;
      ps2=24000;
    }
        if (ps>23999 && ps<24001){
      shape(cervo,0,0,pt, pt2);
    }
                                    if(keyPressed==true && key=='8'){
      ps=25000;
      ps2=25000;
    }
        if (ps>24999 && ps<25001){
      shape(cubo,0,0,pt, pt2);
    }
                                        if(keyPressed==true && key=='7'){
      ps=26000;
      ps2=26000;
    }
        if (ps>25999 && ps<26001){
      shape(farm,0,0,pt, pt2);
    }
                                            if(keyPressed==true && key=='6'){
      ps=27000;
      ps2=27000;
    }
        if (ps>26999 && ps<27001){
      shape(areia,0,0,pt, pt2);
    }
                                               if(keyPressed==true && key=='5'){
      ps=28000;
      ps2=28000;
    }
        if (ps>27999 && ps<28001){
      shape(hill,0,0,pt, pt2);
    }
                                          if(keyPressed==true && key=='4'){
      ps=29000;
      ps2=29000;
    }
        if (ps>28999 && ps<29001){
      shape(cacho,0,0,pt, pt2);
    }
                                             if(keyPressed==true && key=='3'){
      ps=30000;
      ps2=30000;
    }
        if (ps>29999 && ps<30001){
      shape(bush,0,0,pt, pt2);
    }
                                               if(keyPressed==true && key=='2'){
      ps=31000;
      ps2=31000;
    }
        if (ps>30999 && ps<31001){
      shape(pin,0,0,pt, pt2);
    }
                                             if(keyPressed==true && key=='1'){
      ps=32000;
      ps2=32000;
    }
        if (ps>31999 && ps<32001){
      shape(pish,0,0,pt, pt2);
    }
     //println(ps);

      translate(-px*9+900,-py*6+3500,-pz*4+2500);
      rotateY(-roty);
    }
  //ZOOM E ROTACAO DO LANDSCAPE
       if(keyPressed==true && key=='a'){
    z = z+0.3;}
      if(keyPressed==true && key=='s'){
    z = z-0.3;}
           if(keyPressed==true && key=='q'){
    d = d+3;}
      if(keyPressed==true && key=='w'){
    d = d-3;}
 
//SHAPE DE REFERENCIA
rotateY(rot);    
translate(psx*9-900, mouseY*6-3500,mouseX*4-2500);
  fill(mouseX, mouseY, 200);
    if(sh==1000){
 shape(h,0, 0,szX,szY);
 }
   if(sh==2000){
 shape(tree,0, 0,szX,szY);
 }
    if(sh==3000){
 shape(car,0, 0,szX,szY);
 }
 if(sh==4000){
   shape(cloud,0,0,szX,szY);
 }
  if(sh==5000){
   shape(flo1,0,0,szX,szY);
 }
   if(sh==6000){
   shape(flor2,0,0,szX,szY);
 }
    if(sh==7000){
   shape(grass,0,0,szX,szY);
 }
     if(sh==8000){
   shape(reta,0,0,szX,szY);
 }
      if(sh==9000){
   shape(curva,0,0,szX,szY);
 }
       if(sh==10000){
   shape(cerca,0,0,szX,szY);
 }
        if(sh==11000){
   shape(casa,0,0,szX,szY);
 }
         if(sh==12000){
   shape(palm,0,0,szX,szY);
 }
          if(sh==13000){
   shape(alga,0,0,szX,szY);
 }
           if(sh==14000){
   shape(coral,0,0,szX,szY);
 }
            if(sh==15000){
   shape(aviao,0,0,szX,szY);
 }
             if(sh==16000){
   shape(outdo,0,0,szX,szY);
 }
              if(sh==17000){
   shape(fabric,0,0,szX,szY);
 }
               if(sh==18000){
   shape(cabana,0,0,szX,szY);
 }
                if(sh==19000){
   shape(pedra,0,0,szX,szY);
 }
                 if(sh==20000){
   shape(cristal,0,0,szX,szY);
 }
                  if(sh==21000){
   shape(ane,0,0,szX,szY);
 }
                   if(sh==22000){
   shape(cogu,0,0,szX,szY);
 }
                    if(sh==23000){
   shape(antena,0,0,szX,szY);
 }
                     if(sh==24000){
   shape(cervo,0,0,szX,szY);
 }
                      if(sh==25000){
   shape(cubo,0,0,szX,szY);
 }
                       if(sh==26000){
   shape(farm,0,0,szX,szY);
 }
                        if(sh==27000){
   shape(areia,0,0,szX,szY);
 }
                         if(sh==28000){
   shape(hill,0,0,szX,szY);
 }
                          if(sh==29000){
   shape(cacho,0,0,szX,szY);
 }
                           if(sh==30000){
   shape(bush,0,0,szX,szY);
 }
                            if(sh==31000){
   shape(pin,0,0,szX,szY);
 }
                             if(sh==32000){
   shape(pish,0,0,szX,szY);
 }
 
 rotateY(rot);
    popMatrix();
   
}
void mousePressed() {
  if (mouseButton==LEFT){
  cx.append(psx);
  cy.append(mouseY);
  cz.append(mouseX);
  cs.append(sh);
  ct.append(szX);
  ct2.append(szY);
  cs2.append(sh2);
  cr.append(rot);}
}

void keyPressed()
 {
   if (key==',')
     keys[0]=true;
   if (key=='.')
     keys[1]=true;
   if (key=='j')
    keys[2]=true;
       if (key=='k')
    keys[3]=true;
       if (key=='l')
    keys[4]=true;
       if (key=='h')
    keys[5]=true;
       if (key==';')
    keys[6]=true;
       if (key=='/')
    keys[7]=true;
       if (key=='=')
    keys[8]=true;
    
    if (key=='p')
     keys[9]=true;
   if (key=='o')
    keys[10]=true;
       if (key=='i')
    keys[11]=true;
       if (key=='u')
    keys[12]=true;
       if (key=='y')
    keys[13]=true;
       if (key=='t')
    keys[14]=true;
       if (key=='r')
    keys[15]=true;
       if (key=='e')
    keys[16]=true;
    
    if (key=='g')
     keys[17]=true;
   if (key=='f')
    keys[18]=true;
       if (key=='d')
    keys[19]=true;
       if (key=='m')
    keys[20]=true;
       if (key=='n')
    keys[21]=true;
       if (key=='b')
    keys[22]=true;
       if (key=='v')
    keys[23]=true;
       if (key=='c')
    keys[24]=true;
    
    if (key=='x')
     keys[25]=true;
   if (key=='z')
    keys[26]=true;
       if (key=='0')
    keys[27]=true;
       if (key=='1')
    keys[28]=true;
       if (key=='2')
    keys[29]=true;
       if (key=='3')
    keys[30]=true;
       if (key=='4')
    keys[31]=true;
       if (key=='5')
    keys[32]=true;
    
    if (key=='6')
     keys[33]=true;
   if (key=='7')
    keys[34]=true;
       if (key=='8')
    keys[35]=true;
       if (key=='9')
    keys[36]=true;
    if (key=='-')
    keys[38]=true;
    if (key=='[')
    keys[39]=true;
    if (key==']')
    keys[40]=true;

 }
 void keyReleased()
 {
   if (key==',')
      keys[0]=false;
   if (key=='.')
      keys[1]=false;
   if (key=='j')
      keys[2]=false;
   if (key=='k')
      keys[3]=false;
         if (key=='l')
      keys[4]=false;
   if (key=='h')
      keys[5]=false;
       if (key==';')
    keys[6]=false;
       if (key=='/')
    keys[7]=false;
       if (key=='=')
    keys[8]=false;
    
        if (key=='p')
     keys[9]=false;
   if (key=='o')
    keys[10]=false;
       if (key=='i')
    keys[11]=false;
       if (key=='u')
    keys[12]=false;
       if (key=='y')
    keys[13]=false;
       if (key=='t')
    keys[14]=false;
       if (key=='r')
    keys[15]=false;
       if (key=='e')
    keys[16]=false;
    
    if (key=='g')
     keys[17]=false;
   if (key=='f')
    keys[18]=false;
       if (key=='d')
    keys[19]=false;
       if (key=='m')
    keys[20]=false;
       if (key=='n')
    keys[21]=false;
       if (key=='b')
    keys[22]=false;
       if (key=='v')
    keys[23]=false;
       if (key=='c')
    keys[24]=false;
    
    if (key=='x')
     keys[25]=false;
   if (key=='z')
    keys[26]=false;
       if (key=='0')
    keys[27]=false;
       if (key=='1')
    keys[28]=false;
       if (key=='2')
    keys[29]=false;
       if (key=='3')
    keys[30]=false;
       if (key=='4')
    keys[31]=false;
       if (key=='5')
    keys[32]=false;
    
    if (key=='6')
     keys[33]=false;
   if (key=='7')
    keys[34]=false;
       if (key=='8')
    keys[35]=false;
       if (key=='9')
    keys[36]=false;
     if (key=='-')
     keys[38]=false;
         if (key=='[')
    keys[39]=false;
    if (key==']')
    keys[40]=false;
} 
