<?php 

/**
 * Starts query builder 
 *
 * @param string $select
 */
function query_builder(string $select): string
{
    return "SELECT * FROM {$select}";
}

