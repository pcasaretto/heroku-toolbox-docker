Need to have Ruby before installing the CLI?

Bitch please!

## How I'm using this

```shell
$ docker run -it pcasaretto/heroku-toolbox-docker bash
# inside the container
$ heroku login
# enter credentials and leave back to host
$ docker ps -a # find the id of the container we just ran
$ docker commit <ID> heroku-cli-local
```

Then, use a function like so:
```
heroku () { 
  docker run -ti --rm heroku-cli-local heroku $@
}
```

Now, enjoy your Ruby free enviroment!
