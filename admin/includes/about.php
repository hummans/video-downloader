<?php if (isset($_SESSION["logged"]) === true) { ?>
    <div class="panel-header panel-header-sm"></div>
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="title">About</h5>
                    </div>
                    <div class="card-body">
                        <strong>Version</strong>
                        <pre>1.0.0</pre>
                        <strong>Build Number</strong>
                        <pre>1.0.0</pre>
                        <strong>PHP Version</strong>
                        <pre><?php echo phpversion(); ?></pre>
                        <strong>cURL Version</strong>
                        <pre><?php echo curl_version()["version"]; ?></pre>
                        <strong>Web Server</strong>
                        <pre><?php echo $_SERVER["SERVER_SOFTWARE"]; ?></pre>
                        <strong>Operating System</strong>
                        <pre><?php echo php_uname(); ?></pre>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } else {
    http_response_code(403);
} ?>