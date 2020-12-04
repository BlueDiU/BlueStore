const d = document,
    w = window;

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

/* Codigo para el boton de admin */
const $admin = d.querySelector('.admin-manager');

const shortCut = (e) => {
    if (e.key === 'm' && e.ctrlKey) {
        $admin.classList.remove('hidden');
        alert('Accediendo a opciones de desarrollador');
    }
};


d.addEventListener('DOMContentLoaded', () => {
    scrollNavbar();
});

// Evento al pulsar el teclado
d.addEventListener('keydown', (e) => {
    shortCut(e);
});
