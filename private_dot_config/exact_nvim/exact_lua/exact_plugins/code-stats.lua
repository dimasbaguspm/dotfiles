return {
  "liljaylj/codestats.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "TextChanged", "InsertEnter" },
  cmd = { "CodeStatsXpSend", "CodeStatsProfileUpdate" },
  opts = {
    username = os.getenv("CODE_STATS_USERNAME"), -- needed to fetch profile data
    base_url = os.getenv("CODE_STATS_BASE_URL"), -- codestats.net base url
    api_key = os.getenv("CODE_STATS_API"),
    send_on_exit = true, -- send xp on nvim exit
    send_on_timer = true, -- send xp on timer
    timer_interval = 10000, -- timer interval in milliseconds (minimum 1000ms to prevent DDoSing codestat.net servers)
    curl_timeout = 5, -- curl request timeout in seconds
  },
}
