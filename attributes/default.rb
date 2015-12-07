default['sickbeard']['data'] = '/var/opt/sickbeard'
default['sickbeard']['home'] = '/opt/sickbeard'
default['sickbeard']['options'] = nil
default['sickbeard']['pidfile'] = '/var/run/sickbeard/sickbeard.pid'
default['sickbeard']['python_bin'] = '/usr/bin/python'
default['sickbeard']['repository'] = 'https://github.com/midgetspy/Sick-Beard'
default['sickbeard']['ssd_opts'] = nil
default['sickbeard']['user'] = 'sickbeard'
default['sickbeard']['version'] = '507'

default['sickbeard']['config']['General'].tap do |config|
  config['config_version'] = 6
  config['log_dir'] = 'Logs'
  config['web_port'] = '8081'
  config['web_host'] = '0.0.0.0'
  config['web_ipv6'] = 0
  config['web_log'] = 0
  config['web_root'] = ""
  config['web_username'] = ""
  config['web_password'] = ""
  config['anon_redirect'] = 'http://dereferer.org/?'
  config['display_all_seasons'] = 1
  config['use_api'] = 0
  config['api_key'] = ""
  config['enable_https'] = 0
  config['https_cert'] = 'server.crt'
  config['https_key'] = 'server.key'
  config['use_nzbs'] = 1
  config['use_torrents'] = 0
  config['nzb_method'] = 'blackhole'
  config['usenet_retention'] = 500
  config['search_frequency'] = 40
  config['download_propers'] = 1
  config['quality_default'] = 3
  config['status_default'] = 5
  config['flatten_folders_default'] = 0
  config['provider_order'] = ""
  config['version_notify'] = 1
  config['naming_pattern'] = '%SN - %Sx%0E - %EN'
  config['naming_custom_abd'] = 0
  config['naming_abd_pattern'] = '%SN - %A-D - %EN'
  config['naming_multi_ep'] = 1
  config['launch_browser'] = 1
  config['use_listview'] = 0
  config['metadata_xbmc'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_xbmc_12plus'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_mediabrowser'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_ps3'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_wdtv'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_tivo'] = '0|0|0|0|0|0|0|0|0|0'
  config['metadata_mede8er'] = '0|0|0|0|0|0|0|0|0|0'
  config['cache_dir'] = 'cache'
  config['root_dirs'] = ""
  config['tv_download_dir'] = ""
  config['keep_processed_dir'] = 1
  config['move_associated_files'] = 0
  config['filter_associated_files'] = ""
  config['process_automatically'] = 0
  config['rename_episodes'] = 1
  config['create_missing_show_dirs'] = 0
  config['add_shows_wo_dir'] = 0
  config['extra_scripts'] = ""
  config['git_path'] = ""
  config['ignore_words'] = "german,french,core2hd,dutch,swedish,480p"
end

default['sickbeard']['config']['Blackhole'].tap do |config|
  config['nzb_dir'] = ""
  config['torrent_dir'] = ""
end

default['sickbeard']['config']['EZRSS']['ezrss'] = 0

default['sickbeard']['config']['HDBITS'].tap do |config|
  config['hdbits'] = 0
  config['hdbits_username'] = ""
  config['hdbits_passkey'] = ""
end

default['sickbeard']['config']['TVTORRENTS'].tap do |config|
  config['tvtorrents'] = 0
  config['tvtorrents_digest'] = ""
  config['tvtorrents_hash'] = ""
end

default['sickbeard']['config']['BTN'].tap do |config|
  config['btn'] = 0
  config['btn_api_key'] = ""
end

default['sickbeard']['config']['TorrentLeech'].tap do |config|
  config['torrentleech'] = 0
  config['torrentleech_key'] = ""
end

default['sickbeard']['config']['NZBs'].tap do |config|
  config['nzbs'] = 0
  config['nzbs_uid'] = ""
  config['nzbs_hash'] = ""
end

default['sickbeard']['config']['Womble'].tap do |config|
  config['womble'] = 1
end

default['sickbeard']['config']['omgwtfnzbs'].tap do |config|
  config['omgwtfnzbs'] = 0
  config['omgwtfnzbs_username'] = ""
  config['omgwtfnzbs_apikey'] = ""
end

default['sickbeard']['config']['SABnzbd'].tap do |config|
  config['sab_username'] = ""
  config['sab_password'] = ""
  config['sab_apikey'] = ""
  config['sab_category'] = 'tv'
  config['sab_host'] = ""
end

default['sickbeard']['config']['NZBget'].tap do |config|
  config['nzbget_username'] = 'nzbget'
  config['nzbget_password'] = 'tegbzn6789'
  config['nzbget_category'] = 'tv'
  config['nzbget_host'] = ""
end

default['sickbeard']['config']['XBMC'].tap do |config|
  config['use_xbmc'] = 0
  config['xbmc_always_on'] = 1
  config['xbmc_notify_onsnatch'] = 0
  config['xbmc_notify_ondownload'] = 0
  config['xbmc_update_library'] = 0
  config['xbmc_update_full'] = 0
  config['xbmc_update_onlyfirst'] = 0
  config['xbmc_host'] = ""
  config['xbmc_username'] = ""
  config['xbmc_password'] = ""
end

default['sickbeard']['config']['Plex'].tap do |config|
  config['use_plex'] = 0
  config['plex_notify_onsnatch'] = 0
  config['plex_notify_ondownload'] = 0
  config['plex_update_library'] = 0
  config['plex_server_host'] = ""
  config['plex_host'] = ""
  config['plex_username'] = ""
  config['plex_password'] = ""
end

default['sickbeard']['config']['Growl'].tap do |config|
  config['use_growl'] = 0
  config['growl_notify_onsnatch'] = 0
  config['growl_notify_ondownload'] = 0
  config['growl_host'] = ""
  config['growl_password'] = ""
end

default['sickbeard']['config']['Prowl'].tap do |config|
  config['use_prowl'] = 0
  config['prowl_notify_onsnatch'] = 0
  config['prowl_notify_ondownload'] = 0
  config['prowl_api'] = ""
  config['prowl_priority'] = 0
end

default['sickbeard']['config']['Twitter'].tap do |config|
  config['use_twitter'] = 0
  config['twitter_notify_onsnatch'] = 0
  config['twitter_notify_ondownload'] = 0
  config['twitter_username'] = ""
  config['twitter_password'] = ""
  config['twitter_prefix'] = 'Sick Beard'
end

default['sickbeard']['config']['Boxcar2'].tap do |config|
  config['use_boxcar2'] = 0
  config['boxcar2_notify_onsnatch'] = 0
  config['boxcar2_notify_ondownload'] = 0
  config['boxcar2_access_token'] = ""
  config['boxcar2_sound'] = 'default'
end

default['sickbeard']['config']['Pushover'].tap do |config|
  config['use_pushover'] = 0
  config['pushover_notify_onsnatch'] = 0
  config['pushover_notify_ondownload'] = 0
  config['pushover_userkey'] = ""
  config['pushover_priority'] = 0
  config['pushover_device'] = 'all'
  config['pushover_sound'] = 'pushover'
end

default['sickbeard']['config']['Libnotify'].tap do |config|
  config['use_libnotify'] = 0
  config['libnotify_notify_onsnatch'] = 0
  config['libnotify_notify_ondownload'] = 0
end

default['sickbeard']['config']['NMJ'].tap do |config|
  config['use_nmj'] = 0
  config['nmj_host'] = ""
  config['nmj_database'] = ""
  config['nmj_mount'] = ""
end

default['sickbeard']['config']['Synology'].tap do |config|
  config['use_synoindex'] = 0
  config['synoindex_notify_onsnatch'] = 0
  config['synoindex_notify_ondownload'] = 0
  config['synoindex_update_library'] = 0
end

default['sickbeard']['config']['NMJv2'].tap do |config|
  config['use_nmjv2'] = 0
  config['nmjv2_host'] = ""
  config['nmjv2_database'] = ""
  config['nmjv2_dbloc'] = ""
end

default['sickbeard']['config']['Trakt'].tap do |config|
  config['use_trakt'] = 0
  config['trakt_username'] = ""
  config['trakt_password'] = ""
  config['trakt_api'] = ""
end

default['sickbeard']['config']['pyTivo'].tap do |config|
  config['use_pytivo'] = 0
  config['pytivo_notify_onsnatch'] = 0
  config['pytivo_notify_ondownload'] = 0
  config['pytivo_update_library'] = 0
  config['pytivo_host'] = ""
  config['pytivo_share_name'] = ""
  config['pytivo_tivo_name'] = ""
end

default['sickbeard']['config']['NMA'].tap do |config|
  config['use_nma'] = 0
  config['nma_notify_onsnatch'] = 0
  config['nma_notify_ondownload'] = 0
  config['nma_api'] = ""
  config['nma_priority'] = 0
end

default['sickbeard']['config']['Pushalot'].tap do |config|
  config['use_pushalot'] = 0
  config['pushalot_notify_onsnatch'] = 0
  config['pushalot_notify_ondownload'] = 0
  config['pushalot_authorizationtoken'] = ""
  config['pushalot_silent'] = 0
  config['pushalot_important'] = 0
end

default['sickbeard']['config']['Pushbullet'].tap do |config|
  config['use_pushbullet'] = 0
  config['pushbullet_notify_onsnatch'] = 0
  config['pushbullet_notify_ondownload'] = 0
  config['pushbullet_access_token'] = ""
  config['pushbullet_device_iden'] = ""
end

default['sickbeard']['config']['Newznab'].tap do |config|
  config['newznab_data'] = ""
end

default['sickbeard']['config']['GUI'].tap do |config|
  config['coming_eps_layout'] = 'banner'
  config['coming_eps_display_paused'] = 0
  config['coming_eps_sort'] = 'date'
end
