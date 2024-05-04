//Variables
let miPrimeraVariable = 10 // number
let miPrimerString = "Hola" // string o cadena
let miPrimerBool = false // bool
let miPrimerReal = 10.40 // float o real
let miPrimerArreglo = [1, 4, 5, 4] //array
let miPrimerObjecto = 
  {
    "llave": "valor", 
    "otra_llave": "otro_valor",
    "numero": 1
 } //objeto

 //Cambiar valor de variable
miPrimeraVariable = 15

//Cadenas de texto
let primerNombre = "Marco" //camelCase
let segundoNombre = "Tulio"
//Concatenar textos
let combinado = primerNombre + " " + segundoNombre
console.log(combinado)

//Buscar en texto
let textoLargo = "Hola como estas"
let indiceDeHola = textoLargo.indexOf("como")
console.log(indiceDeHola)

//Tamano del texto
console.log(textoLargo.length)

function miPrimeraFunction(nombre, mensaje){
    alert(nombre + " " + mensaje)
}

//miPrimeraFunction("Marco", "Como estas ?")
//miPrimeraFunction("Juan", "Como te va?")

//Devuelve un valor
function sumar (numero1, numero2){
    return numero1 + numero2
}

let resultado = sumar(10, 20)
console.log(resultado)

//Operaciones basicas
// + sumar
// - restar
// * multiplicar
// / dividir
// % modulo (residuo)
// math.Pow()

function verificarMayorDeEdad(edad){
    //Comparadores
    // > mayor que
    // < menor que
    // >= mayor o igual
    // <= menor o igual
    // == igual
    // ! negacion
    // != diferente de
    if (edad >= 18){
        console.log("Es mayor de edad")
    }
    else {
        console.log("Es menor de edad")
    }
}

function verificarPunteos(punteo1, punteo2){
    //La funcion evalua que solo si el punteo1
    //es mayor a 60 se debe evaluar el otro punteo
    if (punteo1 >= 60){
        if (punteo2 >= 60){
            console.log("Aprobo");
        }
        else{
            console.log("Reprobo el punteo 2");
        }
    }
    else{
        console.log("Reprobo el punteo 1");
    }
}

verificarMayorDeEdad(18);
verificarMayorDeEdad(17);

verificarPunteos(61, 60);
verificarPunteos(59, 60);
verificarPunteos(60, 59);

function promedioSinBucle (){
 let alumno1= 30
 let alumno2 = 40
 let alumno3 = 40
 let alumno4 = 24
 let alumno5 = 30

 return (alumno1 + alumno2 + alumno3 + alumno4 + alumno5)/5
}

function promedioConBucle(){
    let notas = [30,40,40,24,30]
    let acumulador = 0
    //++ es equivalnete a escribir indice = indice + 1
    for (let indice=0; indice < notas.length ; indice ++){
        acumulador = acumulador + notas[indice]
    }
    return acumulador / notas.length;
}
console.log(promedioSinBucle())
console.log (promedioConBucle())

function imprimir5Veces(mensaje){
    for (let indice=0; indice < 5; indice ++){
        console.log(mensaje)
    }
}
imprimir5Veces("Hola desde el bucle")

//API del Navegador
//alert("Hola")
//let respuesta = confirm("Estas seguro ?")

//let datos = prompt("Ingrese su nombre")

//Obtener un elemento de HTML

document.getElementById("boton").onclick = function(event){

    let labelNombre = document.getElementById("lblNombre")
    labelNombre.style.backgroundColor = "blue" 
    let txtNombre = document.getElementById('txtNombre')
    let txtEdad = document.getElementById('txtEdad')

    alert("Tu nombre es "+ txtNombre.value + " y tu edad es " +txtEdad.value);

}

document.getElementById('btnAgregarInput').onclick = function(event){
    let nuevoInput = document.createElement("input")
    nuevoInput.type = "number"
    document.body.appendChild(nuevoInput)
}
