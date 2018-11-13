 
 
 # UI NPM Dependencies

- [Summary](#summary)
- [Getting Started](#GettingStarted)
    - [Installing Jenkins](#InstallingJenkins)
    - [Linting My Jenkinsfile](#Linting)
- [Code Styles](#CodeStyles)
- [Deployment](#Deployment)
- [Built With](#BuiltWith)
- [Versioning](#Versioning)

## Summary

his is the dependencies required to build the main website page. We are storing them in a seperate repo to lock down the dependencies so we don't have to run NPM install on build. This will host the package.json file as well as the Dockerfile to build the base image.

## Getting Started

Just run the docker file with the following build command `docker build .'. If you want to see it run in kubernetes to test the build, you will need to setup an instance of jenkins on your local machine.

### Installing Jenkins

We use helm to provision our jenkins locally. You can do so with the following command.

```
helm install --name=jenkins stable/jenkins -f .local/jenkins-config.yaml
```

This will startup a cluster on your local box, you will still need to get the cluster ip and port to use your local jenkins install.

#### Linting my Jenkinsfile

[Linting Jekinsfile](https://jenkins.io/doc/book/pipeline/development/#linter)

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

## Pull Request Process

The pull request process is simple, the repo is maintained by the UI/UX team and it is at thier discretion on what will be added into the branch. 

1. Branch from the master repo `git pull origin master`
2. Create your short lived branch for example 123-feature-name `git checkout -b 123-feature-name`
3. Do your work and commit to your remote branch, ensure that you create tag the commit
    - Good: `git commit -am "Update to branch #123"`
    - Include details that talk about in detail what you did
        - Better
        ```
            git commit -am "Update to #123
            * Changed the background of the css sheet to have a green class
            * Changed the color of the green color per request in ticket
        ```
4. Open a pull request
5. Your code will be automatically built and a new container will be created you should be able to get a copy of that container from ACS
6. Test your changes in your container
7. Send your container to be tested by a reviewer in the team. 

### Code Styles

We are leveraging community best practices and established industry norms for coding styles. 

- [NPM](https://docs.npmjs.com/misc/coding-style) 
- [Docker Best Practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#create-ephemeral-containers)

## Deployment

Deployment is handeled by the Jenkinsfile in the branch. 

## Built With

* [Node JS](http://gohugo.io) - The web framework used
* [Maketools](https://www.gnu.org/software/make/) - Used to create make scripts
* [Kaniko](https://github.com/GoogleContainerTools/kaniko) - Used to generate the container inside kubernetes

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