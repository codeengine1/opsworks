name        "nginx"
description "Installs and configures nginx configured to proxy an application on localhost"
maintainer  "David Maple"
license     "Apache 2.0"
version     "1.0.0"

attribute "nginx/dir",
  :display_name => "Nginx Directory",
  :description => "Location of nginx configuration files",
  :default => "/etc/nginx"

attribute "nginx/log_dir",
  :display_name => "Nginx Log Directory",
  :description => "Location for nginx logs",
  :default => "/var/log/nginx"

attribute "nginx/user",
  :display_name => "Nginx User",
  :description => "User nginx will run as",
  :default => "nginx"

attribute "nginx/binary",
  :display_name => "Nginx Binary",
  :description => "Location of the nginx server binary",
  :default => "/usr/sbin/nginx"

attribute "nginx/gzip",
  :display_name => "Nginx Gzip",
  :description => "Whether gzip is enabled",
  :default => "off"

attribute "nginx/gzip_http_version",
  :display_name => "Nginx Gzip HTTP Version",
  :description => "Version of HTTP Gzip",
  :default => "1.0"

attribute "nginx/gzip_comp_level",
  :display_name => "Nginx Gzip Compression Level",
  :description => "Amount of compression to use",
  :default => "2"

attribute "nginx/gzip_proxied",
  :display_name => "Nginx Gzip Proxied",
  :description => "Whether gzip is proxied",
  :default => "any"

attribute "nginx/gzip_types",
  :display_name => "Nginx Gzip Types",
  :description => "Supported MIME-types for gzip",
  :type => "array",
  :default => [ "text/plain", "text/html", "text/css", "application/x-javascript", "text/xml", "application/xml", "application/xml+rss", "text/javascript" ]

attribute "nginx/keepalive",
  :display_name => "Nginx Keepalive",
  :description => "Whether to enable keepalive",
  :default => "on"

attribute "nginx/keepalive_timeout",
  :display_name => "Nginx Keepalive Timeout",
  :default => "65"

attribute "nginx/worker_processes",
  :display_name => "Nginx Worker Processes",
  :description => "Number of worker processes",
  :default => "1"

attribute "nginx/worker_connections",
  :display_name => "Nginx Worker Connections",
  :description => "Number of connections per worker",
  :default => "1024"

attribute "nginx/server_names_hash_bucket_size",
  :display_name => "Nginx Server Names Hash Bucket Size",
  :default => "64"

attribute "nginx/proxy_read_timeout",
  :display_name => "Nginx Proxy Read Timeout",
  :description => "Sets the read timeout for the response of the proxied server. It determines how long nginx will wait to get the response to a request.",
  :default => "60"

attribute "nginx/proxy_send_timeout",
  :display_name => "Nginx Proxy Send Timeout",
  :description => "Assigns timeout with the transfer of request to the upstream server.",
  :default => "60"

attribute "nginx/ssl_key",
  :display_name => "Default SSL Key ",
  :description => "Default SSL Key (self signed)",
  :default => "
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAzVHUm5jLHqJDgUCQlMabMoxcg1gjAOd5tphEcyo3LlCozcah
Ks+A3Ca0k78oGfJpNRVVIabT7sNXAAb3fUltLykhicC4B7kKnd3+YeJN3Mdy81Na
+jmBJZy5fSB7fCeXZD2gQvx6gLW4uHU/SUzW4iItsLfFRCpImmAvI41EFGozAroJ
i0UoJkwCnpCcfKAS2au2Dka/3QoBqwqW6NtDIfE89ZdigHjigJ/DqNEgWf55UM7O
SE9FsSmt2PUfP3LBQavA0hqX/YrAetAZoEXjTcEVTB/Zhrzta4P/mEpSMibzJq0c
CZisYmovf4E116HpecHuQ+NW2hE5aWa9wSoa0QIDAQABAoIBAAZyjWSddbNukQQc
DO4/FlyN/9G4ENFUc4QCYBPlvXnc2pArrp/ziC5hoMYK+K1n6VnbY6L85CbZR4Ae
t+LdTWpvtjfnL2A+tVCjyfs06hEGyltNwMuexqlxtHlzba1GaQCi1seDui0Uh8pz
FBuvKAhN3nVwL+emFEWUw6YwJ3UkmiK90Qnqpb2I+ZUj1/1zTPMFjMMpAEMLlg/a
wlL+XJzGzTvI8NfNYH/oaxL4BNH+WO1CWRmgbZNbmV95NIeIysuL15XJIMbVBAlf
0pLJri7+iRAOnDr+BKsarOUGBM17W/5x2ASrOt/m8GqaQtHN8TGQKU29Va5FdGl3
wFdySGECgYEA/BTqt3fHuaGfRCFT6RvIX0islr2nJ9kPiGTahLc3JOvpjsZunzxH
mZw7QwIvokM2Z0Jg/umpdkHY2G9wc50RFFu7x2/9dX+EVn3W4izHiwkW7gUUIaWV
PUhthivIX2BNdGU+mlrLB8/QEMIXyqbBQJ3XR8dzPI3HCYXb+u+u1X0CgYEA0ILW
kA6NpTpyo1t5Q4NDYC7pwO/gGeAsF9HnJ57FwMZl+AAd/KSxns/gxeOyL/gJI0WA
LOqGEKSokF2BL+Vjn+tU1xjh2pkrIEyaL+li24r7QBUUo4dQCJCiimDzKtvH5Yc8
cXKw1y8ccaRy8caNMUFAn0icdWcEcTRgfcF7SuUCgYEA7UvPbCgwdjmD0MHC2LST
mcay2S/s86Dsc0vlPHuwSGxfr0xyhCldiWe9jaW4K3oz815UKoLRSIZR1+SHqf3Y
Px7flK2CniIM9NJ+/uiCawqCcEuNmOLjqw3MNDpw4/+mygQou2rupwrkZXIgrV7u
mqI7LtG9U+puzDMbUoxgO40CgYEAuMEWCXM7wwn1BhZJbq7ihllLOm/R7Fub9kdB
QPQIWXXyaDsCVxg/Ym7jxbSp8KMgxaYRmrr7q8earMCNdbkV+190P1uG1EEf23DE
tmtf8xRE6FVFglila9FslJyvGmy/xPt9bTCozSKrW27RgrXh6aDd98VJDSYI4537
WbKU4pkCgYBVe4Ckihn+uqHFztelA6f+e9XWM+8JWhxn01fO0QWPo/yCL8b7pHUk
+M66n3sbn4zQicbtXa+KSU+I2a49qu8zVj1XHFYscZevoweGEZ3QiNZf4w0V9NIu
MExycOooZFqxFYNPgxk5p1gwxlZjpZWrYZHpuccg02sxcUdW1t3UZw==
-----END RSA PRIVATE KEY-----
"

