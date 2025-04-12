console.log('Funciones flecha');

const saludo = () => 'Hola mundo!';
console.log(saludo());

const saludo2 = (nombre: string) => `Hola ${nombre}`;
console.log(saludo2('Fernando'));

const multiply = (a: number, b: number): number => a * b;
console.log(multiply(10, 20));

const sale = (venta: number, descuento: number): number => {
    const total = venta - (venta * (descuento / 100));
    return total;
}
console.log(sale(100, 10)); // 90

//objeto con funciones definidas como propiedades

const calculator = {
    add: (a: number, b: number): number => a + b, // Método para sumar
    subtract: (a: number, b: number): number => a - b, // Método para restar
    multiply: (a: number, b: number): number => a * b, // Método para multiplicar
    divide: (a: number, b: number): number => {
        if (b === 0) {
            throw new Error('No se puede dividir por cero');
        }
        return a / b;
    }, // Método para dividir
};

console.log(calculator.add(10, 5)); // 15
console.log(calculator.subtract(10, 5)); // 5
console.log(calculator.multiply(10, 5)); // 50
console.log(calculator.divide(10, 2)); // 5

// Ejemplo práctico: Objeto de utilidades

const utils = {
    formatDate: (date: Date): string => {
        return date.toISOString().split('T')[0]; // Formato YYYY-MM-DD
    },
    capitalize: (text: string): string => {
        return text.charAt(0).toUpperCase() + text.slice(1).toLowerCase();
    },
    randomNumber: (min: number, max: number): number => {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    },
};

console.log(utils.formatDate(new Date())); // Ejemplo: "2025-04-12"
console.log(utils.capitalize('hola mundo')); // "Hola mundo"
console.log(utils.randomNumber(1, 100)); // Número aleatorio entre 1 y 100



export { }; // Evita que el archivo sea tratado como un script y no como un módulo