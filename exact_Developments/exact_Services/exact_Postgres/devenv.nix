{pkgs, ...}: {
  packages = [pkgs.coreutils];

  services = {
    postgres = {
      enable = true;
      package = pkgs.postgresql_15;
      createDatabase = true;
      initialDatabases = [
        {
          name = ""; # NOTE: fulfill the name of the database
          user = ""; # NOTE: fulfill the username
          pass = ""; # NOTE: fulfill the password
        }
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
