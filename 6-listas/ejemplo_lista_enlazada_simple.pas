program ejemplo_lista_enlazada_simple;

uses
    uListaEnlazadaSimple;

var
    lista: tListaSimple;
    copia: tListaSimple;
begin
    // Inicializar la lista
    initialize(lista);
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

    // Eliminar el primer elemento
    delete_at_begin(lista);
    writeln('Lista después de eliminar el primer elemento: ', to_string(lista));

    // Eliminar el último elemento
    delete_at_end(lista);
    writeln('Lista después de eliminar el último elemento: ', to_string(lista));

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

    // Verificar si un elemento está en la lista (recursivo)
    if rec_in_list(lista, 50) then
        writeln('El elemento 50 está en la lista (recursivo).')
    else
        writeln('El elemento 50 no está en la lista (recursivo).');

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

    writeln; 
    writeln('--- Verificación de casos borde ---');

    // Reinicializamos para tener un estado conocido limpio
    initialize(lista);
    
    // 1. Pruebas de inserción y borrado en extremos
    writeln('1. Insertando 1, 2, 3 al final');
    insert_at_end(lista, 1);
    insert_at_end(lista, 2);
    insert_at_end(lista, 3);
    writeln('   Lista: ', to_string(lista));
    
    writeln('2. Borrando al inicio (delete_at_begin)');
    delete_at_begin(lista); 
    writeln('   Lista (esperado 2 3): ', to_string(lista));

    writeln('3. Borrando al final (delete_at_end)');
    delete_at_end(lista);
    writeln('   Lista (esperado 2): ', to_string(lista));

    // 2. Pruebas de delete específico
    writeln('4. Preparando lista para borrado específico (insertamos 5 y 10)');
    insert_at_end(lista, 5); 
    insert_at_end(lista, 10);
    writeln('   Lista actual: ', to_string(lista)); // 2 5 10

    writeln('5. Borrando elemento de en medio (5)');
    delete(lista, 5);
    writeln('   Lista (esperado 2 10): ', to_string(lista));
    
    writeln('6. Borrando primer elemento (2)');
    delete(lista, 2);
    writeln('   Lista (esperado 10): ', to_string(lista));
    
    writeln('7. Borrando último elemento (10)');
    delete(lista, 10);
    writeln('   Lista (esperado vacia): [', to_string(lista), ']');

    writeln('--- Fin de la ejecución ---');
end.