const name: string = 'Fernando';
const age: number = 35;
const isValid: boolean = true;

let name1: string | number = 'Leon';
let edad: number | 'Full' ;

 edad= 'Full';
 edad = 'Full';
 edad= 25;
 
console.log(name, age, isValid);

export {}; // Evita que el archivo sea tratado como un script y no como un módulo
