{pkgs, ...}: {
  env = {
    # add your own environment variables here
  };

  packages = [pkgs.coreutils];

  services = {
    postgres = {
      enable = true;
      package = pkgs.postgresql_15;
      createDatabase = true;
      initialDatabases = [
        # {
        #   name = "YOUR_DB_NAME";
        #   user = "YOUR_DB_USER";
        #   pass = "YOUR_DB_PASSWORD";
        # }
      ];
      listen_addresses = "127.0.0.1";
      port = 5432;
    };

    adminer = {
      enable = true;
      package = pkgs.adminer;
      listen = "127.0.0.1:8080";
    };
  };
}
