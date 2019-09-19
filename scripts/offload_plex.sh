#!/bin/bash
# RClone Config file
RCLONE_CONFIG=/home/user/.apps/plex/.config/rclone/rclone.conf
export RCLONE_CONFIG
LOCKFILE="/var/lock/`basename $0`"

touch /home/user/.apps/plex/.config/rclone/upload_excludes

(
  # Wait for lock for 5 seconds
  flock -x -w 5 200 || exit 1

# Move older local files to the cloud
/usr/bin/rclone move /home/user/files/Plex/Audiobooks/ plex-gdrive:Plex/Audiobooks/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Books/ plex-gdrive:Plex/Books/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Games/ plex-gdrive:Plex/Games/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Movies/ plex-gdrive:Plex/Movies/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Movies3D/ plex-gdrive:Plex/Movies3D/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Movies4K/ plex-gdrive:Plex/Movies4K/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Music/ plex-gdrive:Plex/Music/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Software/ plex-gdrive:Plex/Software/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Television/ plex-gdrive:Plex/Television/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Plex/Videos/ plex-gdrive:Plex/Videos/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"


) 200> ${LOCKFILE}
