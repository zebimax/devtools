<?php
$file = 'aliases_sym_oro.sh';
$alias = 'alias %s=\'app/console %s\'';
$commandsRaw = `app/console`;

$lines = explode("\n", substr($commandsRaw, strpos($commandsRaw, 'Available commands:') + strlen('Available commands:')));
foreach ($lines as $line) {
    if (strpos($line, ':') !== false) {
        $line = trim($line);
        $command = substr($line, 0, strpos($line, ' '));
        if (trim($command)) {
            file_put_contents(
                $file,
                sprintf($alias, str_replace(':', '_', $command), $command) . PHP_EOL,
                FILE_APPEND
            );
        }
    }
}
