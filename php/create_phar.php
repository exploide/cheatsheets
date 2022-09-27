---
syntax: php
---
<?php

// run with: php -d phar.readonly=0 create_phar.php

$pharFile = "app.phar";
$srcDir = "app/";

if(file_exists($pharFile)) {
    unlink($pharFile);
}

$phar = new Phar($pharFile);
$phar->startBuffering();
$phar->buildFromDirectory($srcDir);
$phar->setDefaultStub("index.php", "index.php");
$phar->compressFiles(Phar::GZ);
$phar->stopBuffering();
