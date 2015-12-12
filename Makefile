##
##
##
dest=192.168.11.4

get:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" | tee res.txt

## ONKYO RC527S
turn-on:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./ONKYO-RC527S/on.json

turn-off:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./ONKYO-RC527S/off.json

mute:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./ONKYO-RC527S/off.json

## TOSHIBA-WH-RA01UJ
turn-on-as-auto:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./TOSHIBA-WH-RA01UJ/turn-on-as-auto.json

stop:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./TOSHIBA-WH-RA01UJ/stop.json

## Panasonic-N2QAYB000919
vol-down:
	curl -s -i "http://$(dest)/messages" -H "X-Requested-With: curl" \
		-d @./Panasonic-N2QAYB000919/vol-down.json


##
id:
	dns-sd -B _irkit._tcp

ipaddr:
	dns-sd -G v4 IRKitE30F.local
