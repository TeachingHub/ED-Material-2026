program ejemplo_lista_enlazada_doble;

uses
    SysUtils, uListaEnlazadaDoble;

var
    lista, lista_copia: tListaDoble;

begin
    // Inicializar la lista
    initialize(lista);
    WriteLn('Lista inicializada.');

    // Verificar si la lista está vacía
    if is_empty(lista) then
        WriteLn('La lista está vacía.')
    else
        WriteLn('La lista no está vacía.');

    // Insertar elementos al final
    insert_at_end(lista, 10);
    insert_at_end(lista, 20);
    insert_at_end(lista, 30);
    WriteLn('Elementos insertados al final: ', to_string(lista));

    // Insertar elementos al principio
    insert_at_begin(lista, 5);
    insert_at_begin(lista, 1);
    WriteLn('Elementos insertados al principio: ', to_string(lista));

    // Mostrar el primer y último elemento
    WriteLn('Primer elemento: ', first(lista));
    WriteLn('Último elemento: ', last(lista));

    // Verificar si un elemento está en la lista
    if in_list(lista, 20) then
        WriteLn('El elemento 20 está en la lista.')
    else
        WriteLn('El elemento 20 no está en la lista.');

    // Eliminar elementos al final
    delete_at_end(lista);
    WriteLn('Elemento eliminado al final: ', to_string(lista));

    // Eliminar elementos al principio
    delete_at_begin(lista);
    WriteLn('Elemento eliminado al principio: ', to_string(lista));

    // Número de elementos en la lista
    WriteLn('Número de elementos en la lista: ', num_elems(lista));

    copy(lista, lista_copia);
    WriteLn('Copia de la lista: ', to_string(lista_copia));

    // Limpiar la lista
    clear(lista);
    WriteLn('Lista después de limpiar: ', to_string(lista));

    // Verificar si la lista está vacía después de limpiar
    if is_empty(lista) then
        WriteLn('La lista está vacía después de limpiar.')
    else
        WriteLn('La lista no está vacía después de limpiar.');

    WriteLn; 
    WriteLn('--- Prueba de integridad de enlaces dobles ---');
    initialize(lista);

    // Prueba de la integridad de los enlaces dobles (anterior/siguiente)
    // insertando y borrando desde ambos lados para asegurar la bidireccionalidad.

    WriteLn('1. Insertando 10, 20 en orden al final');
    insert_at_end(lista, 10);
    insert_at_end(lista, 20);
    WriteLn('   Lista: ', to_string(lista));

    WriteLn('2. Insertando 5 al inicio (verificar enlace previo)');
    insert_at_begin(lista, 5);
    WriteLn('   Lista (esperado 5 10 20): ', to_string(lista));

    WriteLn('3. Eliminando elemento final (20)');
    delete_at_end(lista);
    WriteLn('   Lista (esperado 5 10): ', to_string(lista));
    WriteLn('   Nuevo ultimo (esperado 10): ', last(lista));

    WriteLn('4. Eliminando elemento inicial (5)');
    delete_at_begin(lista);
    WriteLn('   Lista (esperado 10): ', to_string(lista));
    WriteLn('   Nuevo primero (esperado 10): ', first(lista));

    WriteLn('5. Vaciando lista (eliminando último elemento)');
    delete_at_end(lista); // Eliminamos el 10
    WriteLn('   Lista vacia: [', to_string(lista), ']');
    if is_empty(lista) then WriteLn('   VERIFICADO: Lista vacia') else WriteLn('   ERROR: No vacia');

    WriteLn('--- Fin de la ejecución ---');
end.