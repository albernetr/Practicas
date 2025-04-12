const objeto = { nombre: "Juan", edad: 25 };

const { nombre } = objeto; // Desestructuración del objeto

console.log(nombre); // "Juan"
//console.log(edad);   // 25

interface Persona {
    nombre: string;
    edad: number;
}

// requiero un conjunto de objetos de pernas de minimo 4 elementos en un array
const personas: Persona[] = [
    { nombre: "Juan", edad: 25 },
    { nombre: "Ana", edad: 30 },
    { nombre: "Pedro", edad: 35 },
    { nombre: "María", edad: 28 },
];

const [persona1, persona2, ...resto] = personas;

console.log(persona1); // { nombre: "Juan", edad: 25 }
console.log(persona2); // { nombre: "Ana", edad: 30 }
console.log(resto);   // [ { nombre: "Pedro", edad: 35 }, { nombre: "María", edad: 28 } ]

const showName = (persona: Persona) => {
    const { nombre: nombre1 } = persona;// Desestructuración del objeto
    console.log(nombre1);
}

personas.forEach(p => {
        showName(p);
    }
);

// Desestructuración del objeto con valores por defecto


const objeto1 = { nombre: "Juan" };
/*onst { nombre:nombre1, edad1 = 30 } = objeto1;
const { nombre: nombre1, edad: edad1 = 30 } = objeto1;

console.log(nombre1); // "Juan"
console.log(edad1);   // 30 */



// desestructuración anidada

const objeto2 = { nombre: "Juan", direccion: { ciudad: "Madrid", pais: "España" } };
const { direccion: { ciudad, pais } } = objeto2;

console.log(ciudad); // "Madrid"
console.log(pais);   // "España"





// Desestructuración del array

// Error: El operador rest no puede estar al principio
// const [...resto1, persona3, persona4] = personas; // ❌ Error

// Error: El operador rest no puede estar en el medio
// const [persona5, ...resto2, persona6] = personas; // ❌ Error



export { };