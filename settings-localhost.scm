(require (planet "settings.scm" ("vegashacker" "leftparen.plt" 4 (= 1))))

(setting-set! *PORT* 80)
;; use #f if you want to listen to all incoming IPs:
(setting-set! *LISTEN_IP* #f)
(setting-set! *WEB_APP_URL* "http://ycombinator.homedns.org")
