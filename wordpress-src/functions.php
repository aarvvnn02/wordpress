<?php

function cargar_estilos() {
    wp_enqueue_style(
        'tema-estilos',
        get_stylesheet_uri()
    );
}

add_action(
    'wp_enqueue_scripts',
    'cargar_estilos'
);
