# docker-gpx2video

`docker-gpx2video` allows execution of [gpx2video](https://github.com/progweb/gpx2video) through any Docker environment.

## Usage

0. You'll want to create a folder where the input, layout and output files will be read and written. This folder is represented in the following instructions as `/your_local_data`.
1. Extract GPS data: `docker run --rm -it -v /your_local_data:/data dennistt/gpx2video -m /data/vid.mp4 -o /data/vid.gpx -f 3 extract`
2. Create overlaid video: `docker run --rm -it -v /your_local_data:/data dennistt/gpx2video -m /data/vid.mp4 -g /data/vid.gpx -l /data/layout.xml -o /data/vid-out.mp4 video`

See the gpx2video documentation for more details on command usage.

## License

[GPLv3](https://choosealicense.com/licenses/gpl-3.0/)
