// crear un arrar con valores de tipo string, number y booleano para skills
const skills: string [] = ['JavaScript', 'TypeScript', 'Angular'];

// necesto crear una interface que me sirva para estudiar y aprender el tipado de objetos y arrays con typeScript

interface Person {
    name: string;
    age: number;
    isValid: boolean;
    skills: string[];
    address: Address;
}
interface Address {
    street: string;
    city: string;
    country: string;
}

const person: Person = {
    name: 'Fernando',
    age: 35,
    isValid: true,
    skills: skills,
    address: {
        street: 'Calle 123',
        city: 'Madrid',
        country: 'España'
    }
}

console.log(person);
console.log(person.name);
console.log(person.age);
console.log(person.isValid);
console.log(person.skills);

export {}; // Evita que el archivo sea tratado como un script y no como un módulo