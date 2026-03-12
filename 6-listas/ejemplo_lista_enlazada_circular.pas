program ejemplo_lista_enlazada_simple;

uses
    uListaEnlazadaCircular;

var
    lista: tListaCircular;
    copia: tListaCircular;
begin
    // Inicializar la lista
    initialize(lista);
    writeln('--- OPERACIONES BÁSICAS ---');
    writeln('Lista inicializada.');

    // Insertar elementos al final
    insert_at_end(lista, 10);
    insert_at_end(lista, 20);
    insert_at_end(lista, 30);
    writeln('Lista después de insertar 10, 20, 30 al final: ', to_string(lista));

    // Obtener el primer y último elemento
    writeln('Primer elemento: ', first(lista));
    writeln('Último elemento: ', last(lista));

    // Insertar elementos al inicio
    insert_at_begin(lista, 5);
    writeln('Lista después de insertar 5 al inicio: ', to_string(lista));

    // Verificar si la lista está vacía
    if is_empty(lista) then
        writeln('La lista está vacía.')
    else
        writeln('La lista no está vacía.');

    // Obtener el primer y último elemento
    writeln('Primer elemento: ', first(lista));
    writeln('Último elemento: ', last(lista));

    // Insertar más elementos
    insert_at_end(lista, 40);
    insert_at_end(lista, 50);
    writeln('Lista después de insertar 40, 50 al final: ', to_string(lista));

    // Eliminar un elemento específico
    delete(lista, 20);
    writeln('Lista después de eliminar el elemento 20: ', to_string(lista));

    // Verificar si un elemento está en la lista
    if in_list(lista, 30) then
        writeln('El elemento 30 está en la lista.')
    else
        writeln('El elemento 30 no está en la lista.');

    // Obtener el número de elementos en la lista
    writeln('Número de elementos en la lista: ', num_elems(lista));

    // Copiar la lista
    copy(lista, copia);
    writeln('Copia de la lista: ', to_string(copia));

    // Limpiar la lista
    clear(lista);
    writeln('Lista después de limpiar: ', to_string(lista));

    // Comprobar si la lista está vacía
    if is_empty(lista) then
        writeln('La lista está vacía.')
    else
        writeln('La lista no está vacía.');

    
    // Buscar un elemento en la lista vacía
    if in_list(lista, 30) then
        writeln('El elemento 30 está en la lista.')
    else
        writeln('El elemento 30 no está en la lista.');

    writeln; 
    writeln('--- Verificación detallada de borrado (Casos 1, 2a, 2b) ---');

    // 1. Llenamos la lista con valores conocidos (reiniciando estado)
    initialize(lista);
    writeln('1. Lista preparada con: 10, 20, 30, 40, 50');
    insert_at_end(lista, 10);
    insert_at_end(lista, 20);
    insert_at_end(lista, 30);
    insert_at_end(lista, 40);
    insert_at_end(lista, 50);
    writeln('   Lista actual: ', to_string(lista));

    // 2. Eliminar un elemento de en medio (30)
    writeln('2. Eliminando elemento intermedio (30) - Caso 2b normal');
    delete(lista, 30);
    writeln('   Lista (esperado 10 20 40 50): ', to_string(lista));

    // 3. Eliminar el primer elemento (10)
    writeln('3. Eliminando el primer elemento (10) - Caso 2b inicio');
    delete(lista, 10);
    writeln('   Lista (esperado 20 40 50): ', to_string(lista));
    writeln('   Nuevo primero verificado: ', first(lista));

    // 4. Eliminar el último elemento (50)
    writeln('4. Eliminando el último elemento (50) - Caso 2b fin');
    delete(lista, 50);
    writeln('   Lista (esperado 20 40): ', to_string(lista));
    writeln('   Nuevo último verificado: ', last(lista));

    // 5. Eliminar elemento restante (40)
    writeln('5. Eliminando penúltimo elemento (40)');
    delete(lista, 40);
    writeln('   Lista (esperado 20): ', to_string(lista));

    // 6. Eliminar el único elemento restante (20)
    writeln('6. Eliminando único elemento restante (20) - Caso 2a');
    delete(lista, 20);
    writeln('   Lista (esperado vacía): [', to_string(lista), ']');
    if is_empty(lista) then writeln('   VERIFICADO: Lista vacía.')
    else writeln('   ERROR: La lista debería estar vacía.');

    // 7. Intentar borrar en lista vacía
    writeln('7. Intentando borrar en lista vacía (100) - Caso 1');
    delete(lista, 100);
    writeln('   Lista sigue vacía: [', to_string(lista), ']');

    writeln('--- Fin de la ejecución ---');
end.