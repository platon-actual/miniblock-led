// Ramiro Iván Ríos 2024-10-06
/*
    Estoy desarrollando una pieza de juguete, a la cual se le pueda agregar,
    luces LEDs simples. Un par de baterías de juguetes. Cositas.
    Este código está en alpha, en pleno diseño, y su licencia es la siguiente:
    NOTA: los cilindros de ABAJO se llaman CILINDROS, y los de ARRIBA se llaman TETONES.
*/
alto = 20;
ancho = 20;
largo = 60;

// viva la revolución (?)
$fn = 50;
epsilon = 0.01;

cube([ancho, largo, alto]);

// LOS ENCASTRES SUPERIORES
module top_teton_encastre(altura_encastre=3,radio_encastre=3){
    color("Lime"){
    difference(){
        cylinder(h=altura_encastre, r=radio_encastre);
        translate([ 0, 0, epsilon ])
            cylinder(h=altura_encastre, r=radio_encastre-1);
    }
    }
}

// LOS ENCASTRES INFERIORES
module bottom_cilindro_encastre(){
    
}


// multiplico los encastres, pero como no sé si son 8 o 12, hago los dos...
// UPDATE son 2 filas de 4 tetones = 8 tetones.
for( pos = [ 0 : 3 ]) {
    translate([ ancho/2/2, (pos*15) + 8, alto ]){
        top_teton_encastre();
    }
    translate([ ancho*3/2/2, (pos*15) + 8, alto ]){
        top_teton_encastre();
    }
}
/*
for( pos= [ 0 : 5 ]){
    translate([ ancho*3/2/2, (pos*9) + 8, alto ]){
        top_cilindro_encastre();
    }
}
*/