attribute "nginx/ssl_cert",
  :display_name => "Default SSL Cert",
  :description => "Default SSL Cert (self signed)",
  :default => "
-----BEGIN CERTIFICATE-----
MIIEgzCCA2ugAwIBAgIJAMK6HyCIslw4MA0GCSqGSIb3DQEBBQUAMIGHMQswCQYD
VQQGEwJVUzEWMBQGA1UECBMNTmV3IEhhbXBzaGlyZTEQMA4GA1UEBxMHTWFkaXNv
bjEZMBcGA1UEChMQRGF2aWQgTWFwbGUgTExDLjEbMBkGA1UECxMSV2ViIEFkbWlu
aXN0cmF0aW9uMRYwFAYDVQQDEw1kYXZlbWFwbGUuY29tMB4XDTE1MDMzMDE2MTAx
NloXDTI1MDMyNzE2MTAxNlowgYcxCzAJBgNVBAYTAlVTMRYwFAYDVQQIEw1OZXcg
SGFtcHNoaXJlMRAwDgYDVQQHEwdNYWRpc29uMRkwFwYDVQQKExBEYXZpZCBNYXBs
ZSBMTEMuMRswGQYDVQQLExJXZWIgQWRtaW5pc3RyYXRpb24xFjAUBgNVBAMTDWRh
dmVtYXBsZS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDNUdSb
mMseokOBQJCUxpsyjFyDWCMA53m2mERzKjcuUKjNxqEqz4DcJrSTvygZ8mk1FVUh
ptPuw1cABvd9SW0vKSGJwLgHuQqd3f5h4k3cx3LzU1r6OYElnLl9IHt8J5dkPaBC
/HqAtbi4dT9JTNbiIi2wt8VEKkiaYC8jjUQUajMCugmLRSgmTAKekJx8oBLZq7YO
Rr/dCgGrCpbo20Mh8Tz1l2KAeOKAn8Oo0SBZ/nlQzs5IT0WxKa3Y9R8/csFBq8DS
Gpf9isB60BmgReNNwRVMH9mGvO1rg/+YSlIyJvMmrRwJmKxiai9/gTXXoel5we5D
41baETlpZr3BKhrRAgMBAAGjge8wgewwHQYDVR0OBBYEFHfmJ0s9/+PoN7aTIVYX
8qbF7hzKMIG8BgNVHSMEgbQwgbGAFHfmJ0s9/+PoN7aTIVYX8qbF7hzKoYGNpIGK
MIGHMQswCQYDVQQGEwJVUzEWMBQGA1UECBMNTmV3IEhhbXBzaGlyZTEQMA4GA1UE
BxMHTWFkaXNvbjEZMBcGA1UEChMQRGF2aWQgTWFwbGUgTExDLjEbMBkGA1UECxMS
V2ViIEFkbWluaXN0cmF0aW9uMRYwFAYDVQQDEw1kYXZlbWFwbGUuY29tggkAwrof
IIiyXDgwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAoXOAtF1s0n6M
+24+CdrC2/IUbRjriy3fkR0k4wHjyWBezj18ywQ98NDIxo/oviTD36jXWjyUznuX
Vh9bhk06aLyMpK0SfVoqAf2HPLRIpoXzhA2FecxaIG5Dnd/szUTGFToW9gtftORf
OLoeTM2ell9KKrYIsAmFyleDs/t0Zd3cTiYS3n7g86DJt8mHbabZVpY8xfFylVJs
W3fSbBcIdwRKQlly/l95ZD3sCFuQVjs3s0dzi9p4EvKjb0UFD4oI47qwEy2zGdH6
VwMa+MVe72CrWpSr/rFALKTd8KQSF3Ez+IN0bZmv5nhM2EGCIBStQqNBpJBGUsFs
eE2AGjKlYQ==
-----END CERTIFICATE-----
"