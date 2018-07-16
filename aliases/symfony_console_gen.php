    <?php

    $arguments = $argv;
    if (!is_array($arguments)) {
        throw new \InvalidArgumentException('Invalid arguments');
    }
    if (!isset($arguments[1])) {
        throw new \InvalidArgumentException('Missing file argument');
    }

    $file = $arguments[1];
    $dir = __DIR__;
    $app = $arguments[2] ?? 'console';
    $path = $arguments[3] ?? '';
    $binConsole = sprintf('%s/bin/%s', $path, $app);

    $commandsRaw = `$binConsole`;

    $file = sprintf('%s%s.sh', $dir . '/new/', $file);
    if (file_exists($file)) {
        throw new \InvalidArgumentException('File exists');
    }
    $fp = touch($file);
    if (!file_exists($file)) {
        throw new \InvalidArgumentException('Can not create file');
    }
    file_put_contents($file, '#!/usr/bin/env bash' . PHP_EOL, FILE_APPEND);
    $alias = 'alias %s=\'{{bin/console}} %s\'';
    $alias = str_replace('{{bin/console}}', $binConsole, $alias);
    $lines = explode(
        "\n",
        substr(
            $commandsRaw,
            strpos($commandsRaw, 'Available commands:') + strlen('Available commands:')
        )
    );
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
