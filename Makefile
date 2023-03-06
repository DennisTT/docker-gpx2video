docker_image = dennistt/gpx2video

image:
	docker build -t $(docker_image) .

shell:
	docker run --rm -it --entrypoint bash $(docker_image)
