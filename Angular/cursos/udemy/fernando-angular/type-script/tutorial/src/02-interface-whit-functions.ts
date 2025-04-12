// Definición de la interfaz Person
interface Person {
    name: string; // Nombre de la persona
    age: number; // Edad de la persona
    isActive: boolean; // Estado activo o inactivo
    skills: string[]; // Lista de habilidades
    address: Address; // Dirección de la persona
    greet: (name: string) => string; // Método para saludar
    addSkill: (skill: string) => void; // Método para agregar una habilidad
    removeSkill: (skill: string) => void; // Método para eliminar una habilidad
    getSkills: () => string[]; // Método para obtener las habilidades
    getAddress: () => Address; // Método para obtener la dirección
}

// Definición de la interfaz Address
interface Address {
    street: string; // Calle
    city: string; // Ciudad
    country: string; // País
}

// Ejemplo de implementación de la interfaz Person
const person: Person = {
    name: 'Fernando',
    age: 35,
    isActive: true,
    skills: ['TypeScript', 'Angular'],
    address: {
        street: 'Calle 123',
        city: 'Madrid',
        country: 'España',
    },
    greet: (name: string) => {
        return `Hola, ${name}!`;
    },
    addSkill: (skill: string) => {
        person.skills.push(skill);
    },
    removeSkill: (skill: string) => {
        const index = person.skills.indexOf(skill);
        if (index !== -1) {
            person.skills.splice(index, 1);
        }
    },
    getSkills: () => {
        return person.skills;
    },
    getAddress: () => {
        return person.address;
    },
};

// Ejemplo de uso
console.log(person.greet('Juan')); // Saludo
person.addSkill('React'); // Agregar habilidad
console.log(person.getSkills()); // Obtener habilidades
person.removeSkill('Angular'); // Eliminar habilidad
console.log(person.getSkills()); // Obtener habilidades actualizadas
console.log(person.getAddress()); // Obtener dirección

export {}; // Evita que el archivo sea tratado como un script y no como un módulo