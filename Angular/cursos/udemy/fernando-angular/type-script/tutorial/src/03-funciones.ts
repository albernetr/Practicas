// crear una funcion para sumar dos numeros y retornar el resultado
function sum(a: number, b: number): number {
    return a + b;
}

// crear una funcion para restar dos numeros y retornar el resultado en tipo string
function rest(a: number, b: number): string {
    return `${a - b}`;
}

// crear una funcion con valores requeridos, opcionesles y por defecto
function greet(name: string, age?: number, country: string = 'Colombia'): string {
    return `Hola ${name}, tienes ${age} años y vives en ${country}`;
}
// llamar a la funcion greet y mostrar el resultado por consola
console.log(greet('Fernando', 35, 'España'));
console.log(greet('Fernando', 35)); // el tercer argumento es opcional
console.log(greet('Fernando')); // el segundo y tercer argumento son opcionales


// realizar la suma, asignarlo a una variable y mostrar el resultado por consola
const result: number = sum(10, 20);
console.log(result);

const result2: string = rest(20, 10);
console.log(result2);




export { }; // Evita que el archivo sea tratado como un script y no como un módulo