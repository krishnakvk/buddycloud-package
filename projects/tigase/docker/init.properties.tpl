--admins = #HOSTING_ADMIN_XMPP_CLIENT#
--user-db=pgsql
--user-db-uri=jdbc:postgresql://#JDBC_DB_URL#/#TIGASE_JDBC_DB_NAME#?user=#TIGASE_JDBC_DB_USER#&password=#TIGASE_JDBC_DB_PASS#&useUnicode=true&characterEncoding=UTF-8&autoCreateUser=true
config-type = --gen-config-all
basic-conf/virt-hosts-cert-*=/srv/secret/buddycloud.pem
basic-conf/virt-hosts-cert-buddycloud.net=/srv/secret/buddycloud.pem
--vhost-tls-required = true
--hardened-mode = true
basic-conf/auth-repo-params/sasl-mechs=PLAIN,ANONYMOUS,EXTERNAL
--virt-hosts = buddycloud.net,#ANON_DOMAIN#
--debug = xmpp.impl,server,cert
--comp-name-1 = ext
--elements-number-limit=100000
sess-man/plugins-conf/whitelist-registration-only = true
sess-man/plugins-conf/registration-whitelist = 172.16.0.0/12
basic-conf/logging/java.util.logging.FileHandler.pattern=/var/log/tigase/tigase.log
--comp-class-1 = tigase.server.ext.ComponentProtocol
--external = #CHANNELS_XMPP_COMPONENT_SUBDOMAIN#:#CHANNELS_XMPP_COMPONENT_PASSWORD#:listen:#XMPP_COMPONENT_PORT#,#MEDIA_XMPP_COMPONENT_SUBDOMAIN#:#MEDIA_XMPP_COMPONENT_PASSWORD#
--sm-plugins = +jabber:iq:auth,+urn:ietf:params:xml:ns:xmpp+sasl,+urn:ietf:params:xml:ns:xmpp-bind,+urn:ietf:params:xml:ns:xmpp-session,+jabber:iq:register,+jabber:iq:roster,+presence,+jabber:iq:privacy,+jabber:iq:version,+http://jabber.org/protocol/stats,+starttls,+msgoffline,+vcard-temp,+http://jabber.org/protocol/commands,+jabber:iq:private,+urn:xmpp:ping,-basic-filter,-domain-filter,+pep,-zlib
