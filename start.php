<?php

$_SERVER['start_cli_script'] = microtime(true);
$_SERVER['start_cli_memory'] = memory_get_usage(true);
$styles                      = [
    'reset'   => "\033[0m",
    'red'     => "\033[31m",
    'green'   => "\033[32m",
    'yellow'  => "\033[33m",
    'error'   => "\033[37;41m",
    'success' => "\033[37;42m",
    'title'   => "\033[34m",
];
$color                       = $styles['yellow'];
$reset                       = $styles['reset'];
register_shutdown_function(function (array $styles) {
    if (isset($_SERVER['start_cli_script'])) {

        $end = microtime(true);
        $var = $end - $_SERVER['start_cli_script'];
        unset($_SERVER['start_cli_script']);
        $time = round
        (
            $var,
            4
        );

        $format = '%2$s%3$stime: %1$.4f%4$s%2$s';
        echo sprintf($format, $time, PHP_EOL, $styles['yellow'], $styles['reset']);
    }
    if (isset($_SERVER['start_cli_memory'])) {

        $end = memory_get_usage(true);
        $mem = ($end - $_SERVER['start_cli_memory']) / 1024;
        $sz = 'KB';
        if ($mem >= 1024) {
            $mem /= 1024;
            $sz = 'MB';
        }
        unset($_SERVER['start_cli_memory']);
        $format = '%3$smemory: %1$.2f %5$s%4$s%2$s';
        echo sprintf($format, $mem, PHP_EOL, $styles['title'], $styles['reset'], $sz);
    }
}, $styles);
unset($color);
unset($reset);
