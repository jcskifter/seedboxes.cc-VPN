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
/usr/bin/rclone move /home/user/files/Libraries/Audiobooks/ plex-gdrive:Libraries/Audiobooks/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Books/ plex-gdrive:Libraries/Books/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Games/ plex-gdrive:Libraries/Games/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Movies/ plex-gdrive:Libraries/Movies/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Movies3D/ plex-gdrive:Libraries/Movies3D/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Movies4K/ plex-gdrive:Libraries/Movies4K/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Music/ plex-gdrive:Libraries/Music/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Software/ plex-gdrive:Libraries/Software/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Television/ plex-gdrive:Libraries/Television/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"
/usr/bin/rclone move /home/user/files/Libraries/Videos/ plex-gdrive:Libraries/Videos/ -P --checkers 3 --log-file /home/user/.apps/plex/.config/rclone/upload_rclone.log -v --tpslimit 3 --transfers 3 --drive-chunk-size 32M --exclude-from /home/user/.apps/plex/.config/rclone/upload_excludes --delete-empty-src-dirs --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36"


) 200> ${LOCKFILE}
