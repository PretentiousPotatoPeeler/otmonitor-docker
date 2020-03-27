# Opentherm Monitor (otmonitor) Docker Build Container

Docker build container for latest version of [otmonitor](https://github.com/hvxl/otmonitor/) to talk with the [Opentherm Gateway](http://otgw.tclcode.com/)

## Motivation

The latest pre-build version of otmonitor on [otgw.tclcode.com](http://otgw.tclcode.com/) is not up to date with the source. This Docker image takes the latests source and packages it as a container.

## Usage

```bash
docker build -t otmonitor .
docker run --name otmonitor -d otmonitor
```

Config file example is in the repo.

## Built With

* [Opentherm Monitor](http://otgw.tclcode.com/otmonitor.html) - The FANTASTIC otmonitor application to talk with the Opentherm Gateway

## Contributing

Feel free to submit an issue or pull request. It'd even be really cool if you did :)

## License

This project is licensed under the DBAD License - see the [LICENSE.md](LICENSE.md) file for details
