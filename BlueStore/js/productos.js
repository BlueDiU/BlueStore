const d = document,
    w = window;

/* Prueba
const $inputs = d.querySelectorAll('.input-db');

$inputs.forEach(input => {
    input.addEventListener('click', e => {
        e.preventDefault();
        console.log("hola")
    });
}); */

// selector de mi barra de navegacion
const $navbar = d.querySelector('.nav-products');

// Funcion que se encarga de veficar el scroll de la ventana
const scrollNavbar = () => {
    w.addEventListener('scroll', (e) => {
        let scroll = w.pageYOffset;

        //si el scroll es mayot a 147 remuevo la clase hidden,
        // de los contrario sigue manteniendo la clase hidden
        if (scroll > 147) {
            $navbar.classList.remove('hidden');
        } else {
            $navbar.classList.add('hidden');
        }
    });
};

d.addEventListener('DOMContentLoaded', () => {
    scrollNavbar();
});