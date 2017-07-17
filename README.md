Need to have node before installing the CLI?

![Bitch please!](http://s2.quickmeme.com/img/34/34c5a5d89699a28f2486c23c5b381486b62553f3eba9ebaccf36df6306494e00.jpg)

## Usage

```
heroku () { 
  docker run -ti --rm -v ~/.netrc:/root/.netrc:z pcasaretto/heroku-toolbox-docker heroku $@
}
```

Now, enjoy your node free enviroment!
