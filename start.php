<?php
$_SERVER['start_cli_script'] = microtime(true);
register_shutdown_function(function () {
    if (isset($_SERVER['start_cli_script'])) {

        $end  = microtime(true);
        $var  = $end - $_SERVER['start_cli_script'];
        unset($_SERVER['start_cli_script']);
        $time = round
        (
            $var,
            4
        );

        $format = '%2$stime: %1$.4f%2$s';
        echo sprintf($format, $time, PHP_EOL);
    }
});
