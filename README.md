# docker-snx

# Info
`docker run --network host -e CERT_PASS=secret -e CERT_PATH=/VPN/mycert.p12 -e SNX_SERVER=myserver --cap-add=NET_ADMIN -v /lib/modules:/lib/modules:ro -it --rm -v /foo/bar/VPN:/VPN:ro snx:latest`
