<?php
session_destroy();
$config = json_decode(option(), true);
printf('<script>window.location.reload();</script>;');