 # UI NPM Dependencies

This is the dependencies required to build the main website page. We are storing them in a seperate repo to lock down the dependencies so we don't have to run NPM install on build. This will host the package.json file as well as the Dockerfile to build the base image.

## Getting Started

Just run `docker build .`

### Prerequisites

You need the following tools to make this work.

```
scoop install docker 
```
##### Mac OS X

```
brew install docker
```


### Installing

To test the build process run `docker build .` you may also want to tag the resulting container in which case you can use `docker build . -t someurl`

## Running the tests

Right now no tests exist.


### Code Styles

We are leveraging community best practices and established industry norms for coding styles. 

-  [NPM](https://docs.npmjs.com/misc/coding-style) 
- [Docker Best Practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#create-ephemeral-containers)

## Deployment

Deployment is handeled by the pipeline. 

## Built With

* [Node JS](http://gohugo.io) - The web framework used
* [Maketools](https://www.gnu.org/software/make/) - Used to create make scripts

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Watchmen** - *Repo Creator and Pipeline Helper*
* **Pedro Montoya** - *Maintainer*


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* **Billie Thompson** - *Template For Readme* - [PurpleBooth](https://github.com/PurpleBooth)
* Inspiration