import UIKit

//Tosdas las constantes explicitas
let econst:Int = 10
let econstf:Float = 12.8
let econstd:Double = 15.2321
let econs:String = "bebe malote"
let econstb:Bool = true

//todas las constantes implicitas
let iconst = 10
let iconstf = 12.4
let iconstd = 12.43
let iconsts  = "bebe patito"
let iconstb = false


//todas las variables explicitas
var evar:Int = 10
var evarf:Float = 12.8
var evard:Double = 15.2321
var evars:String = "bebe malote"
var evarb:Bool = true

//todas las variabled implicitas
var ivart = 10
var ivarf = 12.4
var ivard = 12.43
var ivars  = "bebe patito"
var ivarb = false

//Interpolar la siguiente cadena cuyo resultado debe ser: el valor de la variable es 3 y el valor de la constante es 100
var variable = 3
let constante = 100

print("resultado de la variable es el \(variable) y el varlor de la constante es \(constante)")

//Imprimir una lista que se muestre de la siguiente manera
/*
 Lista:
 1    🍎
 2    🤡
 3    ✋🏻
 4   😀
 
 */

print(" 1 🍎 \n 2 🤡 \n 3 ✋🏻 \n 4 😀")

//Para qué sirve en la cadenas los siguientes simbolos \n \t, haga un ejemplo
//  \n sirve para dar un salto de linea y el \t da un tab


// Haga una concatenación de cadenas y una interpolación con las siguientes variables
var profesion = "Ingeniero "
var nombre = "Jorge "
var apellido = "Romo "

var resultado = profesion + nombre + apellido

print("\(profesion)\(nombre)\(apellido)")
print(resultado)

//Determinar si la variable numero es par mediante una estructura de contro IF
var numero = 2

if(numero % 2 == 0){
    print("El numero no es par porque el residuo es de \(numero % 2)")
}else {
    print("El numero es par porque es residuo es de \(numero % 2)")
}

//Calcular el área de un cirulo  con los siguientes valores
var diametro = 4.000
let pi = 3.1416

var resul = pi * (diametro / 2) * (diametro / 2)

// Arrays
var todo: [String] = ["Return Calls","Write Blogpost","Cook Dinner"]

//Agregar al arreglo los siguientes 2 valores 'Pickup Laundry' y 'Buy Bulbs'
todo.append("Pickup Laundry")
todo.append("Buy Bulbs")

//Mostrar el primer elemento de un arreglo
print ("\(todo[0])")

//Mostrar cuantos elementos tiene el arreglo
todo.count

//Eliminar el ultimo elemento del arreglo y hacer un count para ver que se haya eliminado
todo.removeLast()
todo.count

//Eliminar el elemento del arreglo con indice 3
todo.remove(at: 3)


//Imprimir todos los elementos del arreglo frutas utilizando un for in
var frutas = ["Manzana", "Piña", "Naranja", "Pera"]

for fruta in frutas {
    print(fruta)
}

 //Utilice un ciclo while para imprimir los numeros del 1 al 10
var nnumero = 1
while nnumero <= 10 {
    print(nnumero)
    nnumero = nnumero + 1
}

//Utilice un ciclo repeat-while para imprimir los numeros del 1 al 10
var numero1 = 1
repeat{
    print(numero1)
    numero1 = numero1 + 1
} while numero1 <= 10

//Haga uso de la estructura de control switch para determinar si la constante letra es una constante, una vocal o no es ninguna de las anteriores
let letra =  "e"

switch letra {
case "a", "e", "i", "o", "u":
    print("La letra es una vocal")
default:
    print("es una constante")
}

// Utilice una condicion que evalue si el estudiante de la clase aprobo el primer parcial, teniendo en cuenta que para aprobar es necesario entregar las practicas y ademas tener una calificacion en el examen mayor e igual a 7 (imprimir si el estudiante aprueba o no el primer parcial)
var calificacionExamen = 7
var entregoPracticas = false


