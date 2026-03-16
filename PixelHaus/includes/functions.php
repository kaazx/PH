<?php
// DATABASE FUNCTION
function pdo(PDO $pdo, string $sql, array $arguments = null)
{
    if (!$arguments) {                   // If no arguments
        return $pdo->query($sql);        // Run SQL and return PDOStatement object
    }
    $statement = $pdo->prepare($sql);    // If arguments prepare statement
    $statement->execute($arguments);     // Execute statement
    return $statement;                   // Return PDOStatement object
}

// FORMATTING FUNCTIONS
function html_escape($text): string
{
    $text = $text ?? '';
    return htmlspecialchars($text, ENT_QUOTES, 'UTF-8', false);
}

function format_date(string $string): string
{
    $date = date_create_from_format('Y-m-d H:i:s', $string)
         ?: date_create_from_format('Y-m-d', $string);
    return $date->format('F d, Y');
}

// FILE UPLOAD FUNCTION
function create_filename(string $filename, string $uploads): string
{
    $extension  = strtolower(pathinfo($filename, PATHINFO_EXTENSION)); // Get file extension
    $basename   = pathinfo($filename, PATHINFO_FILENAME);              // Get filename without extension
    $basename   = preg_replace('/[^A-Za-z0-9-]/', '-', $basename);    // Replace special chars with dash
    $basename   = strtolower($basename);                               // Lowercase
    $new_name   = $basename . '.' . $extension;                        // Combine name + extension
    $i          = 1;
    while (file_exists($uploads . $new_name)) {                        // If file already exists
        $new_name = $basename . '-' . $i . '.' . $extension;          // Add number to filename
        $i++;
    }
    return $new_name;                                                  // Return unique filename
}

// REDIRECT FUNCTION
function redirect(string $location, array $arguments = []): void
{
    $query = $arguments ? '?' . http_build_query($arguments) : '';
    header('Location: ' . $location . $query);
    exit;
}

// ERROR AND EXCEPTION HANDLING FUNCTIONS
set_error_handler('handle_error');
function handle_error($error_type, $error_message, $error_file, $error_line)
{
    throw new ErrorException($error_message, 0, $error_type, $error_file, $error_line);
}

// Show real error details
set_exception_handler('handle_exception');
function handle_exception($e)
{
    error_log($e);
    http_response_code(500);
    echo "<h1>Error</h1>";
    echo "<p><strong>Message:</strong> " . htmlspecialchars($e->getMessage()) . "</p>";
    echo "<p><strong>File:</strong> " . htmlspecialchars($e->getFile()) . "</p>";
    echo "<p><strong>Line:</strong> " . $e->getLine() . "</p>";
    echo "<pre>" . htmlspecialchars($e->getTraceAsString()) . "</pre>";
}

register_shutdown_function('handle_shutdown');
function handle_shutdown()
{
    $error = error_get_last();
    if ($error !== null) {
        $e = new ErrorException($error['message'], 0, $error['type'], $error['file'], $error['line']);
        handle_exception($e);
    }
}