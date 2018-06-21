<?php
$file = 'aliases_mage.sh';
$alias = 'alias %s=\'bin/magento %s\'';
$commandsRaw = `bin/magento`;

$lines = explode("\n", substr($commandsRaw, strpos($commandsRaw, 'Available commands:') + strlen('Available commands:')));
foreach ($lines as $line) {
    if (strpos($line, ':') !== false) {
        $line = trim($line);
        $command = substr($line, 0, strpos($line, ' '));
        $command = str_replace('[32m', '', $command);
        if (trim($command)) {
            file_put_contents(
                $file,
                sprintf($alias, str_replace(':', '_', $command), $command) . PHP_EOL,
                FILE_APPEND
            );
        }
    }
}
