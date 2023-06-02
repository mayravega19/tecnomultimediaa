// 80458/4
// Mayra Vega Velásquez
// Comisión 3 - Profesor David Bedoian
// Obra de Arte Electrónico


int estado = 0;
float mov, vel;
//declaracion de imagenes
PImage imagen2;
PImage imagen3;
//declaracion de fuentes usadas
PFont miFuente;
PFont fuente2;
PFont fuente3;

String miTexto;
float posY;

void setup() {
  size(640,480);
  
 //inicializo las variables
  mov = height + 200;
  vel = 2; 
 //pantalla creditos
  mov = height + 200;
  vel = 2; 
 //variable: asignacion
  miTexto = "TEXTODEVELADO";
  posY = -80;
  
 //funciones que afectan a text()
  textSize( 10 );
  textAlign( CENTER, CENTER );
  
 //aignacion de fuentes
   fuente2 = createFont( "ShadowsIntoLight-Regular.ttf", 30 ); //fuente de imágenes de Obra
   miFuente = createFont( "LetteringDecoShadow.ttf", 30); //fuente de pantalla netflix
   fuente3 = createFont( "Sigmar-Regular.ttf", 5); //fuente de Creditos
   posY = height;
   
 // se carga las imagenes desde la carpeta data
   imagen2= loadImage( "imagen2.jpg" ); //imagen2
   imagen3= loadImage( "imagen3.jpg" ); //imagen3
  imageMode(CENTER); 
 
}

void draw() {
  if (  estado==0 ) {
    background(7,7,7);
//pantalla de portada de TextoDevelado
 //ANIMACION PALABRA
  textAlign( CENTER,CENTER );
  textFont(miFuente );
   text( " TEXTO DEVELADO " , width/2, height/2+frameCount);
  fill(205,42,39);

  text( "TEXTO DEVELADO " , width/2, height/2);
  text( "producida por Estudio Biopus" , width/3, height/3);
  fill(93,97,94);
  
//portada de obra electronica 
   
  } else if (  estado==1 ) {
   image(imagen2,width/2,height/2);
   textAlign( CENTER,CENTER );
  textFont( fuente2);
  text( " Experiencia Lúdica " , width/4, height/2+frameCount);
   fill(238,29,102);
  text( " Experiencia Lúdica " , width/4, height/2);
   fill(248,241,241);
  textAlign(CENTER);
   
 //pantalla 
    
  } else if (  estado==2 ) {
    
    image(imagen3,width/2,height/2);
    textAlign( CENTER,CENTER );
     textFont( fuente2);
    text( "Tecnología", width/2, height/2 );
     fill(196,25,25);
   textSize( 20 ); 
  text( "vinculada con", width/2, mov-600 );
  text( "Literatura", width/2, mov-500 ); 
   fill(248,241,241);
   
 // se actualiza las variables
  mov = mov + vel;

 //pantalla creditos 
 
  } else if ( estado==5 ) {
    
    background(11, 12, 11 );
     textFont( fuente3);
     textSize( 20 );
  text( "CREDITOS - OBRA ELECTRÓNICA", width/2, mov );
  textSize( 20 );
  text( "Producido por : ESTUDIO BIOPUS", width/2, mov+500 );
  text( "Realizado en 2017- Buenos Aires", width/2, mov+600 );
  text( "Comisionado por : Gobierno de la Provincia de Tucumán", width/2, mov+700 );
  text( "Introducción", width/2, mov+800 );
    text( " Instalación interactiva que invita ", width/2, mov+900 );
     text( " a descubrir textos ocultos en la pantalla ", width/2, mov+1000 );
      text( "cada gesto de la mano sobre la ", width/2, mov+2000 );
       text( "tela elástica da vida a las palabras", width/2, mov+3000 );
  
  //2) actualizo las variables
  mov = mov - vel;
 
  }

}

void mousePressed(){
  if ( estado==0 ) {
    estado=1;
  } else if ( estado==1 )  {
    estado=2;
  } else if ( estado==2 ) {
    estado=3;
  } else if ( estado==3 ) {
    estado=4;
  } else if ( estado==4 ) {
    estado=5;
  
}
}
