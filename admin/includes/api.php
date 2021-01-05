<?php if (isset($_SESSION["logged"]) === true) { ?>
    <div class="panel-header panel-header-sm"></div>
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h5 class="title">API Keys</h5>
                    </div>
                    <div class="card-body">
                        <?php
                        if (@$_POST && $_SESSION["logged"] === true) {
                            database::update_option("api_key.soundcloud", $_POST["soundcloud"] ?? "");
                            database::update_option("api_key.flickr", $_POST["flickr"] ?? "");
                            database::update_option("api_key.aiovideodl", $_POST["aiovideodl"] ?? "");
                            database::update_option("api_key.recaptcha_public", $_POST["recaptcha_public"] ?? "");
                            database::update_option("api_key.recaptcha_private", $_POST["recaptcha_private"] ?? "");
                            file_put_contents(__DIR__ . "/../../system/storage/ig-cookie.txt", $_POST["instagram"]);
                            file_put_contents(__DIR__ . "/../../system/storage/fb-cookie.txt", $_POST["facebook"]);
                            echo '<p class="alert alert-success">Settings saved. The page will be refreshed within a second.</p>';
                            echo '<script>setTimeout(function(){ window.location.replace(window.location.href); }, 1000);</script>';
                        }
                        ?>
                        <form method="post">
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="soundcloud">Soundcloud</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fab fa-soundcloud"></i>
                                                </div>
                                            </div>
                                            <input id="soundcloud" class="form-control" type="text" name="soundcloud"
                                                   value="<?php option("api_key.soundcloud", true); ?>"
                                                   placeholder="Soudcloud API key">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="recaptcha_public">Recaptcha v3 Public</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-robot"></i>
                                                </div>
                                            </div>
                                            <input id="recaptcha_public" class="form-control" type="text"
                                                   name="recaptcha_public"
                                                   value="<?php option("api_key.recaptcha_public", true); ?>"
                                                   placeholder="Google Recaptcha v3 Public API key">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="recaptcha_private">Recaptcha v3 Private</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text">
                                                    <i class="fas fa-robot"></i>
                                                </div>
                                            </div>
                                            <input id="recaptcha_private" class="form-control" type="text"
                                                   name="recaptcha_private"
                                                   value="<?php option("api_key.recaptcha_private", true); ?>"
                                                   placeholder="Google Recaptcha v3 Private API key">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <div class="form-group">
                                        <label for="instagram">Instagram Cookies</label>
                                        <div class="input-group">
                                            <textarea style="min-height: 19vh" id="instagram" class="form-control"
                                                      name="instagram"><?php echo file_get_contents(__DIR__ . "/../../system/storage/ig-cookie.txt") ?></textarea>
                                        </div>
                                    </div>
                                </div><div class="col-sm-12 col-md-6 col-lg-6">
                                    <div class="form-group">
                                        <label for="instagram">Facebook Cookies</label>
                                        <div class="input-group">
                                            <textarea style="min-height: 19vh" id="facebook" class="form-control"
                                                      name="facebook"><?php echo file_get_contents(__DIR__ . "/../../system/storage/fb-cookie.txt") ?></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group text-right">
                                <button type="submit" class="btn btn-info btn-fill btn-wd">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } else {
    http_response_code(403);
} ?>