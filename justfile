set positional-arguments
set ignore-comments

# build an image
build name:
	podman build \
	-t webmonitor:{{name}} \
	.

# build an image, then run the container
run name port: (build name)
	podman run \
		--rm \
		-it \
		-d \
		--name webmonitor-{{name}} \
		-p {{port}}:80 webmonitor:{{name}}
	podman image prune -f

# stop the latest container
stop name:
	podman stop webmonitor-{{name}}

kill name: (stop name)(prune)

# prune all hanging images, containers, and volumes
prune:
	podman image prune -f
	podman container prune -f
	podman volume prune -f
	podman network prune -f

# remove a specific image
rm name:
	podman rmi webmonitor:{{name}}

# follow the container's logs
logs name:
	tail -f | podman logs webmonitor:{{name}}
